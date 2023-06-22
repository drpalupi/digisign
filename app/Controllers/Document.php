<?php

namespace App\Controllers;

use App\Models\Document as DocumentModel;
use CodeIgniter\Format\Exceptions\FormatException;
use CodeIgniter\I18n\Time;
use DateTime;
use Endroid\QrCode\Builder\Builder;
use Endroid\QrCode\Encoding\Encoding;
use Endroid\QrCode\ErrorCorrectionLevel\ErrorCorrectionLevelHigh;
use Endroid\QrCode\RoundBlockSizeMode\RoundBlockSizeModeNone;
use Endroid\QrCode\Writer\PngWriter;
use Exception;
use FFI\ParserException;
use Myth\Auth\Authorization\GroupModel;
use Myth\Auth\Models\UserModel;
use setasign\Fpdi\FpdiException;
use setasign\Fpdi\PdfParser\StreamReader;
use setasign\Fpdi\PdfReader\PageBoundaries;
use setasign\Fpdi\Tcpdf\Fpdi;

class Document extends BaseController
{
    protected $documentModel;
    protected $userModel;
    protected $groupModel;


    public function __construct()
    {
        $this->documentModel = new DocumentModel();
        $this->userModel = new UserModel();
        $this->groupModel = new GroupModel();
    }

    public function index()
    {
        $sortBy = '';
        $sortFormat = '';

        if (session('sort_by')) {
            $sortBy = session('sort_by');
            $document = $this->documentModel->filter(user_id(), user_id(), $sortBy, $sortFormat);
        }

        if (session('sort_format')) {
            $sortFormat = session('sort_format');
            $document = $this->documentModel->filter(user_id(), user_id(), $sortBy, $sortFormat);
        }

        $currentPage = $this->request->getGet('page_documents') ?? 1;
        $document = $this->documentModel->where('from_id', user_id())->where('to_id', user_id());

        if ($this->request->getPost('keyword')) {
            $document = $this->documentModel->search(user_id(), user_id(), $this->request->getPost('keyword'));
        }

        if ($this->request->getPost('sort_by') && $this->request->getPost('sort_by') != "") {
            $sortBy = $this->request->getPost('sort_by');
            session()->set('sort_by', $sortBy);
            $document = $this->documentModel->filter(user_id(), user_id(), $sortBy, $sortFormat);
        }

        if ($this->request->getPost('sort_format')) {
            $sortFormat = $this->request->getPost('sort_format');
            session()->set('sort_format', $sortFormat);
            $document = $this->documentModel->filter(user_id(), user_id(), $sortBy, $sortFormat);
        }

        $data = [
            'title' => getenv('app.name') . ' | Dokumen Saya',
            // 'documents' => $this->documentModel->where('from_id', user_id())->where('to_id', user_id())->findAll()
            'documents' => $document->paginate(10, 'documents'),
            'pager' => $document->pager,
            'currentPage' => $currentPage
        ];

        return view('document/index', $data);
    }

    public function sentDocs()
    {
        $documents = new DocumentModel();
        $frommes = $documents->where([
            'from_id' => user_id(),
            'to_id !=' => user_id()
        ]);

        $tomes = $this->documentModel->where('from_id !=', user_id())->where('to_id', user_id());

        $data = [
            'title' => getenv('app.name') . ' | Disposisi Saya',
            'frommes' => $frommes->paginate(10, 'frommes'),
            'fromPager' => $frommes->pager,
            'tomes' => $this->documentModel->where('from_id !=', user_id())->where('to_id', user_id())->paginate(10, 'tomes'),
            'toPager' => $tomes->pager
        ];

        return view('document/sent_docs', $data);
    }

    public function reader()
    {
        $data = [
            'title' => getenv('app.name') . ' | Dokumen Reader'
        ];

        return view('document/reader', $data);
    }

    public function read()
    {
        $qrcodeinfo = $this->documentModel->where('qrcode_hash', $this->request->getPost('hash'))->first();

        $signer = $this->userModel->where('id', $qrcodeinfo['to_id'])->first();
        $signerGroup = $this->groupModel->getGroupsForUser($qrcodeinfo['to_id']);

        if (!openssl_pkcs7_verify('uploads/doocuments/' . $qrcodeinfo['document_filename'],  PKCS7_BINARY | PKCS7_DETACHED, $qrcodeinfo['qrcode_hash'] . '.cer')) {
            return $this->response->setStatusCode(500)->setJSON(
                [
                    'message' => 'Signature not verify'
                ]
            );
        }

        return $this->response->setJSON([
            'id' => $qrcodeinfo['id'],
            'to_id' => $qrcodeinfo['to_id'],
            'from_id' => $qrcodeinfo['from_id'],
            'name' => $signer->name,
            'id_number' => $signer->id_number,
            'phone' => $signer->phone,
            'image' => $signer->image,
            'role' => $signerGroup[0]['name'],
            'email' => $signer->email,
            'document_title' => $qrcodeinfo['document_title'],
            'document_filename' => $qrcodeinfo['document_filename'],
            'qrcode_hash' => $qrcodeinfo['qrcode_hash'],
            'encrypted_data' => $qrcodeinfo['rsa_encrypt'],
            'signature' => $qrcodeinfo['signature'],
            'created_at' => $qrcodeinfo['created_at'],
            'updated_at' => $qrcodeinfo['updated_at']
        ]);
    }

    public function editor()
    {
        $data = $this->request->getGet();
        return view('document/editor', $data);
    }

    public function edited()
    {
        $jsPdf = $this->request->getFile('pdf');
        $data = $this->request->getPost();

        // $jsPdf->move('uploads/documents/signed', $data['filename']);

        // Subject
        $dn = array(
            "countryName" => "ID",
            "stateOrProvinceName" => "DKI Jakarta",
            "localityName" => "Indonesia",
            "organizationName" => "UAI",
            "organizationalUnitName" => "Universitas Al-Azhar Indonesia",
            "commonName" => user()->name,
            "emailAddress" => user()->email
        );

        $info = array('Name' => user()->name, 'Location' => 'Indonesia', 'Reason' => 'test firma', 'ContactInfo' => user()->email);


        $private = openssl_get_privatekey(user()->private_key);

        // Generate a certificate signing request
        $csr = openssl_csr_new($dn, $private);
        $x509 = openssl_csr_sign($csr, null, $private, 365 * 40);

        openssl_csr_export_to_file($csr, 'ext-cert.pem');
        openssl_x509_export_to_file($x509, 'uai-cert.cer');
        openssl_pkey_export_to_file($private, 'uai-cert.pem');

        $fpdi = new Fpdi($data['orientation'], 'px', array($data['pageWidth'], $data['pageHeight']));
        $pageNo = $fpdi->setSourceFile('uploads/documents/original/' . $data['filename']);
        $fpdi->setPrintHeader(false);
        $fpdi->setPrintFooter(false);
        for ($i = 1; $i <= $pageNo; $i++) {
            try {
                $tplIdx = $fpdi->importPage($i);
                $fpdi->addPage();
                $fpdi->useTemplate($tplIdx, ['adjustPageSize' => true]);
                if ($data['selectedPage'] == $i) {
                    $fpdi->Image('uploads/signature/' . user()->signature, $data['xPDF'], $data['yPDF'], $data['imageWidth'], $data['imageHeight']);
                    $fpdi->SetFont('Helvetica', '', 10);
                    $dateTime = new Time(null, 'Asia/Jakarta', 'id_ID');
                    $date = $dateTime->toDateString();
                    $time = $dateTime->toTimeString();
                    $fpdi->SetTextColor(0, 0, 0);
                    $fpdi->setXY($data['xPDF'], $data['yPDF'] + $data['imageHeight']);
                    $fpdi->Write(0, $date);
                    $fpdi->setXY($data['xPDF'], $data['yPDF'] + $data['imageHeight'] + 12);
                    $fpdi->Write(0, $time);
                }
            } catch (\InvalidArgumentException $exception) {
                break;
            }
        }
        $fpdi->Output(ROOTPATH . '/public/uploads/documents/signed/' . $data['filename'], 'F');

        $fpdi = new Fpdi($data['orientation'], 'px', array($data['pageWidth'], $data['pageHeight']));
        $pageNo = $fpdi->setSourceFile('uploads/documents/signed/' . $data['filename']);
        $fpdi->setPrintHeader(false);
        $fpdi->setPrintFooter(false);
        for ($i = 1; $i <= $pageNo; $i++) {
            try {
                $tplIdx = $fpdi->importPage($i);
                $fpdi->addPage();
                $fpdi->useTemplate($tplIdx, ['adjustPageSize' => true]);
            } catch (\InvalidArgumentException $exception) {
                break;
            }
        }

        $content = $fpdi->getPDFData();
        $indexXref = strpos($content, 'xref');
        $indexTrailer = strpos($content, 'trailer');
        $xref = substr($content, $indexXref, $indexTrailer);
        $digest = hash('sha512', $xref);
        $qrcodefile = md5($digest);
        openssl_private_encrypt($digest, $encrypted_data, $private, OPENSSL_PKCS1_PADDING);

        try {
            // Create barcode
            $result = Builder::create()
                ->writer(new PngWriter())
                ->data($qrcodefile)
                ->margin(5)
                ->encoding(new Encoding('UTF-8'))
                ->errorCorrectionLevel(new ErrorCorrectionLevelHigh())
                ->size(75)
                ->roundBlockSizeMode(new RoundBlockSizeModeNone())
                ->build();
            $result->saveToFile('uploads/qrcode/' . $qrcodefile . '.png');
        } catch (\Exception $e) {
            return $this->response->setJSON($e->getMessage());
        }

        try {
            $fpdi = new Fpdi($data['orientation'], 'mm', array($data['pageWidth'], $data['pageHeight']));
            $reader = StreamReader::createByString($content);
            $pageNo = $fpdi->setSourceFile($reader);
            $fpdi->setPrintHeader(false);
            $fpdi->setPrintFooter(false);

            for ($i = 1; $i <= $pageNo; $i++) {
                try {
                    $tplIdx = $fpdi->importPage($i);
                    $fpdi->addPage();
                    $fpdi->useTemplate($tplIdx, ['adjustPageSize' => true]);
                    if ($data['selectedPage'] == $i) {
                        $fpdi->Image('uploads/qrcode/' . $qrcodefile . '.png', ((int) $data['pageWidth'] * 0.2645833333) + 15, ((int) $data['pageHeight'] * 0.2645833333) + 23);
                    }
                } catch (\InvalidArgumentException $exception) {
                    break;
                }
            }

            $fpdi->setSignature(
                'file://' . realpath(ROOTPATH . '/public/uai-cert.cer'),
                'file://' . realpath(ROOTPATH . '/public/uai-cert.pem'),
                '',
                '',
                1,
                $info,
                'A'
            );

            $fpdi->Output(ROOTPATH . '/public/uploads/documents/qrcode/' . $data['filename'], 'F');

            // Convert pdf into string binary
            // print_r($data);
            $content = $fpdi->getPDFData();
            // print_r($data);

            // Get xref table
            // $xref_index = strpos($content, 'xref');
            // print_r($data);
            // $trailer_index = strpos($content, 'trailer');

            // print_r($data);
            // $xref = substr($content, $xref, $xref_index, $trailer_index - $xref_index);
            // print_r('Xref : ' . $xref);
            // Hash xref table
            // $xref_hash = hash('sha512', $xref);
            // print_r($data);
            // encrypt xref hash
            openssl_private_encrypt($content, $encrypted_data, user()->private_key);

            $file = new \CodeIgniter\Files\File(ROOTPATH . '/public/uploads/certificate/' . $qrcodefile . '.cer');
            fopen(ROOTPATH . '/public/uploads/certificate/' . $qrcodefile . '.cer', 'wb');
            file_put_contents(ROOTPATH . '/public/uploads/certificate/' . $qrcodefile . '.cer', file_get_contents('uai-cert.cer'));
        } catch (FpdiException $th) {

            return $this->response->setJSON($th->getMessage())->setStatusCode(500);
        }

        try {
            if (!$this->documentModel->update($data['documentID'], [
                'signed' => 1,
                'qrcode_hash' => $qrcodefile,
                'rsa_encrypt' => $digest,
                'signature' => base64_encode($encrypted_data)
            ])) {

                session()->setFlashdata('success', 'Berhasil upload file');
                return $this->response->setJSON([
                    'error' => 'Internal server error'
                ]);
            }
        } catch (FormatException $e) {
            print_r($e->getMessage());
        }


        session()->setFlashdata('success', 'Berhasil upload file');

        return $this->response->setJSON(["message" => "success"]);
    }

    public function delete()
    {
        $ids = $this->request->getGet('id');
        $ids = explode(',', $ids);

        $this->documentModel->delete($ids);

        return redirect()->to('/mydocuments')->with('success', 'Berhasil menghapus dokumen');
    }

    public function reject()
    {
        $id = $this->request->getGet('id');

        if (!$this->documentModel->update($id, [
            'signed' => '2'
        ])) {
            return redirect()->back()->with('error', 'Internal server error');
        }

        return redirect()->back()->with('success', 'Dokumen ditolak');
    }
}
