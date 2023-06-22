/*! document-register-element, 1.7.0
https://github.com/WebReflection/document-register-element
(C) Andrea Giammarchi - @WebReflection - Mit Style License */
if (!window["s-ce1"]) {
  window["s-ce1"] = true;
  (function (e, t) {
    "use strict";
    function Ht() {
      var e = wt.splice(0, wt.length);
      Et = 0;
      while (e.length) e.shift().call(null, e.shift());
    }
    function Bt(e, t) {
      for (var n = 0, r = e.length; n < r; n++) Jt(e[n], t);
    }
    function jt(e) {
      for (var t = 0, n = e.length, r; t < n; t++) (r = e[t]), Pt(r, A[It(r)]);
    }
    function Ft(e) {
      return function (t) {
        ut(t) && (Jt(t, e), O.length && Bt(t.querySelectorAll(O), e));
      };
    }
    function It(e) {
      var t = ht.call(e, "is"),
        n = e.nodeName.toUpperCase(),
        r = _.call(L, t ? N + t.toUpperCase() : T + n);
      return t && -1 < r && !qt(n, t) ? -1 : r;
    }
    function qt(e, t) {
      return -1 < O.indexOf(e + '[is="' + t + '"]');
    }
    function Rt(e) {
      var t = e.currentTarget,
        n = e.attrChange,
        r = e.attrName,
        i = e.target,
        s = e[y] || 2,
        o = e[w] || 3;
      kt &&
        (!i || i === t) &&
        t[h] &&
        r !== "style" &&
        (e.prevValue !== e.newValue ||
          (e.newValue === "" && (n === s || n === o))) &&
        t[h](r, n === s ? null : e.prevValue, n === o ? null : e.newValue);
    }
    function Ut(e) {
      var t = Ft(e);
      return function (e) {
        wt.push(t, e.target), Et && clearTimeout(Et), (Et = setTimeout(Ht, 1));
      };
    }
    function zt(e) {
      Ct && ((Ct = !1), e.currentTarget.removeEventListener(S, zt)),
        O.length &&
          Bt((e.target || n).querySelectorAll(O), e.detail === l ? l : a),
        st && Vt();
    }
    function Wt(e, t) {
      var n = this;
      vt.call(n, e, t), Lt.call(n, { target: n });
    }
    function Xt(e, t) {
      nt(e, t),
        Mt
          ? Mt.observe(e, yt)
          : (Nt && ((e.setAttribute = Wt), (e[o] = Ot(e)), e[u](x, Lt)),
            e[u](E, Rt)),
        e[m] && kt && ((e.created = !0), e[m](), (e.created = !1));
    }
    function Vt() {
      for (var e, t = 0, n = at.length; t < n; t++)
        (e = at[t]), M.contains(e) || (n--, at.splice(t--, 1), Jt(e, l));
    }
    function $t(e) {
      throw new Error("A " + e + " type is already registered");
    }
    function Jt(e, t) {
      var n,
        r = It(e),
        i;
      -1 < r &&
        (Dt(e, A[r]),
        (r = 0),
        t === a && !e[a]
          ? ((e[l] = !1),
            (e[a] = !0),
            (i = "connected"),
            (r = 1),
            st && _.call(at, e) < 0 && at.push(e))
          : t === l &&
            !e[l] &&
            ((e[a] = !1), (e[l] = !0), (i = "disconnected"), (r = 1)),
        r && (n = e[t + f] || e[i + f]) && n.call(e));
    }
    function Kt() {}
    function Qt(e, t, r) {
      var i = (r && r[c]) || "",
        o = t.prototype,
        u = tt(o),
        a = t.observedAttributes || j,
        f = { prototype: u };
      ot(u, m, {
        value: function () {
          if (Q) Q = !1;
          else if (!this[W]) {
            (this[W] = !0), new t(this), o[m] && o[m].call(this);
            var e = G[Z.get(t)];
            (!V || e.create.length > 1) && Zt(this);
          }
        },
      }),
        ot(u, h, {
          value: function (e) {
            -1 < _.call(a, e) && o[h].apply(this, arguments);
          },
        }),
        o[d] && ot(u, p, { value: o[d] }),
        o[v] && ot(u, g, { value: o[v] }),
        i && (f[c] = i),
        (e = e.toUpperCase()),
        (G[e] = { constructor: t, create: i ? [i, et(e)] : [e] }),
        Z.set(t, e),
        n[s](e.toLowerCase(), f),
        en(e),
        Y[e].r();
    }
    function Gt(e) {
      var t = G[e.toUpperCase()];
      return t && t.constructor;
    }
    function Yt(e) {
      return typeof e == "string" ? e : (e && e.is) || "";
    }
    function Zt(e) {
      var t = e[h],
        n = t ? e.attributes : j,
        r = n.length,
        i;
      while (r--)
        (i = n[r]),
          t.call(e, i.name || i.nodeName, null, i.value || i.nodeValue);
    }
    function en(e) {
      return (
        (e = e.toUpperCase()),
        e in Y ||
          ((Y[e] = {}),
          (Y[e].p = new K(function (t) {
            Y[e].r = t;
          }))),
        Y[e].p
      );
    }
    function tn() {
      X && delete e.customElements,
        B(e, "customElements", { configurable: !0, value: new Kt() }),
        B(e, "CustomElementRegistry", { configurable: !0, value: Kt });
      for (
        var t = function (t) {
            var r = e[t];
            if (r) {
              (e[t] = function (t) {
                var i, s;
                return (
                  t || (t = this),
                  t[W] ||
                    ((Q = !0),
                    (i = G[Z.get(t.constructor)]),
                    (s = V && i.create.length === 1),
                    (t = s
                      ? Reflect.construct(r, j, i.constructor)
                      : n.createElement.apply(n, i.create)),
                    (t[W] = !0),
                    (Q = !1),
                    s || Zt(t)),
                  t
                );
              }),
                (e[t].prototype = r.prototype);
              try {
                r.prototype.constructor = e[t];
              } catch (i) {
                (z = !0), B(r, W, { value: e[t] });
              }
            }
          },
          r = i.get(/^HTML[A-Z]*[a-z]/),
          o = r.length;
        o--;
        t(r[o])
      );
      (n.createElement = function (e, t) {
        var n = Yt(t);
        return n ? gt.call(this, e, et(n)) : gt.call(this, e);
      }),
        St || ((Tt = !0), n[s](""));
    }
    var n = e.document,
      r = e.Object,
      i = (function (e) {
        var t = /^[A-Z]+[a-z]/,
          n = function (e) {
            var t = [],
              n;
            for (n in s) e.test(n) && t.push(n);
            return t;
          },
          i = function (e, t) {
            (t = t.toLowerCase()),
              t in s ||
                ((s[e] = (s[e] || []).concat(t)),
                (s[t] = s[t.toUpperCase()] = e));
          },
          s = (r.create || r)(null),
          o = {},
          u,
          a,
          f,
          l;
        for (a in e)
          for (l in e[a]) {
            (f = e[a][l]), (s[l] = f);
            for (u = 0; u < f.length; u++)
              s[f[u].toLowerCase()] = s[f[u].toUpperCase()] = l;
          }
        return (
          (o.get = function (r) {
            return typeof r == "string" ? s[r] || (t.test(r) ? [] : "") : n(r);
          }),
          (o.set = function (n, r) {
            return t.test(n) ? i(n, r) : i(r, n), o;
          }),
          o
        );
      })({
        collections: {
          HTMLAllCollection: ["all"],
          HTMLCollection: ["forms"],
          HTMLFormControlsCollection: ["elements"],
          HTMLOptionsCollection: ["options"],
        },
        elements: {
          Element: ["element"],
          HTMLAnchorElement: ["a"],
          HTMLAppletElement: ["applet"],
          HTMLAreaElement: ["area"],
          HTMLAttachmentElement: ["attachment"],
          HTMLAudioElement: ["audio"],
          HTMLBRElement: ["br"],
          HTMLBaseElement: ["base"],
          HTMLBodyElement: ["body"],
          HTMLButtonElement: ["button"],
          HTMLCanvasElement: ["canvas"],
          HTMLContentElement: ["content"],
          HTMLDListElement: ["dl"],
          HTMLDataElement: ["data"],
          HTMLDataListElement: ["datalist"],
          HTMLDetailsElement: ["details"],
          HTMLDialogElement: ["dialog"],
          HTMLDirectoryElement: ["dir"],
          HTMLDivElement: ["div"],
          HTMLDocument: ["document"],
          HTMLElement: [
            "element",
            "abbr",
            "address",
            "article",
            "aside",
            "b",
            "bdi",
            "bdo",
            "cite",
            "code",
            "command",
            "dd",
            "dfn",
            "dt",
            "em",
            "figcaption",
            "figure",
            "footer",
            "header",
            "i",
            "kbd",
            "mark",
            "nav",
            "noscript",
            "rp",
            "rt",
            "ruby",
            "s",
            "samp",
            "section",
            "small",
            "strong",
            "sub",
            "summary",
            "sup",
            "u",
            "var",
            "wbr",
          ],
          HTMLEmbedElement: ["embed"],
          HTMLFieldSetElement: ["fieldset"],
          HTMLFontElement: ["font"],
          HTMLFormElement: ["form"],
          HTMLFrameElement: ["frame"],
          HTMLFrameSetElement: ["frameset"],
          HTMLHRElement: ["hr"],
          HTMLHeadElement: ["head"],
          HTMLHeadingElement: ["h1", "h2", "h3", "h4", "h5", "h6"],
          HTMLHtmlElement: ["html"],
          HTMLIFrameElement: ["iframe"],
          HTMLImageElement: ["img"],
          HTMLInputElement: ["input"],
          HTMLKeygenElement: ["keygen"],
          HTMLLIElement: ["li"],
          HTMLLabelElement: ["label"],
          HTMLLegendElement: ["legend"],
          HTMLLinkElement: ["link"],
          HTMLMapElement: ["map"],
          HTMLMarqueeElement: ["marquee"],
          HTMLMediaElement: ["media"],
          HTMLMenuElement: ["menu"],
          HTMLMenuItemElement: ["menuitem"],
          HTMLMetaElement: ["meta"],
          HTMLMeterElement: ["meter"],
          HTMLModElement: ["del", "ins"],
          HTMLOListElement: ["ol"],
          HTMLObjectElement: ["object"],
          HTMLOptGroupElement: ["optgroup"],
          HTMLOptionElement: ["option"],
          HTMLOutputElement: ["output"],
          HTMLParagraphElement: ["p"],
          HTMLParamElement: ["param"],
          HTMLPictureElement: ["picture"],
          HTMLPreElement: ["pre"],
          HTMLProgressElement: ["progress"],
          HTMLQuoteElement: ["blockquote", "q", "quote"],
          HTMLScriptElement: ["script"],
          HTMLSelectElement: ["select"],
          HTMLShadowElement: ["shadow"],
          HTMLSlotElement: ["slot"],
          HTMLSourceElement: ["source"],
          HTMLSpanElement: ["span"],
          HTMLStyleElement: ["style"],
          HTMLTableCaptionElement: ["caption"],
          HTMLTableCellElement: ["td", "th"],
          HTMLTableColElement: ["col", "colgroup"],
          HTMLTableElement: ["table"],
          HTMLTableRowElement: ["tr"],
          HTMLTableSectionElement: ["thead", "tbody", "tfoot"],
          HTMLTemplateElement: ["template"],
          HTMLTextAreaElement: ["textarea"],
          HTMLTimeElement: ["time"],
          HTMLTitleElement: ["title"],
          HTMLTrackElement: ["track"],
          HTMLUListElement: ["ul"],
          HTMLUnknownElement: ["unknown", "vhgroupv", "vkeygen"],
          HTMLVideoElement: ["video"],
        },
        nodes: {
          Attr: ["node"],
          Audio: ["audio"],
          CDATASection: ["node"],
          CharacterData: ["node"],
          Comment: ["#comment"],
          Document: ["#document"],
          DocumentFragment: ["#document-fragment"],
          DocumentType: ["node"],
          HTMLDocument: ["#document"],
          Image: ["img"],
          Option: ["option"],
          ProcessingInstruction: ["node"],
          ShadowRoot: ["#shadow-root"],
          Text: ["#text"],
          XMLDocument: ["xml"],
        },
      });
    typeof t != "object" && (t = { type: t || "auto" });
    var s = "registerElement",
      o = "__" + s + ((e.Math.random() * 1e5) >> 0),
      u = "addEventListener",
      a = "attached",
      f = "Callback",
      l = "detached",
      c = "extends",
      h = "attributeChanged" + f,
      p = a + f,
      d = "connected" + f,
      v = "disconnected" + f,
      m = "created" + f,
      g = l + f,
      y = "ADDITION",
      b = "MODIFICATION",
      w = "REMOVAL",
      E = "DOMAttrModified",
      S = "DOMContentLoaded",
      x = "DOMSubtreeModified",
      T = "<",
      N = "=",
      C = /^[A-Z][A-Z0-9]*(?:-[A-Z0-9]+)+$/,
      k = [
        "ANNOTATION-XML",
        "COLOR-PROFILE",
        "FONT-FACE",
        "FONT-FACE-SRC",
        "FONT-FACE-URI",
        "FONT-FACE-FORMAT",
        "FONT-FACE-NAME",
        "MISSING-GLYPH",
      ],
      L = [],
      A = [],
      O = "",
      M = n.documentElement,
      _ =
        L.indexOf ||
        function (e) {
          for (var t = this.length; t-- && this[t] !== e; );
          return t;
        },
      D = r.prototype,
      P = D.hasOwnProperty,
      H = D.isPrototypeOf,
      B = r.defineProperty,
      j = [],
      F = r.getOwnPropertyDescriptor,
      I = r.getOwnPropertyNames,
      q = r.getPrototypeOf,
      R = r.setPrototypeOf,
      U = !!r.__proto__,
      z = !1,
      W = "__dreCEv1",
      X = e.customElements,
      V = !/^force/.test(t.type) && !!(X && X.define && X.get && X.whenDefined),
      $ = r.create || r,
      J =
        e.Map ||
        function () {
          var t = [],
            n = [],
            r;
          return {
            get: function (e) {
              return n[_.call(t, e)];
            },
            set: function (e, i) {
              (r = _.call(t, e)), r < 0 ? (n[t.push(e) - 1] = i) : (n[r] = i);
            },
          };
        },
      K =
        e.Promise ||
        function (e) {
          function i(e) {
            n = !0;
            while (t.length) t.shift()(e);
          }
          var t = [],
            n = !1,
            r = {
              catch: function () {
                return r;
              },
              then: function (e) {
                return t.push(e), n && setTimeout(i, 1), r;
              },
            };
          return e(i), r;
        },
      Q = !1,
      G = $(null),
      Y = $(null),
      Z = new J(),
      et = function (e) {
        return e.toLowerCase();
      },
      tt =
        r.create ||
        function sn(e) {
          return e ? ((sn.prototype = e), new sn()) : this;
        },
      nt =
        R ||
        (U
          ? function (e, t) {
              return (e.__proto__ = t), e;
            }
          : I && F
          ? (function () {
              function e(e, t) {
                for (var n, r = I(t), i = 0, s = r.length; i < s; i++)
                  (n = r[i]), P.call(e, n) || B(e, n, F(t, n));
              }
              return function (t, n) {
                do e(t, n);
                while ((n = q(n)) && !H.call(n, t));
                return t;
              };
            })()
          : function (e, t) {
              for (var n in t) e[n] = t[n];
              return e;
            }),
      rt = e.MutationObserver || e.WebKitMutationObserver,
      it = (e.HTMLElement || e.Element || e.Node).prototype,
      st = !H.call(it, M),
      ot = st
        ? function (e, t, n) {
            return (e[t] = n.value), e;
          }
        : B,
      ut = st
        ? function (e) {
            return e.nodeType === 1;
          }
        : function (e) {
            return H.call(it, e);
          },
      at = st && [],
      ft = it.attachShadow,
      lt = it.cloneNode,
      ct = it.dispatchEvent,
      ht = it.getAttribute,
      pt = it.hasAttribute,
      dt = it.removeAttribute,
      vt = it.setAttribute,
      mt = n.createElement,
      gt = mt,
      yt = rt && { attributes: !0, characterData: !0, attributeOldValue: !0 },
      bt =
        rt ||
        function (e) {
          (Nt = !1), M.removeEventListener(E, bt);
        },
      wt,
      Et = 0,
      St = s in n && !/^force-all/.test(t.type),
      xt = !0,
      Tt = !1,
      Nt = !0,
      Ct = !0,
      kt = !0,
      Lt,
      At,
      Ot,
      Mt,
      _t,
      Dt,
      Pt;
    St ||
      (R || U
        ? ((Dt = function (e, t) {
            H.call(t, e) || Xt(e, t);
          }),
          (Pt = Xt))
        : ((Dt = function (e, t) {
            e[o] || ((e[o] = r(!0)), Xt(e, t));
          }),
          (Pt = Dt)),
      st
        ? ((Nt = !1),
          (function () {
            var e = F(it, u),
              t = e.value,
              n = function (e) {
                var t = new CustomEvent(E, { bubbles: !0 });
                (t.attrName = e),
                  (t.prevValue = ht.call(this, e)),
                  (t.newValue = null),
                  (t[w] = t.attrChange = 2),
                  dt.call(this, e),
                  ct.call(this, t);
              },
              r = function (e, t) {
                var n = pt.call(this, e),
                  r = n && ht.call(this, e),
                  i = new CustomEvent(E, { bubbles: !0 });
                vt.call(this, e, t),
                  (i.attrName = e),
                  (i.prevValue = n ? r : null),
                  (i.newValue = t),
                  n ? (i[b] = i.attrChange = 1) : (i[y] = i.attrChange = 0),
                  ct.call(this, i);
              },
              i = function (e) {
                var t = e.currentTarget,
                  n = t[o],
                  r = e.propertyName,
                  i;
                n.hasOwnProperty(r) &&
                  ((n = n[r]),
                  (i = new CustomEvent(E, { bubbles: !0 })),
                  (i.attrName = n.name),
                  (i.prevValue = n.value || null),
                  (i.newValue = n.value = t[r] || null),
                  i.prevValue == null
                    ? (i[y] = i.attrChange = 0)
                    : (i[b] = i.attrChange = 1),
                  ct.call(t, i));
              };
            (e.value = function (e, s, u) {
              e === E &&
                this[h] &&
                this.setAttribute !== r &&
                ((this[o] = {
                  className: { name: "class", value: this.className },
                }),
                (this.setAttribute = r),
                (this.removeAttribute = n),
                t.call(this, "propertychange", i)),
                t.call(this, e, s, u);
            }),
              B(it, u, e);
          })())
        : rt ||
          (M[u](E, bt),
          M.setAttribute(o, 1),
          M.removeAttribute(o),
          Nt &&
            ((Lt = function (e) {
              var t = this,
                n,
                r,
                i;
              if (t === e.target) {
                (n = t[o]), (t[o] = r = Ot(t));
                for (i in r) {
                  if (!(i in n)) return At(0, t, i, n[i], r[i], y);
                  if (r[i] !== n[i]) return At(1, t, i, n[i], r[i], b);
                }
                for (i in n) if (!(i in r)) return At(2, t, i, n[i], r[i], w);
              }
            }),
            (At = function (e, t, n, r, i, s) {
              var o = {
                attrChange: e,
                currentTarget: t,
                attrName: n,
                prevValue: r,
                newValue: i,
              };
              (o[s] = e), Rt(o);
            }),
            (Ot = function (e) {
              for (
                var t, n, r = {}, i = e.attributes, s = 0, o = i.length;
                s < o;
                s++
              )
                (t = i[s]),
                  (n = t.name),
                  n !== "setAttribute" && (r[n] = t.value);
              return r;
            }))),
      (n[s] = function (t, r) {
        (p = t.toUpperCase()),
          xt &&
            ((xt = !1),
            rt
              ? ((Mt = (function (e, t) {
                  function n(e, t) {
                    for (var n = 0, r = e.length; n < r; t(e[n++]));
                  }
                  return new rt(function (r) {
                    for (var i, s, o, u = 0, a = r.length; u < a; u++)
                      (i = r[u]),
                        i.type === "childList"
                          ? (n(i.addedNodes, e), n(i.removedNodes, t))
                          : ((s = i.target),
                            kt &&
                              s[h] &&
                              i.attributeName !== "style" &&
                              ((o = ht.call(s, i.attributeName)),
                              o !== i.oldValue &&
                                s[h](i.attributeName, i.oldValue, o)));
                  });
                })(Ft(a), Ft(l))),
                (_t = function (e) {
                  return Mt.observe(e, { childList: !0, subtree: !0 }), e;
                }),
                _t(n),
                ft &&
                  (it.attachShadow = function () {
                    return _t(ft.apply(this, arguments));
                  }))
              : ((wt = []),
                n[u]("DOMNodeInserted", Ut(a)),
                n[u]("DOMNodeRemoved", Ut(l))),
            n[u](S, zt),
            n[u]("readystatechange", zt),
            (it.cloneNode = function (e) {
              var t = lt.call(this, !!e),
                n = It(t);
              return (
                -1 < n && Pt(t, A[n]),
                e && O.length && jt(t.querySelectorAll(O)),
                t
              );
            }));
        if (Tt) return (Tt = !1);
        -2 < _.call(L, N + p) + _.call(L, T + p) && $t(t);
        if (!C.test(p) || -1 < _.call(k, p))
          throw new Error("The type " + t + " is invalid");
        var i = function () {
            return o ? n.createElement(f, p) : n.createElement(f);
          },
          s = r || D,
          o = P.call(s, c),
          f = o ? r[c].toUpperCase() : p,
          p,
          d;
        return (
          o && -1 < _.call(L, T + f) && $t(f),
          (d = L.push((o ? N : T) + p) - 1),
          (O = O.concat(
            O.length ? "," : "",
            o ? f + '[is="' + t.toLowerCase() + '"]' : f
          )),
          (i.prototype = A[d] = P.call(s, "prototype") ? s.prototype : tt(it)),
          O.length && Bt(n.querySelectorAll(O), a),
          i
        );
      }),
      (n.createElement = gt =
        function (e, t) {
          var r = Yt(t),
            i = r ? mt.call(n, e, et(r)) : mt.call(n, e),
            s = "" + e,
            o = _.call(L, (r ? N : T) + (r || s).toUpperCase()),
            u = -1 < o;
          return (
            r &&
              (i.setAttribute("is", (r = r.toLowerCase())),
              u && (u = qt(s.toUpperCase(), r))),
            (kt = !n.createElement.innerHTMLHelper),
            u && Pt(i, A[o]),
            i
          );
        })),
      (Kt.prototype = {
        constructor: Kt,
        define: V
          ? function (e, t, n) {
              if (n) Qt(e, t, n);
              else {
                var r = e.toUpperCase();
                (G[r] = { constructor: t, create: [r] }),
                  Z.set(t, r),
                  X.define(e, t);
              }
            }
          : Qt,
        get: V
          ? function (e) {
              return X.get(e) || Gt(e);
            }
          : Gt,
        whenDefined: V
          ? function (e) {
              return K.race([X.whenDefined(e), en(e)]);
            }
          : en,
      });
    if (!X || /^force/.test(t.type)) tn();
    else if (!t.noBuiltIn)
      try {
        (function (t, r, i) {
          (r[c] = "a"),
            (t.prototype = tt(HTMLAnchorElement.prototype)),
            (t.prototype.constructor = t),
            e.customElements.define(i, t, r);
          if (
            ht.call(n.createElement("a", { is: i }), "is") !== i ||
            (V && ht.call(new t(), "is") !== i)
          )
            throw r;
        })(
          function on() {
            return Reflect.construct(HTMLAnchorElement, [], on);
          },
          {},
          "document-register-element-a"
        );
      } catch (nn) {
        tn();
      }
    if (!t.noBuiltIn)
      try {
        mt.call(n, "a", "a");
      } catch (rn) {
        et = function (e) {
          return { is: e.toLowerCase() };
        };
      }
  })(window);
}

/*!
    Element.closest and Element.matches
    https://github.com/jonathantneal/closest
    Creative Commons Zero v1.0 Universal
    */
(function (a) {
  "function" !== typeof a.matches &&
    (a.matches =
      a.msMatchesSelector ||
      a.mozMatchesSelector ||
      a.webkitMatchesSelector ||
      function (a) {
        a = (this.document || this.ownerDocument).querySelectorAll(a);
        for (var b = 0; a[b] && a[b] !== this; ) ++b;
        return !!a[b];
      });
  "function" !== typeof a.closest &&
    (a.closest = function (a) {
      for (var b = this; b && 1 === b.nodeType; ) {
        if (b.matches(a)) return b;
        b = b.parentNode;
      }
      return null;
    });
})(window.Element.prototype);
/*!
    Element.remove()
    https://developer.mozilla.org/en-US/docs/Web/API/ChildNode/remove
    */
(function (b) {
  b.forEach(function (a) {
    a.hasOwnProperty("remove") ||
      Object.defineProperty(a, "remove", {
        configurable: !0,
        enumerable: !0,
        writable: !0,
        value: function () {
          null !== this.parentNode && this.parentNode.removeChild(this);
        },
      });
  });
})([Element.prototype, CharacterData.prototype, DocumentType.prototype]);
/*!
    Array.prototype.find
    */
Array.prototype.find ||
  Object.defineProperty(Array.prototype, "find", {
    writable: !0,
    configurable: !0,
    value: function (c, e) {
      if (null == this) throw new TypeError('"this" is null or not defined');
      var b = Object(this),
        f = b.length >>> 0;
      if ("function" !== typeof c)
        throw new TypeError("predicate must be a function");
      for (var a = 0; a < f; ) {
        var d = b[a];
        if (c.call(e, d, a, b)) return d;
        a++;
      }
    },
  });
/*!
    Array.from
    */
Array.from ||
  (Array.from = (function () {
    var l = Object.prototype.toString,
      h = function (c) {
        return "function" === typeof c || "[object Function]" === l.call(c);
      },
      m = Math.pow(2, 53) - 1;
    return function (c) {
      var k = Object(c);
      if (null == c)
        throw new TypeError(
          "Array.from requires an array-like object - not null or undefined"
        );
      var d = 1 < arguments.length ? arguments[1] : void 0,
        f;
      if ("undefined" !== typeof d) {
        if (!h(d))
          throw new TypeError(
            "Array.from: when provided, the second argument must be a function"
          );
        2 < arguments.length && (f = arguments[2]);
      }
      var a = Number(k.length);
      a = isNaN(a)
        ? 0
        : 0 !== a && isFinite(a)
        ? (0 < a ? 1 : -1) * Math.floor(Math.abs(a))
        : a;
      a = Math.min(Math.max(a, 0), m);
      for (var g = h(this) ? Object(new this(a)) : Array(a), b = 0, e; b < a; )
        (e = k[b]),
          (g[b] = d
            ? "undefined" === typeof f
              ? d(e, b)
              : d.call(f, e, b)
            : e),
          (b += 1);
      g.length = a;
      return g;
    };
  })());
/*!
    Array.prototype.includes
    */
Array.prototype.includes ||
  Object.defineProperty(Array.prototype, "includes", {
    writable: !0,
    configurable: !0,
    value: function (r, e) {
      if (null == this) throw new TypeError('"this" is null or not defined');
      var t = Object(this),
        n = t.length >>> 0;
      if (0 === n) return !1;
      var i,
        o,
        a = 0 | e,
        u = Math.max(0 <= a ? a : n - Math.abs(a), 0);
      for (; u < n; ) {
        if (
          (i = t[u]) === (o = r) ||
          ("number" == typeof i && "number" == typeof o && isNaN(i) && isNaN(o))
        )
          return !0;
        u++;
      }
      return !1;
    },
  });
/*!
    Object.assign
    */
"function" != typeof Object.assign &&
  Object.defineProperty(Object, "assign", {
    value: function (d, f) {
      if (null == d)
        throw new TypeError("Cannot convert undefined or null to object");
      for (var e = Object(d), b = 1; b < arguments.length; b++) {
        var a = arguments[b];
        if (null != a)
          for (var c in a)
            Object.prototype.hasOwnProperty.call(a, c) && (e[c] = a[c]);
      }
      return e;
    },
    writable: !0,
    configurable: !0,
  });
/*!
    Object.entries
    */
Object.entries ||
  (Object.entries = function (c) {
    for (var b = Object.keys(c), a = b.length, d = Array(a); a--; )
      d[a] = [b[a], c[b[a]]];
    return d;
  });
/*!
    String.prototype.endsWith
    */
String.prototype.endsWith ||
  Object.defineProperty(String.prototype, "endsWith", {
    writable: !0,
    configurable: !0,
    value: function (b, a) {
      if (void 0 === a || a > this.length) a = this.length;
      return this.substring(a - b.length, a) === b;
    },
  });
/*!
    String.prototype.includes
    */
String.prototype.includes ||
  (String.prototype.includes = function (b, a) {
    "number" !== typeof a && (a = 0);
    return a + b.length > this.length ? !1 : -1 !== this.indexOf(b, a);
  });
/*!
    String.prototype.startsWith
    */
String.prototype.startsWith ||
  Object.defineProperty(String.prototype, "startsWith", {
    writable: !0,
    configurable: !0,
    value: function (b, a) {
      return this.substr(!a || 0 > a ? 0 : +a, b.length) === b;
    },
  });
/*!
    es6-promise - a tiny implementation of Promises/A+.
    Copyright (c) 2014 Yehuda Katz, Tom Dale, Stefan Penner and contributors (Conversion to ES6 API by Jake Archibald)
    Licensed under MIT license
    See https://raw.githubusercontent.com/stefanpenner/es6-promise/master/LICENSE
    v4.2.4+314e4831
    */
window.ES6Promise = (function () {
  function t() {
    var t = setTimeout;
    return function () {
      return t(r, 1);
    };
  }
  function r() {
    for (var t = 0; t < y; t += 2)
      (0, C[t])(C[t + 1]), (C[t] = void 0), (C[t + 1] = void 0);
    y = 0;
  }
  function e(t, r) {
    var e = this,
      n = new this.constructor(o);
    void 0 === n[O] && _(n);
    var i = e._state;
    if (i) {
      var s = arguments[i - 1];
      g(function () {
        return v(i, n, s, e._result);
      });
    } else l(e, n, t, r);
    return n;
  }
  function n(t) {
    if (t && "object" == typeof t && t.constructor === this) return t;
    var r = new this(o);
    return u(r, t), r;
  }
  function o() {}
  function i(t) {
    try {
      return t.then;
    } catch (t) {
      return (q.error = t), q;
    }
  }
  function s(t, r, o) {
    r.constructor === t.constructor && o === e && r.constructor.resolve === n
      ? (function (t, r) {
          r._state === x
            ? a(t, r._result)
            : r._state === F
            ? f(t, r._result)
            : l(
                r,
                void 0,
                function (r) {
                  return u(t, r);
                },
                function (r) {
                  return f(t, r);
                }
              );
        })(t, r)
      : o === q
      ? (f(t, q.error), (q.error = null))
      : void 0 === o
      ? a(t, r)
      : "function" == typeof o
      ? (function (t, r, e) {
          g(function (t) {
            var n = !1,
              o = (function (t, r, e, n) {
                try {
                  t.call(r, e, n);
                } catch (t) {
                  return t;
                }
              })(
                e,
                r,
                function (e) {
                  n || ((n = !0), r !== e ? u(t, e) : a(t, e));
                },
                function (r) {
                  n || ((n = !0), f(t, r));
                },
                t._label
              );
            !n && o && ((n = !0), f(t, o));
          }, t);
        })(t, r, o)
      : a(t, r);
  }
  function u(t, r) {
    if (t === r) f(t, new TypeError("cannot resolve promise w/ itself"));
    else {
      var e = typeof r;
      null === r || ("object" !== e && "function" !== e)
        ? a(t, r)
        : s(t, r, i(r));
    }
  }
  function c(t) {
    t._onerror && t._onerror(t._result), h(t);
  }
  function a(t, r) {
    t._state === P &&
      ((t._result = r), (t._state = x), 0 !== t._subscribers.length && g(h, t));
  }
  function f(t, r) {
    t._state === P && ((t._state = F), (t._result = r), g(c, t));
  }
  function l(t, r, e, n) {
    var o = t._subscribers,
      i = o.length;
    (t._onerror = null),
      (o[i] = r),
      (o[i + x] = e),
      (o[i + F] = n),
      0 === i && t._state && g(h, t);
  }
  function h(t) {
    var r = t._subscribers,
      e = t._state;
    if (0 !== r.length) {
      for (var n, o, i = t._result, s = 0; s < r.length; s += 3)
        (n = r[s]), (o = r[s + e]), n ? v(e, n, o, i) : o(i);
      t._subscribers.length = 0;
    }
  }
  function v(t, r, e, n) {
    var o = "function" == typeof e,
      i = void 0,
      s = void 0,
      c = void 0,
      l = void 0;
    if (o) {
      try {
        i = e(n);
      } catch (t) {
        (q.error = t), (i = q);
      }
      if (
        (i === q ? ((l = !0), (s = i.error), (i.error = null)) : (c = !0),
        r === i)
      )
        return void f(r, new TypeError("Cannot return same promise"));
    } else (i = n), (c = !0);
    r._state === P &&
      (o && c ? u(r, i) : l ? f(r, s) : t === x ? a(r, i) : t === F && f(r, i));
  }
  function _(t) {
    (t[O] = U++),
      (t._state = void 0),
      (t._result = void 0),
      (t._subscribers = []);
  }
  var p,
    d = Array.isArray
      ? Array.isArray
      : function (t) {
          return "[object Array]" === Object.prototype.toString.call(t);
        },
    y = 0,
    w = void 0,
    m = void 0,
    g = function (t, e) {
      (C[y] = t), (C[y + 1] = e), 2 === (y += 2) && (m ? m(r) : T());
    },
    b = (p = "undefined" != typeof window ? window : void 0) || {},
    A = b.MutationObserver || b.WebKitMutationObserver;
  b = "undefined" == typeof self;
  var E,
    S,
    M,
    j =
      "undefined" != typeof Uint8ClampedArray &&
      "undefined" != typeof importScripts &&
      "undefined" != typeof MessageChannel,
    C = Array(1e3),
    T = void 0;
  T = A
    ? ((E = 0),
      (S = new A(r)),
      (M = document.createTextNode("")),
      S.observe(M, { characterData: !0 }),
      function () {
        M.data = E = ++E % 2;
      })
    : j
    ? (function () {
        var t = new MessageChannel();
        return (
          (t.port1.onmessage = r),
          function () {
            return t.port2.postMessage(0);
          }
        );
      })()
    : void 0 === p && "function" == typeof require
    ? (function () {
        try {
          var e = Function("return this")().require("vertx");
          return void 0 !== (w = e.runOnLoop || e.runOnContext)
            ? function () {
                w(r);
              }
            : t();
        } catch (r) {
          return t();
        }
      })()
    : t();
  var O = Math.random().toString(36).substring(2),
    P = void 0,
    x = 1,
    F = 2,
    q = { error: null },
    U = 0,
    D = (function () {
      function t(t, r) {
        (this._instanceConstructor = t),
          (this.promise = new t(o)),
          this.promise[O] || _(this.promise),
          d(r)
            ? ((this._remaining = this.length = r.length),
              (this._result = Array(this.length)),
              0 === this.length
                ? a(this.promise, this._result)
                : ((this.length = this.length || 0),
                  this._enumerate(r),
                  0 === this._remaining && a(this.promise, this._result)))
            : f(this.promise, Error("Array Methods must be provided an Array"));
      }
      return (
        (t.prototype._enumerate = function (t) {
          for (var r = 0; this._state === P && r < t.length; r++)
            this._eachEntry(t[r], r);
        }),
        (t.prototype._eachEntry = function (t, r) {
          var u = this._instanceConstructor,
            c = u.resolve;
          c === n
            ? (c = i(t)) === e && t._state !== P
              ? this._settledAt(t._state, r, t._result)
              : "function" != typeof c
              ? (this._remaining--, (this._result[r] = t))
              : u === K
              ? (s((u = new u(o)), t, c), this._willSettleAt(u, r))
              : this._willSettleAt(
                  new u(function (r) {
                    return r(t);
                  }),
                  r
                )
            : this._willSettleAt(c(t), r);
        }),
        (t.prototype._settledAt = function (t, r, e) {
          var n = this.promise;
          n._state === P &&
            (this._remaining--, t === F ? f(n, e) : (this._result[r] = e)),
            0 === this._remaining && a(n, this._result);
        }),
        (t.prototype._willSettleAt = function (t, r) {
          var e = this;
          l(
            t,
            void 0,
            function (t) {
              return e._settledAt(x, r, t);
            },
            function (t) {
              return e._settledAt(F, r, t);
            }
          );
        }),
        t
      );
    })(),
    K = (function () {
      function t(r) {
        if (
          ((this[O] = U++),
          (this._result = this._state = void 0),
          (this._subscribers = []),
          o !== r)
        ) {
          if ("function" != typeof r)
            throw new TypeError("Must pass a resolver fn as 1st arg");
          if (!(this instanceof t))
            throw new TypeError(
              "Failed to construct 'Promise': Use the 'new' operator."
            );
          !(function (t, r) {
            try {
              r(
                function (r) {
                  u(t, r);
                },
                function (r) {
                  f(t, r);
                }
              );
            } catch (r) {
              f(t, r);
            }
          })(this, r);
        }
      }
      return (
        (t.prototype.catch = function (t) {
          return this.then(null, t);
        }),
        (t.prototype.finally = function (t) {
          var r = this.constructor;
          return this.then(
            function (e) {
              return r.resolve(t()).then(function () {
                return e;
              });
            },
            function (e) {
              return r.resolve(t()).then(function () {
                throw e;
              });
            }
          );
        }),
        t
      );
    })();
  return (
    (K.prototype.then = e),
    (K.all = function (t) {
      return new D(this, t).promise;
    }),
    (K.race = function (t) {
      var r = this;
      return d(t)
        ? new r(function (e, n) {
            for (var o = t.length, i = 0; i < o; i++)
              r.resolve(t[i]).then(e, n);
          })
        : new r(function (t, r) {
            return r(new TypeError("Must pass array to race"));
          });
    }),
    (K.resolve = n),
    (K.reject = function (t) {
      var r = new this(o);
      return f(r, t), r;
    }),
    (K._setScheduler = function (t) {
      m = t;
    }),
    (K._setAsap = function (t) {
      g = t;
    }),
    (K._asap = g),
    (K.polyfill = function () {
      var t = void 0;
      if ("undefined" != typeof global) t = global;
      else if ("undefined" != typeof self) t = self;
      else
        try {
          t = Function("return this")();
        } catch (t) {
          throw Error("polyfill failed");
        }
      var r = t.Promise;
      if (r) {
        var e = null;
        try {
          e = Object.prototype.toString.call(r.resolve());
        } catch (t) {}
        if ("[object Promise]" === e && !r.cast) return;
      }
      t.Promise = K;
    }),
    (K.Promise = K),
    K.polyfill(),
    K
  );
})();
/*!
    whatwg-fetch, 2.0.3
    https://github.com/github/fetch
    Copyright (c) 2014-2016 GitHub, Inc. - MIT License
    */
(function (e) {
  function l(a) {
    "string" !== typeof a && (a = String(a));
    if (/[^a-z0-9\-#$%&'*+.\^_`|~]/i.test(a))
      throw new TypeError("Invalid character in header field name");
    return a.toLowerCase();
  }
  function q(a) {
    "string" !== typeof a && (a = String(a));
    return a;
  }
  function n(a) {
    var b = {
      next: function () {
        var b = a.shift();
        return { done: void 0 === b, value: b };
      },
    };
    g.iterable &&
      (b[Symbol.iterator] = function () {
        return b;
      });
    return b;
  }
  function d(a) {
    this.map = {};
    a instanceof d
      ? a.forEach(function (a, c) {
          this.append(c, a);
        }, this)
      : Array.isArray(a)
      ? a.forEach(function (a) {
          this.append(a[0], a[1]);
        }, this)
      : a &&
        Object.getOwnPropertyNames(a).forEach(function (b) {
          this.append(b, a[b]);
        }, this);
  }
  function p(a) {
    if (a.bodyUsed) return Promise.reject(new TypeError("Already read"));
    a.bodyUsed = !0;
  }
  function r(a) {
    return new Promise(function (b, c) {
      a.onload = function () {
        b(a.result);
      };
      a.onerror = function () {
        c(a.error);
      };
    });
  }
  function w(a) {
    var b = new FileReader(),
      c = r(b);
    b.readAsArrayBuffer(a);
    return c;
  }
  function x(a) {
    a = new Uint8Array(a);
    for (var b = Array(a.length), c = 0; c < a.length; c++)
      b[c] = String.fromCharCode(a[c]);
    return b.join("");
  }
  function t(a) {
    if (a.slice) return a.slice(0);
    var b = new Uint8Array(a.byteLength);
    b.set(new Uint8Array(a));
    return b.buffer;
  }
  function u() {
    this.bodyUsed = !1;
    this._initBody = function (a) {
      if ((this._bodyInit = a))
        if ("string" === typeof a) this._bodyText = a;
        else if (g.blob && Blob.prototype.isPrototypeOf(a)) this._bodyBlob = a;
        else if (g.formData && FormData.prototype.isPrototypeOf(a))
          this._bodyFormData = a;
        else if (g.searchParams && URLSearchParams.prototype.isPrototypeOf(a))
          this._bodyText = a.toString();
        else if (g.arrayBuffer && g.blob && y(a))
          (this._bodyArrayBuffer = t(a.buffer)),
            (this._bodyInit = new Blob([this._bodyArrayBuffer]));
        else if (
          g.arrayBuffer &&
          (ArrayBuffer.prototype.isPrototypeOf(a) || z(a))
        )
          this._bodyArrayBuffer = t(a);
        else throw Error("unsupported BodyInit type");
      else this._bodyText = "";
      this.headers.get("content-type") ||
        ("string" === typeof a
          ? this.headers.set("content-type", "text/plain;charset=UTF-8")
          : this._bodyBlob && this._bodyBlob.type
          ? this.headers.set("content-type", this._bodyBlob.type)
          : g.searchParams &&
            URLSearchParams.prototype.isPrototypeOf(a) &&
            this.headers.set(
              "content-type",
              "application/x-www-form-urlencoded;charset=UTF-8"
            ));
    };
    g.blob &&
      ((this.blob = function () {
        var a = p(this);
        if (a) return a;
        if (this._bodyBlob) return Promise.resolve(this._bodyBlob);
        if (this._bodyArrayBuffer)
          return Promise.resolve(new Blob([this._bodyArrayBuffer]));
        if (this._bodyFormData)
          throw Error("could not read FormData body as blob");
        return Promise.resolve(new Blob([this._bodyText]));
      }),
      (this.arrayBuffer = function () {
        return this._bodyArrayBuffer
          ? p(this) || Promise.resolve(this._bodyArrayBuffer)
          : this.blob().then(w);
      }));
    this.text = function () {
      var a = p(this);
      if (a) return a;
      if (this._bodyBlob) {
        a = this._bodyBlob;
        var b = new FileReader(),
          c = r(b);
        b.readAsText(a);
        return c;
      }
      if (this._bodyArrayBuffer)
        return Promise.resolve(x(this._bodyArrayBuffer));
      if (this._bodyFormData)
        throw Error("could not read FormData body as text");
      return Promise.resolve(this._bodyText);
    };
    g.formData &&
      (this.formData = function () {
        return this.text().then(A);
      });
    this.json = function () {
      return this.text().then(JSON.parse);
    };
    return this;
  }
  function k(a, b) {
    b = b || {};
    var c = b.body;
    if (a instanceof k) {
      if (a.bodyUsed) throw new TypeError("Already read");
      this.url = a.url;
      this.credentials = a.credentials;
      b.headers || (this.headers = new d(a.headers));
      this.method = a.method;
      this.mode = a.mode;
      c || null == a._bodyInit || ((c = a._bodyInit), (a.bodyUsed = !0));
    } else this.url = String(a);
    this.credentials = b.credentials || this.credentials || "omit";
    if (b.headers || !this.headers) this.headers = new d(b.headers);
    var v = b.method || this.method || "GET",
      g = v.toUpperCase();
    this.method = -1 < B.indexOf(g) ? g : v;
    this.mode = b.mode || this.mode || null;
    this.referrer = null;
    if (("GET" === this.method || "HEAD" === this.method) && c)
      throw new TypeError("Body not allowed for GET or HEAD requests");
    this._initBody(c);
  }
  function A(a) {
    var b = new FormData();
    a.trim()
      .split("&")
      .forEach(function (a) {
        if (a) {
          var c = a.split("=");
          a = c.shift().replace(/\+/g, " ");
          c = c.join("=").replace(/\+/g, " ");
          b.append(decodeURIComponent(a), decodeURIComponent(c));
        }
      });
    return b;
  }
  function C(a) {
    var b = new d();
    a.replace(/\r?\n[\t ]+/g, " ")
      .split(/\r?\n/)
      .forEach(function (a) {
        var c = a.split(":");
        if ((a = c.shift().trim())) (c = c.join(":").trim()), b.append(a, c);
      });
    return b;
  }
  function h(a, b) {
    b || (b = {});
    this.type = "default";
    this.status = void 0 === b.status ? 200 : b.status;
    this.ok = 200 <= this.status && 300 > this.status;
    this.statusText = "statusText" in b ? b.statusText : "OK";
    this.headers = new d(b.headers);
    this.url = b.url || "";
    this._initBody(a);
  }
  if (!e.fetch) {
    var D = "Symbol" in e && "iterator" in Symbol,
      m;
    if ((m = "FileReader" in e && "Blob" in e))
      try {
        new Blob(), (m = !0);
      } catch (a) {
        m = !1;
      }
    var g = {
      searchParams: "URLSearchParams" in e,
      iterable: D,
      blob: m,
      formData: "FormData" in e,
      arrayBuffer: "ArrayBuffer" in e,
    };
    if (g.arrayBuffer) {
      var E =
        "[object Int8Array];[object Uint8Array];[object Uint8ClampedArray];[object Int16Array];[object Uint16Array];[object Int32Array];[object Uint32Array];[object Float32Array];[object Float64Array]".split(
          ";"
        );
      var y = function (a) {
        return a && DataView.prototype.isPrototypeOf(a);
      };
      var z =
        ArrayBuffer.isView ||
        function (a) {
          return a && -1 < E.indexOf(Object.prototype.toString.call(a));
        };
    }
    d.prototype.append = function (a, b) {
      a = l(a);
      b = q(b);
      var c = this.map[a];
      this.map[a] = c ? c + "," + b : b;
    };
    d.prototype["delete"] = function (a) {
      delete this.map[l(a)];
    };
    d.prototype.get = function (a) {
      a = l(a);
      return this.has(a) ? this.map[a] : null;
    };
    d.prototype.has = function (a) {
      return this.map.hasOwnProperty(l(a));
    };
    d.prototype.set = function (a, b) {
      this.map[l(a)] = q(b);
    };
    d.prototype.forEach = function (a, b) {
      for (var c in this.map)
        this.map.hasOwnProperty(c) && a.call(b, this.map[c], c, this);
    };
    d.prototype.keys = function () {
      var a = [];
      this.forEach(function (b, c) {
        a.push(c);
      });
      return n(a);
    };
    d.prototype.values = function () {
      var a = [];
      this.forEach(function (b) {
        a.push(b);
      });
      return n(a);
    };
    d.prototype.entries = function () {
      var a = [];
      this.forEach(function (b, c) {
        a.push([c, b]);
      });
      return n(a);
    };
    g.iterable && (d.prototype[Symbol.iterator] = d.prototype.entries);
    var B = "DELETE GET HEAD OPTIONS POST PUT".split(" ");
    k.prototype.clone = function () {
      return new k(this, { body: this._bodyInit });
    };
    u.call(k.prototype);
    u.call(h.prototype);
    h.prototype.clone = function () {
      return new h(this._bodyInit, {
        status: this.status,
        statusText: this.statusText,
        headers: new d(this.headers),
        url: this.url,
      });
    };
    h.error = function () {
      var a = new h(null, { status: 0, statusText: "" });
      a.type = "error";
      return a;
    };
    var F = [301, 302, 303, 307, 308];
    h.redirect = function (a, b) {
      if (-1 === F.indexOf(b)) throw new RangeError("Invalid status code");
      return new h(null, { status: b, headers: { location: a } });
    };
    e.Headers = d;
    e.Request = k;
    e.Response = h;
    e.fetch = function (a, b) {
      return new Promise(function (c, d) {
        var e = new k(a, b),
          f = new XMLHttpRequest();
        f.onload = function () {
          var a = {
            status: f.status,
            statusText: f.statusText,
            headers: C(f.getAllResponseHeaders() || ""),
          };
          a.url =
            "responseURL" in f ? f.responseURL : a.headers.get("X-Request-URL");
          c(new h("response" in f ? f.response : f.responseText, a));
        };
        f.onerror = function () {
          d(new TypeError("Network request failed"));
        };
        f.ontimeout = function () {
          d(new TypeError("Network request failed"));
        };
        f.open(e.method, e.url, !0);
        "include" === e.credentials
          ? (f.withCredentials = !0)
          : "omit" === e.credentials && (f.withCredentials = !1);
        "responseType" in f && g.blob && (f.responseType = "blob");
        e.headers.forEach(function (a, b) {
          f.setRequestHeader(b, a);
        });
        f.send("undefined" === typeof e._bodyInit ? null : e._bodyInit);
      });
    };
    e.fetch.polyfill = !0;
  }
})("undefined" !== typeof self ? self : window);
/*! Built with http://stenciljs.com */
(function (Context, namespace, hydratedCssClass, resourcesUrl, s) {
  "use strict";
  s = document.querySelector("script[data-namespace='ionicons']");
  if (s) {
    resourcesUrl = s.getAttribute("data-resources-url");
  }
  (this && this.n) ||
    Object.setPrototypeOf ||
    ({ __proto__: [] } instanceof Array &&
      function (n, t) {
        n.__proto__ = t;
      }) ||
    function (n, t) {
      for (var e in t) t.hasOwnProperty(e) && (n[e] = t[e]);
    },
    (function (n, t, e, r) {
      "use strict";
      function i(n) {
        return n;
      }
      function u(n) {
        return n + "-host";
      }
      function o(n) {
        return n + "-slot";
      }
      function f(n, t, e, r, i) {
        if (r) {
          var u = t.t + (i || Y);
          t[u] || (t[u] = r);
        }
      }
      function c(n) {
        return { e: n[0], r: n[1], i: !!n[2], u: !!n[3], o: !!n[4] };
      }
      function a(n, t) {
        if (X(t) && "object" != typeof t && "function" != typeof t) {
          if (n === Boolean || 3 === n)
            return "false" !== t && ("" === t || !!t);
          if (n === Number || 4 === n) return parseFloat(t);
          if (n === String || 2 === n) return t.toString();
        }
        return t;
      }
      function s(n, t, e, r) {
        var i = n.f.get(t);
        i &&
          ((r = i["s-ld"] || i.$activeLoading) &&
            ((e = r.indexOf(t)) > -1 && r.splice(e, 1),
            r.length ||
              (i["s-init"] && i["s-init"](), i.$initLoad && i.$initLoad())),
          n.f.delete(t));
      }
      function l(n, t, e) {
        for (
          var r, i, u = null, o = !1, f = !1, c = arguments.length;
          c-- > 2;

        )
          nn.push(arguments[c]);
        for (; nn.length > 0; )
          if ((e = nn.pop()) && void 0 !== e.pop)
            for (c = e.length; c--; ) nn.push(e[c]);
          else
            "boolean" == typeof e && (e = null),
              (f = "function" != typeof n) &&
                (null == e
                  ? (e = "")
                  : "number" == typeof e
                  ? (e = String(e))
                  : "string" != typeof e && (f = !1)),
              f && o
                ? (u[u.length - 1].c += e)
                : null === u
                ? (u = [f ? { c: e } : e])
                : u.push(f ? { c: e } : e),
              (o = f);
        if (null != t) {
          if (
            (t.className && (t.class = t.className), "object" == typeof t.class)
          ) {
            for (c in t.class) t.class[c] && nn.push(c);
            (t.class = nn.join(" ")), (nn.length = 0);
          }
          null != t.key && (r = t.key), null != t.name && (i = t.name);
        }
        return "function" == typeof n
          ? n(Object.assign({}, t, { children: u }), tn)
          : { a: n, s: u, c: void 0, l: t, v: r, p: i, d: void 0, m: !1 };
      }
      function v(n, t, e, r) {
        t.split(" ").forEach(function (t) {
          (n[t] = !0),
            e &&
              ((n[t + "-" + e] = !0),
              r && (n[t + "-" + e + "-" + r] = n[t + "-" + r] = !0));
        });
      }
      function p(n, t) {
        n.b.has(t) ||
          (n.b.set(t, !0),
          n.y
            ? n.queue.write(function () {
                return d(n, t);
              })
            : n.queue.tick(function () {
                return d(n, t);
              }));
      }
      function d(n, t, e, r, i, u) {
        if ((n.b.delete(t), !n.g.has(t))) {
          if (((r = n.w.get(t)), (e = !r))) {
            if (
              ((i = n.f.get(t)) && i.$rendered && (i["s-rn"] = !0),
              i && !i["s-rn"])
            )
              return (
                (i["s-rc"] = i["s-rc"] || []).push(function () {
                  d(n, t);
                }),
                void (i.$onRender = i["s-rc"])
              );
            r = (function o(n, t, e, r, i, u, f) {
              try {
                (function c(n, t, e, r, i, u, o) {
                  for (o in (n.k.set(r, e),
                  n.M.has(e) || n.M.set(e, {}),
                  ((u = Object.assign(
                    { color: { type: String } },
                    t.properties
                  )).mode = { type: String }),
                  u))
                    m(n, u[o], e, r, o, i);
                })(n, (i = n.O(t).j), t, (r = new i()), e),
                  (function a(n, t, e) {
                    if (t) {
                      var r = n.k.get(e);
                      t.forEach(function (t) {
                        e[t.method] = {
                          emit: function (e) {
                            n.C(r, t.name, {
                              bubbles: t.bubbles,
                              composed: t.composed,
                              cancelable: t.cancelable,
                              detail: e,
                            });
                          },
                        };
                      });
                    }
                  })(n, i.events, r);
                try {
                  if ((u = n.x.get(t))) {
                    for (f = 0; f < u.length; f += 2) r[u[f]](u[f + 1]);
                    n.x.delete(t);
                  }
                } catch (e) {
                  n.A(e, 2, t);
                }
              } catch (e) {
                (r = {}), n.A(e, 7, t, !0);
              }
              return n.w.set(t, r), r;
            })(n, t, n.S.get(t));
            try {
              r.componentWillLoad && (u = r.componentWillLoad());
            } catch (e) {
              n.A(e, 3, t);
            }
          } else
            try {
              r.componentWillUpdate && (u = r.componentWillUpdate());
            } catch (e) {
              n.A(e, 5, t);
            }
          u && u.then
            ? u.then(function () {
                return h(n, t, r, e);
              })
            : h(n, t, r, e);
        }
      }
      function h(n, t, e, r) {
        (function i(n, t, e, r) {
          try {
            var i,
              f,
              c = t.j.host,
              a = t.j.encapsulation,
              s = "shadow" === a && n.N.W;
            if (
              ((i = (function p(n, t, e) {
                return (
                  n &&
                    Object.keys(n).forEach(function (r) {
                      n[r].reflectToAttr && ((e = e || {})[r] = t[r]);
                    }),
                  e
                );
              })(t.j.properties, r)),
              (f = s ? e.shadowRoot : e),
              !e["s-rn"])
            ) {
              n.P(n, n.N, t, e);
              var d = e["s-sc"];
              d && (n.N.T(e, u(d), ""), r.render || n.N.T(e, o(d), ""));
            }
            if (r.render || r.hostData || c || i) {
              n.R = !0;
              var h = r.render && r.render(),
                m = void 0;
              if ((m = r.hostData && r.hostData()) && t.L) {
                var b = Object.keys(m).reduce(function (n, e) {
                  return t.L[e] ? n.concat(e) : t.L[J(e)] ? n.concat(J(e)) : n;
                }, []);
                if (b.length > 0)
                  throw new Error(
                    "The following keys were attempted to be set with hostData() from the " +
                      t.t +
                      " component: " +
                      b.join(", ") +
                      ". If you would like to modify these please set @Prop({ mutable: true, reflectToAttr: true}) on the @Prop() decorator."
                  );
              }
              i && (m = m ? Object.assign(m, i) : i),
                (n.R = !1),
                c &&
                  (m = (function y(n, t, e) {
                    return (
                      (n = n || {}),
                      Object.keys(t).forEach(function (r) {
                        "theme" === r
                          ? v((n.class = n.class || {}), t[r], e.mode, e.color)
                          : "class" === r
                          ? v((n[r] = n[r] || {}), t[r])
                          : (n[r] = t[r]);
                      }),
                      n
                    );
                  })(m, c, r));
              var g = n.I.get(e) || {};
              g.d = f;
              var w = l(null, m, h);
              (w.m = !0), n.I.set(e, n.render(e, g, w, s, a));
            }
            n._ && n._.q(e),
              (e["s-rn"] = !0),
              e.$onRender && (e["s-rc"] = e.$onRender),
              e["s-rc"] &&
                (e["s-rc"].forEach(function (n) {
                  return n();
                }),
                (e["s-rc"] = null));
          } catch (t) {
            (n.R = !1), n.A(t, 8, e, !0);
          }
        })(n, n.O(t), t, e);
        try {
          r
            ? t["s-init"]()
            : (e.componentDidUpdate && e.componentDidUpdate(), O(n.I.get(t)));
        } catch (e) {
          n.A(e, 6, t, !0);
        }
      }
      function m(n, t, e, r, i, u, o, f) {
        if (t.type || t.state) {
          var c = n.M.get(e);
          t.state ||
            (!t.attr ||
              (void 0 !== c[i] && "" !== c[i]) ||
              ((o = u && u.D) && X((f = o[t.attr])) && (c[i] = a(t.type, f))),
            e.hasOwnProperty(i) &&
              (void 0 === c[i] && (c[i] = a(t.type, e[i])),
              "mode" !== i && delete e[i])),
            r.hasOwnProperty(i) && void 0 === c[i] && (c[i] = r[i]),
            t.watchCallbacks && (c[en + i] = t.watchCallbacks.slice()),
            g(
              r,
              i,
              function s(t) {
                return (t = n.M.get(n.k.get(this))) && t[i];
              },
              function l(e, r) {
                (r = n.k.get(this)) && (t.state || t.mutable) && b(n, r, i, e);
              }
            );
        } else if (t.elementRef) y(r, i, e);
        else if (t.method) y(e, i, r[i].bind(r));
        else if (t.context) {
          var v = n.U(t.context);
          void 0 !== v && y(r, i, (v.B && v.B(e)) || v);
        } else t.connect && y(r, i, n.H(t.connect));
      }
      function b(n, t, e, r, i, u, o) {
        (i = n.M.get(t)) || n.M.set(t, (i = {}));
        var f = i[e];
        if (r !== f && ((i[e] = r), (u = n.w.get(t)))) {
          if ((o = i[en + e]))
            for (var c = 0; c < o.length; c++)
              try {
                u[o[c]].call(u, r, f, e);
              } catch (n) {}
          !n.R && t["s-rn"] && p(n, t);
        }
      }
      function y(n, t, e) {
        Object.defineProperty(n, t, { configurable: !0, value: e });
      }
      function g(n, t, e, r) {
        Object.defineProperty(n, t, { configurable: !0, get: e, set: r });
      }
      function w(n, t, e, r, i) {
        var u = t !== (t = t.replace(/^xlink\:?/, "")),
          o = rn[t] || r;
        (o && (!e || "false" === e)) || i
          ? u
            ? n.removeAttributeNS(un, G(t))
            : n.removeAttribute(t)
          : "function" != typeof e &&
            (o && (e = ""),
            u ? n.setAttributeNS(un, G(t), e) : n.setAttribute(t, e));
      }
      function k(n, t, e, r, i, u, o, f, c, a) {
        if ("class" !== e || u)
          if ("style" === e) {
            for (f in ((r = r || Z), (i = i || Z), r))
              i[f] || (t.style[f] = "");
            for (f in i) i[f] !== r[f] && (t.style[f] = i[f]);
          } else
            "o" !== e[0] || "n" !== e[1] || !/[A-Z]/.test(e[2]) || e in t
              ? "list" !== e &&
                "type" !== e &&
                !u &&
                (e in t ||
                  (-1 !== ["object", "function"].indexOf(typeof i) &&
                    null !== i))
                ? (a = n.O(t)) && a.L && a.L[e]
                  ? (M(t, e, i),
                    o &&
                      a.L[e].F &&
                      w(t, a.L[e].z, i, 3 === a.L[e].Y, null == i))
                  : "ref" !== e &&
                    (M(t, e, null == i ? "" : i),
                    (null != i && !1 !== i) || t.removeAttribute(e))
                : null != i && "key" !== e
                ? w(t, e, i)
                : (u || (n.N.Z(t, e) && (null == i || !1 === i))) && n.N.K(t, e)
              : ((e = G(e) in t ? G(e.substring(2)) : G(e[2]) + e.substring(3)),
                i ? i !== r && n.N.Q(t, e, i) : n.N.X(t, e));
        else if (r !== i) {
          var s = null == r || "" === r ? K : r.trim().split(/\s+/),
            l = null == i || "" === i ? K : i.trim().split(/\s+/),
            v =
              null == t.className || "" === t.className
                ? K
                : t.className.trim().split(/\s+/);
          for (f = 0, c = s.length; f < c; f++)
            -1 === l.indexOf(s[f]) &&
              (v = v.filter(function (n) {
                return n !== s[f];
              }));
          for (f = 0, c = l.length; f < c; f++)
            -1 === s.indexOf(l[f]) && (v = v.concat([l[f]]));
          t.className = v.join(" ");
        }
      }
      function M(n, t, e) {
        try {
          n[t] = e;
        } catch (n) {}
      }
      function $(n, t, e, r, i) {
        var u = 11 === e.d.nodeType && e.d.host ? e.d.host : e.d,
          o = (t && t.l) || Z,
          f = e.l || Z;
        for (i in o)
          (f && null != f[i]) ||
            null == o[i] ||
            k(n, u, i, o[i], void 0, r, e.m);
        for (i in f)
          (i in o &&
            f[i] === ("value" === i || "checked" === i ? u[i] : o[i])) ||
            k(n, u, i, o[i], f[i], r, e.m);
      }
      function j(n, t) {
        function e(i, u, o, f, c, v, m, b, y) {
          if (
            ((b = u.s[o]),
            a ||
              ((p = !0),
              "slot" === b.a &&
                (l && t.T(f, l + "-slot", ""), b.s ? (b.G = !0) : (b.J = !0))),
            X(b.c))
          )
            b.d = t.V(b.c);
          else if (b.J) b.d = t.V("");
          else {
            if (
              ((v = b.d =
                on || "svg" === b.a
                  ? t.nn("http://www.w3.org/2000/svg", b.a)
                  : t.tn(b.G ? "slot-fb" : b.a)),
              (on = "svg" === b.a || ("foreignObject" !== b.a && on)),
              $(n, null, b, on),
              X(l) && v["s-si"] !== l && t.T(v, (v["s-si"] = l), ""),
              X(s) &&
                t.T(
                  v,
                  z,
                  s +
                    "." +
                    o +
                    ((function n(t) {
                      if (t)
                        for (var e = 0; e < t.length; e++)
                          if ("slot" !== t[e].a || n(t[e].s)) return !0;
                      return !1;
                    })(b.s)
                      ? ""
                      : ".")
                ),
              b.s)
            )
              for (c = 0; c < b.s.length; ++c)
                (m = e(i, b, c, v)) &&
                  (X(s) &&
                    3 === m.nodeType &&
                    !m["s-cr"] &&
                    t.en(v, t.rn("s." + s + "." + c)),
                  t.en(v, m),
                  X(s) &&
                    3 === m.nodeType &&
                    !m["s-cr"] &&
                    (t.en(v, t.rn("/")), t.en(v, t.V(" "))));
            "svg" === b.a && (on = !1);
          }
          return (
            (b.d["s-hn"] = d),
            (b.G || b.J) &&
              ((b.d["s-sr"] = !0),
              (b.d["s-cr"] = h),
              (b.d["s-sn"] = b.p || ""),
              (y = i && i.s && i.s[o]) && y.a === b.a && i.d && r(i.d)),
            b.d
          );
        }
        function r(e, i, u, o) {
          n.in = !0;
          var a = t.un(e);
          for (u = a.length - 1; u >= 0; u--)
            (o = a[u])["s-hn"] !== d &&
              o["s-ol"] &&
              (t.on(o),
              t.fn(c(o), o, f(o)),
              t.on(o["s-ol"]),
              (o["s-ol"] = null),
              (p = !0)),
              i && r(o, i);
          n.in = !1;
        }
        function i(n, r, i, u, o, c, a, s) {
          var l = n["s-cr"] || n.$defaultHolder;
          for (
            (a = (l && t.cn(l)) || n).shadowRoot &&
            t.an(a) === d &&
            (a = a.shadowRoot);
            o <= c;
            ++o
          )
            u[o] &&
              (s = X(u[o].c) ? t.V(u[o].c) : e(null, i, o, n)) &&
              ((u[o].d = s), t.fn(a, s, f(r)));
        }
        function u(n, e, i, u) {
          for (; e <= i; ++e)
            X(n[e]) &&
              ((u = n[e].d),
              (v = !0),
              u["s-ol"] ? t.on(u["s-ol"]) : r(u, !0),
              t.on(u));
        }
        function o(n, t) {
          return n.a === t.a && n.v === t.v && ("slot" !== n.a || n.p === t.p);
        }
        function f(n) {
          return n && n["s-ol"] ? n["s-ol"] : n;
        }
        function c(n) {
          return t.cn(n["s-ol"] ? n["s-ol"] : n);
        }
        var a,
          s,
          l,
          v,
          p,
          d,
          h,
          m = [];
        return function b(y, g, w, k, M, j, O, E, C, x, A, S) {
          if (
            ((d = t.an(y)),
            (h = y["s-cr"]),
            (a = k),
            (s = "shadow" !== M ? j : null),
            (l = y["s-sc"]),
            (p = v = !1),
            (function a(s, l, v) {
              var p = (l.d = s.d),
                d = s.s,
                h = l.s;
              (on = l.d && X(t.sn(l.d)) && void 0 !== l.d.ownerSVGElement),
                (on = "svg" === l.a || ("foreignObject" !== l.a && on)),
                X(l.c)
                  ? (v = p["s-cr"] || p.$defaultHolder)
                    ? t.ln(t.cn(v), l.c)
                    : s.c !== l.c && t.ln(p, l.c)
                  : ("slot" !== l.a && $(n, s, l, on),
                    X(d) && X(h)
                      ? (function m(n, s, l, v, p, d, h, b) {
                          for (
                            var y = 0,
                              g = 0,
                              w = s.length - 1,
                              k = s[0],
                              M = s[w],
                              $ = v.length - 1,
                              j = v[0],
                              O = v[$];
                            y <= w && g <= $;

                          )
                            if (null == k) k = s[++y];
                            else if (null == M) M = s[--w];
                            else if (null == j) j = v[++g];
                            else if (null == O) O = v[--$];
                            else if (o(k, j))
                              a(k, j), (k = s[++y]), (j = v[++g]);
                            else if (o(M, O))
                              a(M, O), (M = s[--w]), (O = v[--$]);
                            else if (o(k, O))
                              ("slot" !== k.a && "slot" !== O.a) ||
                                r(t.cn(k.d)),
                                a(k, O),
                                t.fn(n, k.d, t.vn(M.d)),
                                (k = s[++y]),
                                (O = v[--$]);
                            else if (o(M, j))
                              ("slot" !== k.a && "slot" !== O.a) ||
                                r(t.cn(M.d)),
                                a(M, j),
                                t.fn(n, M.d, k.d),
                                (M = s[--w]),
                                (j = v[++g]);
                            else {
                              for (p = null, d = y; d <= w; ++d)
                                if (s[d] && X(s[d].v) && s[d].v === j.v) {
                                  p = d;
                                  break;
                                }
                              X(p)
                                ? ((b = s[p]).a !== j.a
                                    ? (h = e(s && s[g], l, p, n))
                                    : (a(b, j), (s[p] = void 0), (h = b.d)),
                                  (j = v[++g]))
                                : ((h = e(s && s[g], l, g, n)), (j = v[++g])),
                                h && t.fn(c(k.d), h, f(k.d));
                            }
                          y > w
                            ? i(
                                n,
                                null == v[$ + 1] ? null : v[$ + 1].d,
                                l,
                                v,
                                g,
                                $
                              )
                            : g > $ && u(s, y, w);
                        })(p, d, l, h)
                      : X(h)
                      ? (X(s.c) && t.ln(p, ""),
                        i(p, null, l, h, 0, h.length - 1))
                      : X(d) && u(d, 0, d.length - 1)),
                on && "svg" === l.a && (on = !1);
            })(g, w),
            X(s) && t.T(g.d, F, s),
            p)
          ) {
            for (
              (function n(e, r, i, u, o, f, c, a, s, l) {
                for (o = 0, f = (r = t.un(e)).length; o < f; o++) {
                  if ((i = r[o])["s-sr"] && (u = i["s-cr"]))
                    for (
                      a = t.un(t.cn(u)), s = i["s-sn"], c = a.length - 1;
                      c >= 0;
                      c--
                    )
                      (u = a[c])["s-cn"] ||
                        u["s-nr"] ||
                        u["s-hn"] === i["s-hn"] ||
                        ((((3 === (l = t.pn(u)) || 8 === l) && "" === s) ||
                          (1 === l && null === t.dn(u, "slot") && "" === s) ||
                          (1 === l && t.dn(u, "slot") === s)) &&
                          (m.some(function (n) {
                            return n.hn === u;
                          }) ||
                            ((v = !0),
                            (u["s-sn"] = s),
                            m.push({ mn: i, hn: u }))));
                  1 === t.pn(i) && n(i);
                }
              })(w.d),
                O = 0;
              O < m.length;
              O++
            )
              (E = m[O]).hn["s-ol"] ||
                (((C = t.V(""))["s-nr"] = E.hn),
                t.fn(t.cn(E.hn), (E.hn["s-ol"] = C), E.hn));
            for (n.in = !0, O = 0; O < m.length; O++) {
              for (
                E = m[O], A = t.cn(E.mn), S = t.vn(E.mn), C = E.hn["s-ol"];
                (C = t.bn(C));

              )
                if (
                  (x = C["s-nr"]) &&
                  x &&
                  x["s-sn"] === E.hn["s-sn"] &&
                  A === t.cn(x) &&
                  (x = t.vn(x)) &&
                  x &&
                  !x["s-nr"]
                ) {
                  S = x;
                  break;
                }
              ((!S && A !== t.cn(E.hn)) || t.vn(E.hn) !== S) &&
                E.hn !== S &&
                (t.on(E.hn), t.fn(A, E.hn, S));
            }
            n.in = !1;
          }
          return (
            v &&
              (function n(e, r, i, u, o, f, c, a) {
                for (u = 0, o = (i = t.un(e)).length; u < o; u++)
                  if (((r = i[u]), 1 === t.pn(r))) {
                    if (r["s-sr"])
                      for (c = r["s-sn"], r.hidden = !1, f = 0; f < o; f++)
                        if (i[f]["s-hn"] !== r["s-hn"])
                          if (((a = t.pn(i[f])), "" !== c)) {
                            if (1 === a && c === t.dn(i[f], "slot")) {
                              r.hidden = !0;
                              break;
                            }
                          } else if (
                            1 === a ||
                            (3 === a && "" !== t.yn(i[f]).trim())
                          ) {
                            r.hidden = !0;
                            break;
                          }
                    n(r);
                  }
              })(w.d),
            (m.length = 0),
            w
          );
        };
      }
      function O(n, t) {
        n &&
          (n.l && n.l.ref && n.l.ref(t ? null : n.d),
          n.s &&
            n.s.forEach(function (n) {
              O(n, t);
            }));
      }
      function E(n, t, e, r, i) {
        var u,
          o,
          f,
          c,
          a = n.pn(t);
        if (i && 1 === a) {
          (o = n.dn(t, z)) &&
            (f = o.split("."))[0] === r &&
            (((c = {}).a = n.an((c.d = t))),
            e.s || (e.s = []),
            (e.s[f[1]] = c),
            (e = c),
            (i = "" !== f[2]));
          for (var s = 0; s < t.childNodes.length; s++)
            E(n, t.childNodes[s], e, r, i);
        } else
          3 === a &&
            (u = t.previousSibling) &&
            8 === n.pn(u) &&
            "s" === (f = n.yn(u).split("."))[0] &&
            f[1] === r &&
            (((c = { c: n.yn(t) }).d = t), e.s || (e.s = []), (e.s[f[2]] = c));
      }
      function C(n, t) {
        var e = { nodeName: t },
          r = n.O(e);
        if (!r || !r.j) return Promise.resolve(null);
        var i = r.j,
          u = (function o(n) {
            return Object.keys(n).reduce(
              function (t, e) {
                var r,
                  i = n[e],
                  u = { name: e };
                if (i.state) (r = "states"), (u.gn = i.watchCallbacks || []);
                else if (i.elementRef) r = "elements";
                else if (i.method) r = "methods";
                else {
                  r = "props";
                  var o = "any";
                  i.type &&
                    ((o = i.type),
                    "function" == typeof i.type && (o = i.type.name)),
                    (u.type = o.toLowerCase()),
                    (u.mutable = i.mutable || !1),
                    (u.connect = i.connect || "-"),
                    (u.context = i.connect || "-"),
                    (u.gn = i.watchCallbacks || []);
                }
                return t[r].push(u), t;
              },
              { wn: [], kn: [], Mn: [], $n: [] }
            );
          })(i.properties || {}),
          f = (r.jn || []).map(function (n) {
            return {
              On: n.e,
              capture: n.o,
              disabled: n.i,
              passive: n.u,
              method: n.r,
            };
          }),
          c = i.events || [],
          a = Object.assign(
            {
              En: i.is,
              Cn: r.xn || "unknown",
              encapsulation: i.encapsulation || "none",
            },
            u,
            { events: { An: c, listeners: f } }
          );
        return Promise.resolve(a);
      }
      function x(n, t, e, r, i) {
        return (
          e.mode || (e.mode = n.Sn(e)),
          e["s-cr"] ||
            n.dn(e, F) ||
            (n.W && 1 === t.encapsulation) ||
            ((e["s-cr"] = n.V("")),
            (e["s-cr"]["s-cn"] = !0),
            n.fn(e, e["s-cr"], n.un(e)[0])),
          n.W ||
            1 !== t.encapsulation ||
            "shadowRoot" in HTMLElement.prototype ||
            (e.shadowRoot = e),
          1 === t.encapsulation &&
            n.W &&
            !e.shadowRoot &&
            n.Wn(e, { mode: "open" }),
          (r = { Nn: e["s-id"], D: {} }),
          t.L &&
            Object.keys(t.L).forEach(function (u) {
              (i = t.L[u].z) && (r.D[i] = n.dn(e, i));
            }),
          r
        );
      }
      function A(n, t, e, r) {
        (e.connectedCallback = function () {
          (function e(n, t, r) {
            n.Pn.has(r) ||
              (n.Pn.set(r, !0),
              (function i(n, t) {
                var e = n.O(t);
                e.jn &&
                  e.jn.forEach(function (e) {
                    e.i ||
                      n.N.Q(
                        t,
                        e.e,
                        (function r(n, t, e, i) {
                          return function (r) {
                            (i = n.w.get(t))
                              ? i[e](r)
                              : ((i = n.x.get(t) || []).push(e, r),
                                n.x.set(t, i));
                          };
                        })(n, t, e.r),
                        e.o,
                        e.u
                      );
                  });
              })(n, r)),
              n.g.delete(r),
              n.Tn.has(r) ||
                (n.Tn.set(r, !0),
                r["s-id"] || (r["s-id"] = n.Rn()),
                (function u(n, t, e) {
                  for (e = t; (e = n.N.sn(e)); )
                    if (n.Ln(e)) {
                      n.In.has(t) ||
                        (n.f.set(t, e),
                        e.$activeLoading && (e["s-ld"] = e.$activeLoading),
                        (e["s-ld"] = e["s-ld"] || []).push(t));
                      break;
                    }
                })(n, r),
                n.queue.tick(function () {
                  n.S.set(r, x(n.N, t, r)), n._n(t, r);
                }));
          })(n, t, this);
        }),
          (e.attributeChangedCallback = function (n, e, r) {
            (function i(n, t, e, r, u, o, f) {
              if (n && r !== u)
                for (o in n)
                  if ((f = n[o]).z && G(f.z) === G(e)) {
                    t[o] = a(f.Y, u);
                    break;
                  }
            })(t.L, this, n, e, r);
          }),
          (e.disconnectedCallback = function () {
            (function t(n, e) {
              if (
                !n.in &&
                (function r(n, t) {
                  for (; t; ) {
                    if (!n.cn(t)) return 9 !== n.pn(t);
                    t = n.cn(t);
                  }
                })(n.N, e)
              ) {
                n.g.set(e, !0),
                  s(n, e),
                  O(n.I.get(e), !0),
                  n.N.X(e),
                  n.Pn.delete(e);
                var i = n.w.get(e);
                i && i.componentDidUnload && i.componentDidUnload(),
                  n._ && n._.qn(e),
                  [n.f, n.Dn, n.S].forEach(function (n) {
                    return n.delete(e);
                  });
              }
            })(n, this);
          }),
          (e["s-init"] = function () {
            (function t(n, e, r, i, u) {
              if (
                (function n(t, e) {
                  for (var r = 0; r < e.childNodes.length; r++)
                    if (1 === e.childNodes[r].nodeType) {
                      if (t.O(e.childNodes[r]) && !t.Tn.has(e.childNodes[r]))
                        return !1;
                      if (!n(t, e.childNodes[r])) return !1;
                    }
                  return !0;
                })(n, e) &&
                !n.In.has(e) &&
                (i = n.w.get(e)) &&
                !n.g.has(e) &&
                (!e["s-ld"] || !e["s-ld"].length)
              ) {
                delete e["s-ld"], n.In.set(e, !0);
                try {
                  O(n.I.get(e)),
                    (u = n.Dn.get(e)) &&
                      (u.forEach(function (n) {
                        return n(e);
                      }),
                      n.Dn.delete(e)),
                    i.componentDidLoad && i.componentDidLoad();
                } catch (t) {
                  n.A(t, 4, e);
                }
                e.classList.add(r), s(n, e);
              }
            })(n, this, r);
          }),
          (e["s-hmr"] = function (e) {
            (function r(n, t, e, i) {
              t.j = null;
              var u = n.w.get(e);
              u && (n.k.delete(u), n.w.delete(e)),
                n.S.set(e, x(n.N, t, e)),
                n._n(t, e, i);
            })(n, t, this, e);
          }),
          (e.forceUpdate = function () {
            p(n, this);
          }),
          (function i(n, t, e) {
            t &&
              Object.keys(t).forEach(function (r) {
                var i = t[r],
                  u = i.Un;
                1 === u || 2 === u
                  ? g(
                      e,
                      r,
                      function t() {
                        return (n.M.get(this) || {})[r];
                      },
                      function t(e) {
                        b(n, this, r, a(i.Y, e));
                      }
                    )
                  : 6 === u && y(e, r, V);
              });
          })(n, t.L, e);
      }
      function S(n, t, e, r) {
        return function () {
          var i = arguments;
          return (function u(n, t, e) {
            var r = t[e];
            return (
              r || (r = n.Bn.querySelector(e)),
              r || ((r = t[e] = n.tn(e)), n.en(n.Bn, r)),
              r.componentOnReady()
            );
          })(n, t, e).then(function (n) {
            return n[r].apply(n, i);
          });
        };
      }
      function W(n, t, e) {
        n.lastIndex = 0;
        var r = t.substring(e).match(n);
        if (r) {
          var i = e + r.index;
          return { start: i, end: i + r[0].length };
        }
        return null;
      }
      function N(n, t, e) {
        var r = (function i(n, t) {
          var e = W(hn, n, t);
          if (!e) return null;
          var r = (function i(n, t) {
              for (var e = 0, r = t; r < n.length; r++) {
                var i = n[r];
                if ("(" === i) e++;
                else if (")" === i && --e <= 0) return r + 1;
              }
              return r;
            })(n, e.start),
            u = n.substring(e.end, r - 1).split(","),
            o = u[0],
            f = u.slice(1);
          return {
            start: e.start,
            end: r,
            Hn: o.trim(),
            Fn: f.length > 0 ? f.join(",").trim() : void 0,
          };
        })(n, e);
        if (!r) return t.push(n.substring(e, n.length)), n.length;
        var u = r.Hn,
          o = null != r.Fn ? R(r.Fn) : void 0;
        return (
          t.push(n.substring(e, r.start), function (n) {
            return (function t(n, e, r) {
              return n[e] ? n[e] : r ? P(r, n) : "";
            })(n, u, o);
          }),
          r.end
        );
      }
      function P(n, t) {
        for (var e = "", r = 0; r < n.length; r++) {
          var i = n[r];
          e += "string" == typeof i ? i : i(t);
        }
        return e;
      }
      function T(n, t) {
        for (var e = !1, r = !1, i = t; i < n.length; i++) {
          var u = n[i];
          if (e) r && '"' === u && (e = !1), r || "'" !== u || (e = !1);
          else if ('"' === u) (e = !0), (r = !0);
          else if ("'" === u) (e = !0), (r = !1);
          else {
            if (";" === u) return i + 1;
            if ("}" === u) return i;
          }
        }
        return i;
      }
      function R(n) {
        var t = 0;
        n = (function e(n) {
          for (var t = "", e = 0; ; ) {
            var r = W(mn, n, e),
              i = r ? r.start : n.length;
            if (((t += n.substring(e, i)), !r)) break;
            e = T(n, i);
          }
          return t;
        })((n = n.replace(bn, "")))
          .replace(gn, "")
          .replace(yn, "");
        for (var r = []; t < n.length; ) t = N(n, r, t);
        return r;
      }
      function L(n) {
        var t = {};
        n.forEach(function (n) {
          n.zn.forEach(function (n) {
            t[n.Yn] = n.value;
          });
        });
        for (
          var e = {},
            r = Object.entries(t),
            i = function (n) {
              var t = !1;
              if (
                (r.forEach(function (n) {
                  var r = n[0],
                    i = P(n[1], e);
                  i !== e[r] && ((e[r] = i), (t = !0));
                }),
                !t)
              )
                return "break";
            },
            u = 0;
          u < 10 && "break" !== i();
          u++
        );
        return e;
      }
      function I(n) {
        var t = (n = n.replace(/\s+/gim, " ").trim()).endsWith(wn);
        return (
          t && (n = n.substr(0, n.length - wn.length).trim()),
          { value: n, Zn: t }
        );
      }
      function _(n) {
        var t = [];
        return (
          n.forEach(function (n) {
            t.push.apply(t, n.Kn);
          }),
          t
        );
      }
      function q(n) {
        var t = (function e(n) {
            return (function n(t, e) {
              var r = e.substring(t.start, t.end - 1);
              if (((t.parsedCssText = t.cssText = r.trim()), t.parent)) {
                var i = t.previous ? t.previous.end : t.parent.start;
                r = (r = (r = (function u(n) {
                  return n.replace(/\\([0-9a-f]{1,6})\s/gi, function () {
                    for (var n = arguments[1], t = 6 - n.length; t--; )
                      n = "0" + n;
                    return "\\" + n;
                  });
                })((r = e.substring(i, t.start - 1)))).replace(
                  ln.Qn,
                  " "
                )).substring(r.lastIndexOf(";") + 1);
                var o = (t.parsedSelector = t.selector = r.trim());
                (t.atRule = 0 === o.indexOf(dn)),
                  t.atRule
                    ? 0 === o.indexOf(pn)
                      ? (t.type = cn.Xn)
                      : o.match(ln.Gn) &&
                        ((t.type = cn.Jn),
                        (t.keyframesName = t.selector.split(ln.Qn).pop()))
                    : 0 === o.indexOf(vn)
                    ? (t.type = cn.Vn)
                    : (t.type = cn.nt);
              }
              var f = t.rules;
              if (f)
                for (
                  var c = 0, a = f.length, s = void 0;
                  c < a && (s = f[c]);
                  c++
                )
                  n(s, e);
              return t;
            })(
              (function e(n) {
                var t = new fn();
                (t.start = 0), (t.end = n.length);
                for (var e = t, r = 0, i = n.length; r < i; r++)
                  if (n[r] === an) {
                    e.rules || (e.rules = []);
                    var u = e,
                      o = u.rules[u.rules.length - 1] || null;
                    ((e = new fn()).start = r + 1),
                      (e.parent = u),
                      (e.previous = o),
                      u.rules.push(e);
                  } else n[r] === sn && ((e.end = r + 1), (e = e.parent || t));
                return t;
              })(
                (n = (function t(n) {
                  return n.replace(ln.tt, "").replace(ln.et, "");
                })(n))
              ),
              n
            );
          })(n),
          r = R(n);
        return {
          rt: n,
          it: r,
          Kn: (function i(n, t) {
            if ((void 0 === t && (t = 0), !n.rules)) return [];
            var e = [];
            return (
              n.rules
                .filter(function (n) {
                  return n.type === cn.nt;
                })
                .forEach(function (n) {
                  var r = (function i(n) {
                    for (var t, e = []; (t = kn.exec(n.trim())); ) {
                      var r = I(t[2]),
                        i = r.value,
                        u = r.Zn;
                      e.push({ Yn: t[1].trim(), value: R(i), Zn: u });
                    }
                    return e;
                  })(n.cssText);
                  r.length > 0 &&
                    n.parsedSelector.split(",").forEach(function (n) {
                      (n = n.trim()),
                        e.push({ selector: n, zn: r, ut: 1, ot: t });
                    }),
                    t++;
                }),
              e
            );
          })(t),
          ft: r.length > 1,
        };
      }
      function D(n, t) {
        var e = q(t.innerHTML);
        (e.ct = t), n.push(e);
      }
      function U(n, t, e) {
        return B(
          (n = B(
            (n = B(n, "\\[" + u(t) + "\\]", "[" + u(e) + "]")),
            "\\[" + i(t) + "\\]",
            "[" + i(e) + "]"
          )),
          "\\[" + o(t) + "\\]",
          "[" + o(e) + "]"
        );
      }
      function B(n, t, e) {
        return n.replace(new RegExp(t, "g"), e);
      }
      function H(n, t, e) {
        var r = e.href;
        return fetch(r)
          .then(function (n) {
            return n.text();
          })
          .then(function (i) {
            if (
              (function u(n) {
                return n.indexOf("var(") > -1 || Mn.test(n);
              })(i) &&
              e.parentNode
            ) {
              (function o(n) {
                return ($n.lastIndex = 0), $n.test(n);
              })(i) &&
                (i = (function f(n, t) {
                  var e = t.replace(/[^/]*$/, "");
                  return n.replace($n, function (n, t) {
                    var r = e + t;
                    return n.replace(t, r);
                  });
                })(i, r));
              var c = n.createElement("style");
              (c.innerHTML = i),
                D(t, c),
                e.parentNode.insertBefore(c, e),
                e.remove();
            }
          })
          .catch(function (n) {});
      }
      var F = "data-ssrv",
        z = "data-ssrc",
        Y = "$",
        Z = {},
        K = [],
        Q = {
          enter: 13,
          escape: 27,
          space: 32,
          tab: 9,
          left: 37,
          up: 38,
          right: 39,
          down: 40,
        },
        X = function (n) {
          return null != n;
        },
        G = function (n) {
          return n.toLowerCase();
        },
        J = function (n) {
          return G(n)
            .split("-")
            .map(function (n) {
              return n.charAt(0).toUpperCase() + n.slice(1);
            })
            .join("");
        },
        V = function () {},
        nn = [],
        tn = {
          getAttributes: function (n) {
            return n.l;
          },
          replaceAttributes: function (n, t) {
            return (n.l = t);
          },
        },
        en = "wc-",
        rn = {
          allowfullscreen: 1,
          async: 1,
          autofocus: 1,
          autoplay: 1,
          checked: 1,
          controls: 1,
          disabled: 1,
          enabled: 1,
          formnovalidate: 1,
          hidden: 1,
          multiple: 1,
          noresize: 1,
          readonly: 1,
          required: 1,
          selected: 1,
          spellcheck: 1,
        },
        un = "http://www.w3.org/1999/xlink",
        on = !1,
        fn = function fn() {
          (this.start = 0),
            (this.end = 0),
            (this.previous = null),
            (this.parent = null),
            (this.rules = null),
            (this.parsedCssText = ""),
            (this.cssText = ""),
            (this.atRule = !1),
            (this.type = 0),
            (this.keyframesName = ""),
            (this.selector = ""),
            (this.parsedSelector = "");
        },
        cn = { nt: 1, Jn: 7, Xn: 4, Vn: 1e3 },
        an = "{",
        sn = "}",
        ln = {
          tt: /\/\*[^*]*\*+([^/*][^*]*\*+)*\//gim,
          et: /@import[^;]*;/gim,
          at: /(?:^[^;\-\s}]+)?--[^;{}]*?:[^{};]*?(?:[;\n]|$)/gim,
          st: /(?:^[^;\-\s}]+)?--[^;{}]*?:[^{};]*?{[^}]*?}(?:[;\n]|$)?/gim,
          lt: /@apply\s*\(?[^);]*\)?\s*(?:[;\n]|$)?/gim,
          vt: /[^;:]*?:[^;]*?var\([^;]*\)(?:[;\n]|$)?/gim,
          Gn: /^@[^\s]*keyframes/,
          Qn: /\s+/g,
        },
        vn = "--",
        pn = "@media",
        dn = "@",
        hn = /\bvar\(/,
        mn = /\B--[\w-]+\s*:/,
        bn = /\/\*[^*]*\*+([^/*][^*]*\*+)*\//gim,
        yn = /^[\t ]+\n/gm,
        gn = /[^{}]*{\s*}/gm,
        wn = "!important",
        kn =
          /(?:^|[;\s{]\s*)(--[\w-]*?)\s*:\s*(?:((?:'(?:\\'|.)*?'|"(?:\\"|.)*?"|\([^)]*?\)|[^};{])+)|\{([^}]*)\}(?:(?=[;\s}])|$))/gm,
        Mn = /[\s;{]--[-a-zA-Z0-9]+\s*:/m,
        $n = /url[\s]*\([\s]*['"]?(?![http|/])([^\'\"\)]*)[\s]*['"]?\)[\s]*/gim,
        jn = (function () {
          function n(n, t) {
            (this.pt = n),
              (this.dt = t),
              (this.ht = 0),
              (this.mt = new WeakMap()),
              (this.bt = new WeakMap()),
              (this.yt = []),
              (this.gt = new Map());
          }
          return (
            (n.prototype.wt = function () {
              var n = this;
              return new Promise(function (t) {
                n.pt.requestAnimationFrame(function () {
                  (function e(n, t) {
                    return (function e(n, t) {
                      for (
                        var e = [],
                          r = n.querySelectorAll(
                            'link[rel="stylesheet"][href]'
                          ),
                          i = 0;
                        i < r.length;
                        i++
                      )
                        e.push(H(n, t, r[i]));
                      return Promise.all(e);
                    })(n, t).then(function () {
                      (function e(n, t) {
                        for (
                          var e = n.querySelectorAll("style"), r = 0;
                          r < e.length;
                          r++
                        )
                          D(t, e[r]);
                      })(n, t);
                    });
                  })(n.dt, n.yt).then(function () {
                    return t();
                  });
                });
              });
            }),
            (n.prototype.kt = function (n) {
              var t = this;
              return H(this.dt, this.yt, n).then(function () {
                t.Mt();
              });
            }),
            (n.prototype.$t = function (n) {
              D(this.yt, n), this.Mt();
            }),
            (n.prototype.jt = function (n, t, e) {
              if (this.bt.has(n)) return null;
              var r = n["s-sc"],
                i = this.Ot(e, t, r),
                u = i.ft && i.Et;
              if (!u && i.ct) return null;
              var o = this.dt.createElement("style");
              if (u) {
                var f = i.Et + "-" + this.ht;
                (n["s-sc"] = f),
                  this.mt.set(n, o),
                  this.bt.set(
                    n,
                    (function c(n, t) {
                      var e = n.it.map(function (e) {
                          return "string" == typeof e ? U(e, n.Et, t) : e;
                        }),
                        r = n.Kn.map(function (e) {
                          return Object.assign({}, e, {
                            selector: U(e.selector, n.Et, t),
                          });
                        });
                      return Object.assign({}, n, { it: e, Kn: r, Et: t });
                    })(i, f)
                  ),
                  this.ht++;
              } else
                (i.ct = o),
                  i.ft || (o.innerHTML = P(i.it, {})),
                  this.yt.push(i),
                  this.Mt(),
                  this.bt.set(n, i);
              return o;
            }),
            (n.prototype.qn = function (n) {
              var t = this.mt.get(n);
              t && t.remove(), this.mt.delete(n), this.bt.delete(n);
            }),
            (n.prototype.q = function (n) {
              var t = this.bt.get(n);
              if (t && t.ft && t.Et) {
                var e = this.mt.get(n);
                if (e) {
                  var r = L(
                    (function i(n, t, e) {
                      return (function i(n) {
                        return (
                          n.sort(function (n, t) {
                            return n.ut === t.ut ? n.ot - t.ot : n.ut - t.ut;
                          }),
                          n
                        );
                      })(
                        _(
                          e.concat(
                            (function r(n, t) {
                              for (var e = []; t; ) {
                                var r = n.get(t);
                                r && e.push(r), (t = t.parentElement);
                              }
                              return e;
                            })(t, n)
                          )
                        ).filter(function (t) {
                          return (function e(n, t) {
                            return n.matches(t);
                          })(n, t.selector);
                        })
                      );
                    })(n, this.bt, this.yt)
                  );
                  e.innerHTML = P(t.it, r);
                }
              }
            }),
            (n.prototype.Mt = function () {
              (function n(t) {
                var e = L(_(t));
                t.forEach(function (n) {
                  n.ft && (n.ct.innerHTML = P(n.it, e));
                });
              })(this.yt);
            }),
            (n.prototype.Ot = function (n, t, e) {
              var r = this.gt.get(t);
              return r || (((r = q(n)).Et = e), this.gt.set(t, r)), r;
            }),
            n
          );
        })(),
        On = void 0,
        En = !(function Cn(n) {
          return !!(
            n.CSS &&
            n.CSS.supports &&
            n.CSS.supports("color", "var(--c)")
          );
        })(n);
      n.location.search.indexOf("cssvars=false") > 0 && (En = !0),
        En && (On = new jn(n, t)),
        (function xn(n, t, e, r, i, u, o) {
          function a(n, t) {
            if (!e.customElements.get(n.t)) {
              (N[n.t] = !0), A(T, (g[n.t] = n), t.prototype, u);
              var r = [];
              for (var i in n.L) n.L[i].z && r.push(n.L[i].z);
              (t.observedAttributes = r), e.customElements.define(n.t, t);
            }
          }
          function s(n, t) {
            return (
              t && k.delete(n.replace(/^\.\//, "")),
              null == n ? null : k.get(n.replace(/^\.\//, ""))
            );
          }
          function v(n) {
            return "exports" === n || "require" === n || !!s(n);
          }
          function d(n, t, e) {
            var r = {};
            try {
              e.apply(
                null,
                t.map(function (n) {
                  return "exports" === n ? r : "require" === n ? h : s(n);
                })
              );
            } catch (n) {}
            void 0 !== n &&
              (k.set(n, r),
              n &&
                !n.endsWith(".js") &&
                Object.keys(r).forEach(function (n) {
                  for (
                    var t = n.replace(/-/g, "").toLowerCase(),
                      e = Object.keys(g),
                      i = 0;
                    i < e.length;
                    i++
                  )
                    if (e[i].replace(/-/g, "").toLowerCase() === t) {
                      var u = g[e[i]];
                      u &&
                        ((u.j = r[n]),
                        f(0, u, u.encapsulation, u.j.style, u.j.styleMode));
                      break;
                    }
                }));
          }
          function h(n, t) {
            m(void 0, n, t);
          }
          function m(n, t, e) {
            var r = t.filter(function (n) {
              return !v(n);
            });
            r.forEach(function (n) {
              y(i + n.replace(".js", ".es5.js"));
            }),
              w.push([n, t, e]),
              0 === r.length &&
                (function u() {
                  for (var n = w.length - 1; n >= 0; n--) {
                    var t = w[n],
                      e = t[0],
                      r = t[1],
                      i = t[2];
                    r.every(v) && !v(e) && (w.splice(n, 1), d(e, r, i));
                  }
                })();
          }
          function b(n, t, e) {
            var r = 2 === n.encapsulation || (1 === n.encapsulation && !x.W),
              u = i + t + (r ? ".sc" : "") + ".es5.js";
            e && (u += "?s-hmr=" + e), y(u);
          }
          function y(n) {
            function t() {
              clearTimeout(e),
                (r.onerror = r.onload = null),
                x.on(r),
                M.delete(n);
            }
            var e, r;
            M.has(n) ||
              (M.add(n),
              ((r = x.tn("script")).charset = "utf-8"),
              (r.async = !0),
              (r.src = n),
              (e = setTimeout(t, 12e4)),
              (r.onerror = r.onload = t),
              x.en(x.Ct, r));
          }
          var g = { html: {} },
            w = [],
            k = new Map(),
            M = new Set(),
            $ = {},
            O = (e[n] = e[n] || {}),
            x = (function W(n, t, e) {
              n.xt ||
                ((n.xt = function (n, t, e, r) {
                  return n.addEventListener(t, e, r);
                }),
                (n.At = function (n, t, e, r) {
                  return n.removeEventListener(t, e, r);
                }));
              var r = new WeakMap(),
                i = {
                  St: e.documentElement,
                  Ct: e.head,
                  Bn: e.body,
                  Wt: !1,
                  pn: function (n) {
                    return n.nodeType;
                  },
                  tn: function (n) {
                    return e.createElement(n);
                  },
                  nn: function (n, t) {
                    return e.createElementNS(n, t);
                  },
                  V: function (n) {
                    return e.createTextNode(n);
                  },
                  rn: function (n) {
                    return e.createComment(n);
                  },
                  fn: function (n, t, e) {
                    return n.insertBefore(t, e);
                  },
                  on: function (n) {
                    return n.remove();
                  },
                  en: function (n, t) {
                    return n.appendChild(t);
                  },
                  un: function (n) {
                    return n.childNodes;
                  },
                  cn: function (n) {
                    return n.parentNode;
                  },
                  vn: function (n) {
                    return n.nextSibling;
                  },
                  bn: function (n) {
                    return n.previousSibling;
                  },
                  an: function (n) {
                    return G(n.nodeName);
                  },
                  yn: function (n) {
                    return n.textContent;
                  },
                  ln: function (n, t) {
                    return (n.textContent = t);
                  },
                  dn: function (n, t) {
                    return n.getAttribute(t);
                  },
                  T: function (n, t, e) {
                    return n.setAttribute(t, e);
                  },
                  Nt: function (n, t, e, r) {
                    return n.setAttributeNS(t, e, r);
                  },
                  K: function (n, t) {
                    return n.removeAttribute(t);
                  },
                  Z: function (n, t) {
                    return n.hasAttribute(t);
                  },
                  Sn: function (t) {
                    return t.getAttribute("mode") || (n.Context || {}).mode;
                  },
                  Pt: function (n, r) {
                    return "child" === r
                      ? n.firstElementChild
                      : "parent" === r
                      ? i.sn(n)
                      : "body" === r
                      ? i.Bn
                      : "document" === r
                      ? e
                      : "window" === r
                      ? t
                      : n;
                  },
                  Q: function (t, e, u, o, f, c, a, s) {
                    var l = e,
                      v = t,
                      p = r.get(t);
                    if (
                      (p && p[l] && p[l](),
                      "string" == typeof c
                        ? (v = i.Pt(t, c))
                        : "object" == typeof c
                        ? (v = c)
                        : (s = e.split(":")).length > 1 &&
                          ((v = i.Pt(t, s[0])), (e = s[1])),
                      v)
                    ) {
                      var d = u;
                      (s = e.split(".")).length > 1 &&
                        ((e = s[0]),
                        (d = function (n) {
                          n.keyCode === Q[s[1]] && u(n);
                        })),
                        (a = i.Wt ? { capture: !!o, passive: !!f } : !!o),
                        n.xt(v, e, d, a),
                        p || r.set(t, (p = {})),
                        (p[l] = function () {
                          v && n.At(v, e, d, a), (p[l] = null);
                        });
                    }
                  },
                  X: function (n, t) {
                    var e = r.get(n);
                    e &&
                      (t
                        ? e[t] && e[t]()
                        : Object.keys(e).forEach(function (n) {
                            e[n] && e[n]();
                          }));
                  },
                  Wn: function (n, t) {
                    return n.attachShadow(t);
                  },
                };
              (i.W = !!i.St.attachShadow),
                t.location.search.indexOf("shadow=false") > 0 && (i.W = !1),
                "function" != typeof t.CustomEvent &&
                  ((t.CustomEvent = function (n, t, r) {
                    return (
                      (r = e.createEvent("CustomEvent")).initCustomEvent(
                        n,
                        t.bubbles,
                        t.cancelable,
                        t.detail
                      ),
                      r
                    );
                  }),
                  (t.CustomEvent.prototype = t.Event.prototype)),
                (i.Tt = function (n, e, r) {
                  return n && n.dispatchEvent(new t.CustomEvent(e, r));
                });
              try {
                t.addEventListener(
                  "e",
                  null,
                  Object.defineProperty({}, "passive", {
                    get: function () {
                      return (i.Wt = !0);
                    },
                  })
                );
              } catch (n) {}
              return (
                (i.sn = function (n, t) {
                  return (t = i.cn(n)) && 11 === i.pn(t) ? t.host : t;
                }),
                i
              );
            })(O, e, r);
          x.W,
            (t.isServer = t.isPrerender = !(t.isClient = !0)),
            (t.window = e),
            (t.location = e.location),
            (t.document = r),
            (t.resourcesUrl = t.publicPath = i),
            (t.enableListener = function (n, t, e, r, i) {
              return (function u(n, t, e, r, i, o) {
                if (t) {
                  var f = n.k.get(t),
                    c = n.O(f);
                  if (c && c.jn)
                    if (r) {
                      var a = c.jn.find(function (n) {
                        return n.e === e;
                      });
                      a &&
                        n.N.Q(
                          f,
                          e,
                          function (n) {
                            return t[a.r](n);
                          },
                          a.o,
                          void 0 === o ? a.u : !!o,
                          i
                        );
                    } else n.N.X(f, e);
                }
              })(T, n, t, e, r, i);
            }),
            (t.emit = function (n, e, r) {
              return x.Tt(n, t.eventNameFn ? t.eventNameFn(e) : e, r);
            }),
            (O.h = l),
            (O.Context = t);
          var N =
              (e["s-defined"] =
              e.$definedCmps =
                e["s-defined"] || e.$definedCmps || {}),
            P = 0,
            T = {
              N: x,
              Rt: a,
              C: t.emit,
              _: o,
              O: function (n) {
                return g[x.an(n)];
              },
              U: function (n) {
                return t[n];
              },
              isClient: !0,
              Ln: function (n) {
                return !(!N[x.an(n)] && !T.O(n));
              },
              A: function (n, t, e) {},
              Rn: function () {
                return n + P++;
              },
              H: function (n) {
                return (function t(n, e, r) {
                  return {
                    create: S(n, e, r, "create"),
                    componentOnReady: S(n, e, r, "componentOnReady"),
                  };
                })(x, $, n);
              },
              queue: (t.queue = (function R(n, t) {
                function e(n) {
                  for (var t = 0; t < n.length; t++)
                    try {
                      n[t]();
                    } catch (n) {}
                  n.length = 0;
                }
                function r(n, t) {
                  for (var e = 0; e < n.length && u() < t; )
                    try {
                      n[e++]();
                    } catch (n) {}
                  e === n.length ? (n.length = 0) : 0 !== e && n.splice(0, e);
                }
                function i() {
                  l++, e(c);
                  var t = u() + 7 * Math.ceil(l * (1 / 22));
                  r(a, t),
                    r(s, t),
                    a.length > 0 && (s.push.apply(s, a), (a.length = 0)),
                    (v = c.length + a.length + s.length > 0)
                      ? n.raf(i)
                      : (l = 0);
                }
                var u = function () {
                    return t.performance.now();
                  },
                  o = Promise.resolve(),
                  f = [],
                  c = [],
                  a = [],
                  s = [],
                  l = 0,
                  v = !1;
                return (
                  n.raf || (n.raf = t.requestAnimationFrame.bind(t)),
                  {
                    tick: function (n) {
                      f.push(n),
                        1 === f.length &&
                          o.then(function () {
                            return e(f);
                          });
                    },
                    read: function (t) {
                      c.push(t), v || ((v = !0), n.raf(i));
                    },
                    write: function (t) {
                      a.push(t), v || ((v = !0), n.raf(i));
                    },
                  }
                );
              })(O, e)),
              _n: function L(n, t, e) {
                var r = "string" == typeof n.xn ? n.xn : n.xn[t.mode];
                s(r, e)
                  ? p(T, t)
                  : (w.push([
                      void 0,
                      [r],
                      function () {
                        p(T, t);
                      },
                    ]),
                    o && q
                      ? q.push(function () {
                          return b(n, r, e);
                        })
                      : b(n, r, e));
              },
              f: new WeakMap(),
              Lt: new WeakMap(),
              Tn: new WeakMap(),
              Pn: new WeakMap(),
              In: new WeakMap(),
              k: new WeakMap(),
              S: new WeakMap(),
              w: new WeakMap(),
              g: new WeakMap(),
              b: new WeakMap(),
              Dn: new WeakMap(),
              x: new WeakMap(),
              I: new WeakMap(),
              M: new WeakMap(),
            };
          T.render = j(T, x);
          var I = x.St;
          (I["s-ld"] = []),
            (I["s-rn"] = !0),
            (I["s-init"] = function () {
              T.In.set(I, (O.loaded = T.y = !0)),
                x.Tt(e, "appload", { detail: { namespace: n } });
            }),
            (function _(n, t, e) {
              var r,
                i,
                u,
                o,
                f,
                c,
                a = e.querySelectorAll("[" + F + "]"),
                s = a.length;
              if (s > 0)
                for (n.In.set(e, !0), o = 0; o < s; o++)
                  for (
                    r = a[o],
                      i = t.dn(r, F),
                      (u = {}).a = t.an((u.d = r)),
                      n.I.set(r, u),
                      f = 0,
                      c = r.childNodes.length;
                    f < c;
                    f++
                  )
                    E(t, r.childNodes[f], u, i, !0);
            })(T, x, I),
            (O.loadBundle = m);
          var q = [];
          o &&
            o.wt().then(function () {
              for (; q.length; ) q.shift()();
              q = null;
            }),
            (T.P = function (n, t, e, r) {
              (function i(n, t, e, r) {
                var i = e.encapsulation;
                (2 === i || (1 === i && !n.N.W)) &&
                  (r["s-sc"] = (function u(n, t) {
                    var e = "data-" + n.t;
                    return t && t !== Y ? e + "-" + t : e;
                  })(e, r.mode));
                var o = e.t + r.mode,
                  f = e[o];
                if ((f || (f = e[(o = e.t + Y)]), f)) {
                  var c = t.Ct;
                  if (t.W)
                    if (1 === i) c = r.shadowRoot;
                    else
                      for (var a = r; (a = t.cn(a)); )
                        if (a.host && a.host.shadowRoot) {
                          c = a.host.shadowRoot;
                          break;
                        }
                  var s = n.Lt.get(c);
                  if ((s || n.Lt.set(c, (s = {})), !s[o])) {
                    var l = void 0;
                    if (
                      (n._
                        ? (l = n._.jt(r, o, f))
                        : (((l = t.tn("style")).innerHTML = f), (s[o] = !0)),
                      l)
                    ) {
                      t.T(l, "data-style-tag", e.t),
                        r.mode && t.T(l, "data-style-mode", e.t),
                        r["s-sc"] && t.T(l, "data-style-scoped", "true");
                      var v = c.querySelectorAll("[data-styles]");
                      t.fn(
                        c,
                        l,
                        (v.length && v[v.length - 1].nextSibling) ||
                          c.firstChild
                      );
                    }
                  }
                }
              })(n, t, e, r);
            }),
            (function D(n, t, e, r) {
              var i = (e.It = e.It || {});
              return (
                (i._t = i._t || []),
                i._t.push(
                  (function u(n, t, e) {
                    return {
                      namespace: t,
                      qt: function (n) {
                        return n && n.tagName
                          ? Promise.all([
                              C(e, n.tagName),
                              (function t(n, e) {
                                return Promise.resolve(n.w.get(e));
                              })(e, n),
                            ]).then(function (n) {
                              return n[0] && n[1]
                                ? { Dt: n[0], Ut: n[1] }
                                : null;
                            })
                          : Promise.resolve(null);
                      },
                      Bt: function (n) {
                        return C(e, n);
                      },
                      Ht: function () {
                        return Promise.all(
                          n.components.map(function (n) {
                            return C(e, n[0]);
                          })
                        ).then(function (n) {
                          return n.filter(function (n) {
                            return n;
                          });
                        });
                      },
                    };
                  })(n, t, r)
                ),
                i.qt ||
                  (i.qt = function (n) {
                    return Promise.all(
                      i._t.map(function (t) {
                        return t.qt(n);
                      })
                    ).then(function (n) {
                      return n.find(function (n) {
                        return !!n;
                      });
                    });
                  }),
                i.Ht ||
                  (i.Ht = function () {
                    var n = [];
                    return (
                      i._t.forEach(function (t) {
                        n.push(t.Ht());
                      }),
                      Promise.all(n).then(function (n) {
                        var t = [];
                        return (
                          n.forEach(function (n) {
                            n.forEach(function (n) {
                              t.push(n);
                            });
                          }),
                          t
                        );
                      })
                    );
                  }),
                i
              );
            })(O, n, e, T),
            (O.components || [])
              .map(function (n) {
                var t = (function e(n, t, r) {
                  var i = { t: n[0], L: { color: { z: "color" } } };
                  i.xn = n[1];
                  var u = n[3];
                  if (u)
                    for (t = 0; t < u.length; t++)
                      (r = u[t]),
                        (i.L[r[0]] = {
                          Un: r[1],
                          F: !!r[2],
                          z: "string" == typeof r[3] ? r[3] : r[3] ? r[0] : 0,
                          Y: r[4],
                        });
                  return (
                    (i.encapsulation = n[4]), n[5] && (i.jn = n[5].map(c)), i
                  );
                })(n);
                return (g[t.t] = t);
              })
              .forEach(function (n) {
                function t(n) {
                  return HTMLElement.call(this, n);
                }
                (t.prototype = Object.create(HTMLElement.prototype, {
                  constructor: { value: t, configurable: !0 },
                })),
                  a(n, t);
              }),
            (function U(n, t, e, r, i, u) {
              if (
                ((t.componentOnReady = function (t, e) {
                  if (!t.nodeName.includes("-")) return e(null), !1;
                  var r = n.O(t);
                  if (r)
                    if (n.In.has(t)) e(t);
                    else {
                      var i = n.Dn.get(t) || [];
                      i.push(e), n.Dn.set(t, i);
                    }
                  return !!r;
                }),
                i)
              ) {
                for (u = i.length - 1; u >= 0; u--)
                  t.componentOnReady(i[u][0], i[u][1]) && i.splice(u, 1);
                for (u = 0; u < r.length; u++)
                  if (!e[r[u]].componentOnReady) return;
                for (u = 0; u < i.length; u++) i[u][1](null);
                i.length = 0;
              }
            })(T, O, e, e["s-apps"], e["s-cr"]),
            (O.initialized = !0);
        })(r, e, n, t, resourcesUrl, hydratedCssClass, On);
    })(window, document, Context, namespace);
})({}, "ionicons", "hydrated");
