<?php

namespace App\Controllers;

use App\Models\Document;
use Myth\Auth\Models\UserModel;

class Signature extends BaseController
{
    protected $documentModel;
    protected $userModel;

    public function __construct()
    {
        $this->documentModel = new Document();
        $this->userModel = new UserModel();
    }

    public function selfSign()
    {
        $data = [
            'title' => getenv('app.name'),
            'validator' => $this->validator
        ];

        if (!user()->signature) {
            return redirect()->to('profile')->with('error', 'Silahkan upload tanda tangan terlebih dahulu');
        }

        return view('signature/self_sign', $data);
    }

    public function attemptSelfSign()
    {
        if ($this->request->getFile('document')->getError() == 4) {
            return redirect()->back()->with('error', 'File harus diupload');
        }

        $document = $this->request->getFile('document');
        $documentName = $document->getRandomName();

        if (!$this->documentModel->save(
            [
                'document_title' => $this->request->getPost('document_title'),
                'document_filename' => $documentName,
                'from_id' => user_id(),
                'to_id' => user_id()
            ]
        )) {
            return redirect()->back()->with('error', 'Gagal menyimpan data');
        }

        if (!$document->hasMoved()) {
            $document->move('uploads/documents/original', $documentName);
        }

        return redirect()->to('/editor?id=' . $this->documentModel->getInsertID() . '&name=' . $documentName);
    }

    public function inviteFriend()
    {
        $data = [
            'title' => getenv('app.name') . ' | Undang Pihak Lain',
            'validator' => $this->validator,
            'users' => $this->userModel->findAll()
        ];

        return view('signature/invite_friend', $data);
    }

    public function attemptInviteFriend()
    {

        if (!$this->validator->run($this->request->getPost(), 'attemptInviteFriend')) {
            return redirect()->back()->withInput();
        }

        $document = $this->request->getFile('document');
        $data = $this->request->getPost();
        $data['document_filename'] = $document->getRandomName();

        if (!$userTo = $this->userModel->find($data['to_id'])) {
            return redirect()->back()->with('error', 'User Tidak ditemukan');
        }

        if (!$this->documentModel->save(
            [
                'document_title' => $data['document_title'],
                'document_filename' => $data['document_filename'],
                'from_id' => user_id(),
                'to_id' => $data['to_id']
            ]
        )) {
            return redirect()->back()->with('error', 'Internal server error');
        }

        if (!$document->hasMoved()) {
            $document->move('uploads/documents/original', $data['document_filename']);
        }

        $base_url = base_url();
        $filename = $data['document_filename'];
        $documentId = $this->documentModel->getInsertID();

        $message = <<<EOT
        <p>Ada file yang dikirim untuk anda. Silahkan ditanda tangani.<p>
        <a href="{$base_url}/editor?id={$documentId}&name="{$filename}">
        EOT;

        $email = \Config\Services::email();
        $email->setTo($userTo->email);
        $email->setSubject('');
        $email->setMessage($message);

        if (!$email->send()) {
            return redirect()->back()->with('error', 'Gagal Mengirim email pemberitahuan');
        }

        return redirect()->to('sent-docs#fromme')->with('success', 'Berhasil mengirim file');
    }
}
