package defpackage;

import androidx.compose.ui.spatial.RectListKt;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public enum kx8 {
    Data { // from class: kx8.k
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cX = ea1Var.X();
            if (cX == 0) {
                jx8Var.m(this);
                jx8Var.f(ea1Var.p());
            } else {
                if (cX == '&') {
                    jx8Var.a(kx8.CharacterReferenceInData);
                    return;
                }
                if (cX == '<') {
                    jx8Var.a(kx8.TagOpen);
                } else if (cX != 65535) {
                    jx8Var.h(ea1Var.v());
                } else {
                    jx8Var.g(new gx8.e());
                }
            }
        }
    },
    CharacterReferenceInData { // from class: kx8.v
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            kx8 kx8Var = kx8.Data;
            int[] iArrC = jx8Var.c(null, false);
            if (iArrC == null) {
                jx8Var.f('&');
            } else {
                jx8Var.h(new String(iArrC, 0, iArrC.length));
            }
            jx8Var.o(kx8Var);
        }
    },
    Rcdata { // from class: kx8.g0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cX = ea1Var.X();
            if (cX == 0) {
                jx8Var.m(this);
                ea1Var.m();
                jx8Var.f(kx8.replacementChar);
            } else {
                if (cX == '&') {
                    jx8Var.a(kx8.CharacterReferenceInRcdata);
                    return;
                }
                if (cX == '<') {
                    jx8Var.a(kx8.RcdataLessthanSign);
                } else if (cX != 65535) {
                    jx8Var.h(ea1Var.v());
                } else {
                    jx8Var.g(new gx8.e());
                }
            }
        }
    },
    CharacterReferenceInRcdata { // from class: kx8.r0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            kx8 kx8Var = kx8.Rcdata;
            int[] iArrC = jx8Var.c(null, false);
            if (iArrC == null) {
                jx8Var.f('&');
            } else {
                jx8Var.h(new String(iArrC, 0, iArrC.length));
            }
            jx8Var.o(kx8Var);
        }
    },
    Rawtext { // from class: kx8.c1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            kx8.g(jx8Var, ea1Var, this, kx8.RawtextLessthanSign);
        }
    },
    ScriptData { // from class: kx8.n1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            kx8.g(jx8Var, ea1Var, this, kx8.ScriptDataLessthanSign);
        }
    },
    PLAINTEXT { // from class: kx8.o1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cX = ea1Var.X();
            if (cX == 0) {
                jx8Var.m(this);
                ea1Var.m();
                jx8Var.f(kx8.replacementChar);
            } else if (cX != 65535) {
                jx8Var.h(ea1Var.P(kx8.nullChar));
            } else {
                jx8Var.g(new gx8.e());
            }
        }
    },
    TagOpen { // from class: kx8.p1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cX = ea1Var.X();
            if (cX == '!') {
                jx8Var.a(kx8.MarkupDeclarationOpen);
                return;
            }
            if (cX == '/') {
                jx8Var.a(kx8.EndTagOpen);
                return;
            }
            if (cX == '?') {
                if (jx8Var.g == org.jsoup.nodes.f.a.EnumC0312a.xml) {
                    jx8Var.a(kx8.MarkupProcessingOpen);
                    return;
                } else {
                    jx8Var.m.f();
                    jx8Var.o(kx8.BogusComment);
                    return;
                }
            }
            if (ea1Var.u0()) {
                jx8Var.d(true);
                jx8Var.o(kx8.TagName);
            } else {
                jx8Var.m(this);
                jx8Var.f('<');
                jx8Var.o(kx8.Data);
            }
        }
    },
    EndTagOpen { // from class: kx8.q1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (ea1Var.Z()) {
                jx8Var.l(this);
                jx8Var.h("</");
                jx8Var.o(kx8.Data);
            } else if (ea1Var.u0()) {
                jx8Var.d(false);
                jx8Var.o(kx8.TagName);
            } else {
                if (ea1Var.q0('>')) {
                    jx8Var.m(this);
                    jx8Var.a(kx8.Data);
                    return;
                }
                jx8Var.m(this);
                gx8.c cVar = jx8Var.m;
                cVar.f();
                cVar.g('/');
                jx8Var.o(kx8.BogusComment);
            }
        }
    },
    TagName { // from class: kx8.a
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            jx8Var.j.i(ea1Var.E(new cc(3)));
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.j.i(kx8.replacementStr);
                return;
            }
            if (cP != ' ') {
                if (cP == '/') {
                    jx8Var.o(kx8.SelfClosingStartTag);
                    return;
                }
                if (cP == '>') {
                    jx8Var.k();
                    jx8Var.o(kx8.Data);
                    return;
                } else if (cP == 65535) {
                    jx8Var.l(this);
                    jx8Var.o(kx8.Data);
                    return;
                } else if (cP != '\t' && cP != '\n' && cP != '\f' && cP != '\r') {
                    jx8Var.j.i(String.valueOf(cP));
                    return;
                }
            }
            jx8Var.o(kx8.BeforeAttributeName);
        }
    },
    RcdataLessthanSign { // from class: kx8.b
        /* JADX WARN: Code duplicated, block: B:23:0x004b  */
        /* JADX WARN: Code duplicated, block: B:25:0x0059  */
        /* JADX WARN: Code duplicated, block: B:26:0x005f  */
        /* JADX WARN: Code duplicated, block: B:29:0x006a  */
        /* JADX WARN: Code duplicated, block: B:31:0x006d  */
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            Locale locale;
            int iY0;
            if (ea1Var.q0('/')) {
                jx8Var.e();
                jx8Var.a(kx8.RCDATAEndTagOpen);
                return;
            }
            if (ea1Var.j && ea1Var.u0() && jx8Var.o != null) {
                String str = jx8Var.p;
                if (str == null) {
                    str = "</" + jx8Var.o;
                    jx8Var.p = str;
                }
                boolean z = true;
                if (str.equals(ea1Var.m)) {
                    int i = ea1Var.n;
                    if (i == -1) {
                        z = false;
                    } else if (i < ea1Var.e) {
                        ea1Var.m = str;
                        locale = Locale.ENGLISH;
                        iY0 = ea1Var.y0(str.toLowerCase(locale));
                        if (iY0 > -1) {
                            ea1Var.n = ea1Var.e + iY0;
                        } else {
                            int iY1 = ea1Var.y0(str.toUpperCase(locale));
                            if (iY1 > -1) {
                            }
                            ea1Var.n = z ? ea1Var.e + iY1 : -1;
                        }
                    }
                } else {
                    ea1Var.m = str;
                    locale = Locale.ENGLISH;
                    iY0 = ea1Var.y0(str.toLowerCase(locale));
                    if (iY0 > -1) {
                        ea1Var.n = ea1Var.e + iY0;
                    } else {
                        int iY2 = ea1Var.y0(str.toUpperCase(locale));
                        z = iY2 > -1;
                        ea1Var.n = z ? ea1Var.e + iY2 : -1;
                    }
                }
                if (!z) {
                    gx8.h hVarD = jx8Var.d(false);
                    hVarD.j(jx8Var.o);
                    jx8Var.j = hVarD;
                    jx8Var.k();
                    jx8Var.o(kx8.TagOpen);
                    return;
                }
            }
            jx8Var.f('<');
            jx8Var.o(kx8.Rcdata);
        }
    },
    RCDATAEndTagOpen { // from class: kx8.c
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (!ea1Var.u0()) {
                jx8Var.h("</");
                jx8Var.o(kx8.Rcdata);
            } else {
                jx8Var.d(false);
                jx8Var.j.i(String.valueOf(ea1Var.X()));
                jx8Var.f.a(ea1Var.X());
                jx8Var.a(kx8.RCDATAEndTagName);
            }
        }
    },
    RCDATAEndTagName { // from class: kx8.d
        public static void i(jx8 jx8Var, ea1 ea1Var) {
            jx8Var.h("</");
            jx8Var.h(jx8Var.f.e());
            ea1Var.C0();
            jx8Var.o(kx8.Rcdata);
        }

        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (ea1Var.u0()) {
                String strE = ea1Var.E(new cc(3));
                jx8Var.j.i(strE);
                jx8Var.f.b(strE);
                return;
            }
            char cP = ea1Var.p();
            if (cP == '\t' || cP == '\n' || cP == '\f' || cP == '\r' || cP == ' ') {
                if (jx8Var.n()) {
                    jx8Var.o(kx8.BeforeAttributeName);
                    return;
                } else {
                    i(jx8Var, ea1Var);
                    return;
                }
            }
            if (cP == '/') {
                if (jx8Var.n()) {
                    jx8Var.o(kx8.SelfClosingStartTag);
                    return;
                } else {
                    i(jx8Var, ea1Var);
                    return;
                }
            }
            if (cP != '>') {
                i(jx8Var, ea1Var);
            } else if (!jx8Var.n()) {
                i(jx8Var, ea1Var);
            } else {
                jx8Var.k();
                jx8Var.o(kx8.Data);
            }
        }
    },
    RawtextLessthanSign { // from class: kx8.e
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (ea1Var.q0('/')) {
                jx8Var.e();
                jx8Var.a(kx8.RawtextEndTagOpen);
            } else {
                jx8Var.f('<');
                jx8Var.o(kx8.Rawtext);
            }
        }
    },
    RawtextEndTagOpen { // from class: kx8.f
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            kx8 kx8Var = kx8.RawtextEndTagName;
            kx8 kx8Var2 = kx8.Rawtext;
            if (ea1Var.u0()) {
                jx8Var.d(false);
                jx8Var.o(kx8Var);
            } else {
                jx8Var.h("</");
                jx8Var.o(kx8Var2);
            }
        }
    },
    RawtextEndTagName { // from class: kx8.g
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            kx8.e(jx8Var, ea1Var, kx8.Rawtext);
        }
    },
    ScriptDataLessthanSign { // from class: kx8.h
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == '!') {
                jx8Var.h("<!");
                jx8Var.o(kx8.ScriptDataEscapeStart);
                return;
            }
            if (cP == '/') {
                jx8Var.e();
                jx8Var.o(kx8.ScriptDataEndTagOpen);
            } else if (cP != 65535) {
                jx8Var.f('<');
                ea1Var.C0();
                jx8Var.o(kx8.ScriptData);
            } else {
                jx8Var.f('<');
                jx8Var.l(this);
                jx8Var.o(kx8.Data);
            }
        }
    },
    ScriptDataEndTagOpen { // from class: kx8.i
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            kx8 kx8Var = kx8.ScriptDataEndTagName;
            kx8 kx8Var2 = kx8.ScriptData;
            if (ea1Var.u0()) {
                jx8Var.d(false);
                jx8Var.o(kx8Var);
            } else {
                jx8Var.h("</");
                jx8Var.o(kx8Var2);
            }
        }
    },
    ScriptDataEndTagName { // from class: kx8.j
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            kx8.e(jx8Var, ea1Var, kx8.ScriptData);
        }
    },
    ScriptDataEscapeStart { // from class: kx8.l
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (!ea1Var.q0('-')) {
                jx8Var.o(kx8.ScriptData);
            } else {
                jx8Var.f('-');
                jx8Var.a(kx8.ScriptDataEscapeStartDash);
            }
        }
    },
    ScriptDataEscapeStartDash { // from class: kx8.m
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (!ea1Var.q0('-')) {
                jx8Var.o(kx8.ScriptData);
            } else {
                jx8Var.f('-');
                jx8Var.a(kx8.ScriptDataEscapedDashDash);
            }
        }
    },
    ScriptDataEscaped { // from class: kx8.n
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (ea1Var.Z()) {
                jx8Var.l(this);
                jx8Var.o(kx8.Data);
                return;
            }
            char cX = ea1Var.X();
            if (cX == 0) {
                jx8Var.m(this);
                ea1Var.m();
                jx8Var.f(kx8.replacementChar);
            } else if (cX == '-') {
                jx8Var.f('-');
                jx8Var.a(kx8.ScriptDataEscapedDash);
            } else if (cX != '<') {
                jx8Var.h(ea1Var.Q('-', '<', kx8.nullChar));
            } else {
                jx8Var.a(kx8.ScriptDataEscapedLessthanSign);
            }
        }
    },
    ScriptDataEscapedDash { // from class: kx8.o
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (ea1Var.Z()) {
                jx8Var.l(this);
                jx8Var.o(kx8.Data);
                return;
            }
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                jx8Var.f(kx8.replacementChar);
                jx8Var.o(kx8.ScriptDataEscaped);
            } else if (cP == '-') {
                jx8Var.f(cP);
                jx8Var.o(kx8.ScriptDataEscapedDashDash);
            } else if (cP == '<') {
                jx8Var.o(kx8.ScriptDataEscapedLessthanSign);
            } else {
                jx8Var.f(cP);
                jx8Var.o(kx8.ScriptDataEscaped);
            }
        }
    },
    ScriptDataEscapedDashDash { // from class: kx8.p
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (ea1Var.Z()) {
                jx8Var.l(this);
                jx8Var.o(kx8.Data);
                return;
            }
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                jx8Var.f(kx8.replacementChar);
                jx8Var.o(kx8.ScriptDataEscaped);
            } else {
                if (cP == '-') {
                    jx8Var.f(cP);
                    return;
                }
                if (cP == '<') {
                    jx8Var.o(kx8.ScriptDataEscapedLessthanSign);
                } else if (cP != '>') {
                    jx8Var.f(cP);
                    jx8Var.o(kx8.ScriptDataEscaped);
                } else {
                    jx8Var.f(cP);
                    jx8Var.o(kx8.ScriptData);
                }
            }
        }
    },
    ScriptDataEscapedLessthanSign { // from class: kx8.q
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (ea1Var.u0()) {
                jx8Var.e();
                jx8Var.f.a(ea1Var.X());
                jx8Var.f('<');
                jx8Var.f(ea1Var.X());
                jx8Var.a(kx8.ScriptDataDoubleEscapeStart);
                return;
            }
            if (ea1Var.q0('/')) {
                jx8Var.e();
                jx8Var.a(kx8.ScriptDataEscapedEndTagOpen);
            } else {
                jx8Var.f('<');
                jx8Var.o(kx8.ScriptDataEscaped);
            }
        }
    },
    ScriptDataEscapedEndTagOpen { // from class: kx8.r
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (!ea1Var.u0()) {
                jx8Var.h("</");
                jx8Var.o(kx8.ScriptDataEscaped);
            } else {
                jx8Var.d(false);
                jx8Var.j.i(String.valueOf(ea1Var.X()));
                jx8Var.f.a(ea1Var.X());
                jx8Var.a(kx8.ScriptDataEscapedEndTagName);
            }
        }
    },
    ScriptDataEscapedEndTagName { // from class: kx8.s
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            kx8.e(jx8Var, ea1Var, kx8.ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscapeStart { // from class: kx8.t
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            kx8.d(jx8Var, ea1Var, kx8.ScriptDataDoubleEscaped, kx8.ScriptDataEscaped);
        }
    },
    ScriptDataDoubleEscaped { // from class: kx8.u
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cX = ea1Var.X();
            if (cX == 0) {
                jx8Var.m(this);
                ea1Var.m();
                jx8Var.f(kx8.replacementChar);
            } else if (cX == '-') {
                jx8Var.f(cX);
                jx8Var.a(kx8.ScriptDataDoubleEscapedDash);
            } else if (cX == '<') {
                jx8Var.f(cX);
                jx8Var.a(kx8.ScriptDataDoubleEscapedLessthanSign);
            } else if (cX != 65535) {
                jx8Var.h(ea1Var.Q('-', '<', kx8.nullChar));
            } else {
                jx8Var.l(this);
                jx8Var.o(kx8.Data);
            }
        }
    },
    ScriptDataDoubleEscapedDash { // from class: kx8.w
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                jx8Var.f(kx8.replacementChar);
                jx8Var.o(kx8.ScriptDataDoubleEscaped);
            } else if (cP == '-') {
                jx8Var.f(cP);
                jx8Var.o(kx8.ScriptDataDoubleEscapedDashDash);
            } else if (cP == '<') {
                jx8Var.f(cP);
                jx8Var.o(kx8.ScriptDataDoubleEscapedLessthanSign);
            } else if (cP != 65535) {
                jx8Var.f(cP);
                jx8Var.o(kx8.ScriptDataDoubleEscaped);
            } else {
                jx8Var.l(this);
                jx8Var.o(kx8.Data);
            }
        }
    },
    ScriptDataDoubleEscapedDashDash { // from class: kx8.x
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                jx8Var.f(kx8.replacementChar);
                jx8Var.o(kx8.ScriptDataDoubleEscaped);
                return;
            }
            if (cP == '-') {
                jx8Var.f(cP);
                return;
            }
            if (cP == '<') {
                jx8Var.f(cP);
                jx8Var.o(kx8.ScriptDataDoubleEscapedLessthanSign);
            } else if (cP == '>') {
                jx8Var.f(cP);
                jx8Var.o(kx8.ScriptData);
            } else if (cP != 65535) {
                jx8Var.f(cP);
                jx8Var.o(kx8.ScriptDataDoubleEscaped);
            } else {
                jx8Var.l(this);
                jx8Var.o(kx8.Data);
            }
        }
    },
    ScriptDataDoubleEscapedLessthanSign { // from class: kx8.y
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (!ea1Var.q0('/')) {
                jx8Var.o(kx8.ScriptDataDoubleEscaped);
                return;
            }
            jx8Var.f('/');
            jx8Var.e();
            jx8Var.a(kx8.ScriptDataDoubleEscapeEnd);
        }
    },
    ScriptDataDoubleEscapeEnd { // from class: kx8.z
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            kx8.d(jx8Var, ea1Var, kx8.ScriptDataEscaped, kx8.ScriptDataDoubleEscaped);
        }
    },
    BeforeAttributeName { // from class: kx8.a0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == 0) {
                ea1Var.C0();
                jx8Var.m(this);
                jx8Var.j.k();
                jx8Var.o(kx8.AttributeName);
                return;
            }
            if (cP != ' ') {
                if (cP != '\"' && cP != '\'') {
                    if (cP == '/') {
                        jx8Var.o(kx8.SelfClosingStartTag);
                        return;
                    }
                    if (cP == 65535) {
                        jx8Var.l(this);
                        jx8Var.o(kx8.Data);
                        return;
                    }
                    if (cP == '\t' || cP == '\n' || cP == '\f' || cP == '\r') {
                        return;
                    }
                    switch (cP) {
                        case RectListKt.BitOffsetForGesturable /* 62 */:
                            jx8Var.k();
                            jx8Var.o(kx8.Data);
                            return;
                        case '?':
                            if (jx8Var.j instanceof gx8.j) {
                                return;
                            }
                            break;
                    }
                    jx8Var.j.k();
                    ea1Var.C0();
                    jx8Var.o(kx8.AttributeName);
                    return;
                }
                jx8Var.m(this);
                jx8Var.j.k();
                jx8Var.j.h.a(cP);
                jx8Var.o(kx8.AttributeName);
            }
        }
    },
    AttributeName { // from class: kx8.b0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            ea1Var.z0();
            String strU = ea1Var.U(kx8.attributeNameCharsSorted);
            gx8.h hVar = jx8Var.j;
            hVar.h.b(strU.replace(kx8.nullChar, kx8.replacementChar));
            char cP = ea1Var.p();
            if (cP == '\t' || cP == '\n' || cP == '\f' || cP == '\r' || cP == ' ') {
                jx8Var.o(kx8.AfterAttributeName);
                return;
            }
            if (cP != '\"' && cP != '\'') {
                if (cP == '/') {
                    jx8Var.o(kx8.SelfClosingStartTag);
                    return;
                }
                if (cP == 65535) {
                    jx8Var.l(this);
                    jx8Var.o(kx8.Data);
                    return;
                }
                switch (cP) {
                    case RectListKt.BitOffsetForFocusable /* 61 */:
                        jx8Var.o(kx8.BeforeAttributeValue);
                        return;
                    case RectListKt.BitOffsetForGesturable /* 62 */:
                        jx8Var.k();
                        jx8Var.o(kx8.Data);
                        return;
                    case '?':
                        if (jx8Var.g == org.jsoup.nodes.f.a.EnumC0312a.xml && (jx8Var.j instanceof gx8.j)) {
                            jx8Var.o(kx8.AfterAttributeName);
                            return;
                        }
                        break;
                }
                jx8Var.j.h.a(cP);
                return;
            }
            jx8Var.m(this);
            jx8Var.j.h.a(cP);
        }
    },
    AfterAttributeName { // from class: kx8.c0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                jx8Var.j.h.a(kx8.replacementChar);
                jx8Var.o(kx8.AttributeName);
                return;
            }
            if (cP != ' ') {
                if (cP != '\"' && cP != '\'') {
                    if (cP == '/') {
                        jx8Var.o(kx8.SelfClosingStartTag);
                        return;
                    }
                    if (cP == 65535) {
                        jx8Var.l(this);
                        jx8Var.o(kx8.Data);
                        return;
                    }
                    if (cP == '\t' || cP == '\n' || cP == '\f' || cP == '\r') {
                        return;
                    }
                    switch (cP) {
                        case '<':
                            break;
                        case RectListKt.BitOffsetForFocusable /* 61 */:
                            jx8Var.o(kx8.BeforeAttributeValue);
                            break;
                        case RectListKt.BitOffsetForGesturable /* 62 */:
                            jx8Var.k();
                            jx8Var.o(kx8.Data);
                            break;
                        default:
                            jx8Var.j.k();
                            ea1Var.C0();
                            jx8Var.o(kx8.AttributeName);
                            break;
                    }
                    return;
                }
                jx8Var.m(this);
                jx8Var.j.k();
                jx8Var.j.h.a(cP);
                jx8Var.o(kx8.AttributeName);
            }
        }
    },
    BeforeAttributeValue { // from class: kx8.d0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                jx8Var.j.g(ea1Var.z0() - 1, ea1Var.z0(), kx8.replacementChar);
                jx8Var.o(kx8.AttributeValue_unquoted);
                return;
            }
            if (cP != ' ') {
                if (cP == '\"') {
                    jx8Var.o(kx8.AttributeValue_doubleQuoted);
                    return;
                }
                if (cP != '`') {
                    if (cP == 65535) {
                        jx8Var.l(this);
                        jx8Var.k();
                        jx8Var.o(kx8.Data);
                        return;
                    }
                    if (cP == '\t' || cP == '\n' || cP == '\f' || cP == '\r') {
                        return;
                    }
                    if (cP == '&') {
                        ea1Var.C0();
                        jx8Var.o(kx8.AttributeValue_unquoted);
                        return;
                    }
                    if (cP == '\'') {
                        jx8Var.o(kx8.AttributeValue_singleQuoted);
                        return;
                    }
                    switch (cP) {
                        case '<':
                        case RectListKt.BitOffsetForFocusable /* 61 */:
                            break;
                        case RectListKt.BitOffsetForGesturable /* 62 */:
                            jx8Var.m(this);
                            jx8Var.k();
                            jx8Var.o(kx8.Data);
                            break;
                        default:
                            ea1Var.C0();
                            jx8Var.o(kx8.AttributeValue_unquoted);
                            break;
                    }
                    return;
                }
                jx8Var.m(this);
                jx8Var.j.g(ea1Var.z0() - 1, ea1Var.z0(), cP);
                jx8Var.o(kx8.AttributeValue_unquoted);
            }
        }
    },
    AttributeValue_doubleQuoted { // from class: kx8.e0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char c;
            ea1Var.z0();
            ea1Var.n();
            int i = ea1Var.e;
            int i2 = ea1Var.f;
            char[] cArr = ea1Var.d;
            int i3 = i;
            while (i3 < i2 && (c = cArr[i3]) != 0 && c != '&' && c != '\"') {
                i3++;
            }
            ea1Var.e = i3;
            String strO = i3 > i ? ea1.o(ea1Var.d, ea1Var.b, i, i3 - i) : "";
            if (strO.length() > 0) {
                jx8Var.j.i.b(strO);
            } else {
                jx8Var.j.j = true;
            }
            int iZ0 = ea1Var.z0();
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                jx8Var.j.g(iZ0, ea1Var.z0(), kx8.replacementChar);
                return;
            }
            if (cP == '\"') {
                jx8Var.o(kx8.AfterAttributeValue_quoted);
                return;
            }
            if (cP != '&') {
                if (cP != 65535) {
                    jx8Var.j.g(iZ0, ea1Var.z0(), cP);
                    return;
                } else {
                    jx8Var.l(this);
                    jx8Var.o(kx8.Data);
                    return;
                }
            }
            int[] iArrC = jx8Var.c('\"', true);
            gx8.h hVar = jx8Var.j;
            if (iArrC != null) {
                hVar.h(iArrC, iZ0, ea1Var.z0());
            } else {
                hVar.g(iZ0, ea1Var.z0(), '&');
            }
        }
    },
    AttributeValue_singleQuoted { // from class: kx8.f0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char c;
            ea1Var.z0();
            ea1Var.n();
            int i = ea1Var.e;
            int i2 = ea1Var.f;
            char[] cArr = ea1Var.d;
            int i3 = i;
            while (i3 < i2 && (c = cArr[i3]) != 0 && c != '&' && c != '\'') {
                i3++;
            }
            ea1Var.e = i3;
            String strO = i3 > i ? ea1.o(ea1Var.d, ea1Var.b, i, i3 - i) : "";
            if (strO.length() > 0) {
                jx8Var.j.i.b(strO);
            } else {
                jx8Var.j.j = true;
            }
            int iZ0 = ea1Var.z0();
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                jx8Var.j.g(iZ0, ea1Var.z0(), kx8.replacementChar);
                return;
            }
            if (cP == 65535) {
                jx8Var.l(this);
                jx8Var.o(kx8.Data);
                return;
            }
            if (cP != '&') {
                if (cP != '\'') {
                    jx8Var.j.g(iZ0, ea1Var.z0(), cP);
                    return;
                } else {
                    jx8Var.o(kx8.AfterAttributeValue_quoted);
                    return;
                }
            }
            int[] iArrC = jx8Var.c('\'', true);
            gx8.h hVar = jx8Var.j;
            if (iArrC != null) {
                hVar.h(iArrC, iZ0, ea1Var.z0());
            } else {
                hVar.g(iZ0, ea1Var.z0(), '&');
            }
        }
    },
    AttributeValue_unquoted { // from class: kx8.h0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            ea1Var.z0();
            String strU = ea1Var.U(kx8.attributeValueUnquoted);
            if (strU.length() > 0) {
                jx8Var.j.i.b(strU);
            }
            int iZ0 = ea1Var.z0();
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                jx8Var.j.g(iZ0, ea1Var.z0(), kx8.replacementChar);
                return;
            }
            if (cP != ' ') {
                if (cP != '\"' && cP != '`') {
                    if (cP == 65535) {
                        jx8Var.l(this);
                        jx8Var.o(kx8.Data);
                        return;
                    }
                    if (cP != '\t' && cP != '\n' && cP != '\f' && cP != '\r') {
                        if (cP == '&') {
                            int[] iArrC = jx8Var.c('>', true);
                            gx8.h hVar = jx8Var.j;
                            if (iArrC != null) {
                                hVar.h(iArrC, iZ0, ea1Var.z0());
                                return;
                            } else {
                                hVar.g(iZ0, ea1Var.z0(), '&');
                                return;
                            }
                        }
                        if (cP != '\'') {
                            switch (cP) {
                                case '<':
                                case RectListKt.BitOffsetForFocusable /* 61 */:
                                    break;
                                case RectListKt.BitOffsetForGesturable /* 62 */:
                                    jx8Var.k();
                                    jx8Var.o(kx8.Data);
                                    break;
                                default:
                                    jx8Var.j.g(iZ0, ea1Var.z0(), cP);
                                    break;
                            }
                            return;
                        }
                    }
                }
                jx8Var.m(this);
                jx8Var.j.g(iZ0, ea1Var.z0(), cP);
                return;
            }
            jx8Var.o(kx8.BeforeAttributeName);
        }
    },
    AfterAttributeValue_quoted { // from class: kx8.i0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == '\t' || cP == '\n' || cP == '\f' || cP == '\r' || cP == ' ') {
                jx8Var.o(kx8.BeforeAttributeName);
                return;
            }
            if (cP == '/') {
                jx8Var.o(kx8.SelfClosingStartTag);
                return;
            }
            if (cP == 65535) {
                jx8Var.l(this);
                jx8Var.o(kx8.Data);
            } else if (cP == '>') {
                jx8Var.k();
                jx8Var.o(kx8.Data);
            } else {
                if (cP == '?' && (jx8Var.j instanceof gx8.j)) {
                    return;
                }
                ea1Var.C0();
                jx8Var.m(this);
                jx8Var.o(kx8.BeforeAttributeName);
            }
        }
    },
    SelfClosingStartTag { // from class: kx8.j0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == '>') {
                jx8Var.j.f = true;
                jx8Var.k();
                jx8Var.o(kx8.Data);
            } else if (cP == 65535) {
                jx8Var.l(this);
                jx8Var.o(kx8.Data);
            } else {
                ea1Var.C0();
                jx8Var.m(this);
                jx8Var.o(kx8.BeforeAttributeName);
            }
        }
    },
    BogusComment { // from class: kx8.k0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            gx8.c cVar = jx8Var.m;
            cVar.d.b(ea1Var.P('>'));
            char cX = ea1Var.X();
            if (cX == '>' || cX == 65535) {
                ea1Var.p();
                jx8Var.i();
                jx8Var.o(kx8.Data);
            }
        }
    },
    MarkupDeclarationOpen { // from class: kx8.l0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (ea1Var.k0("--")) {
                jx8Var.m.f();
                jx8Var.o(kx8.CommentStart);
                return;
            }
            if (ea1Var.n0("DOCTYPE")) {
                jx8Var.o(kx8.Doctype);
                return;
            }
            if (ea1Var.k0("[CDATA[")) {
                jx8Var.e();
                jx8Var.o(kx8.CdataSection);
                return;
            }
            if (jx8Var.g != org.jsoup.nodes.f.a.EnumC0312a.xml || !ea1Var.u0()) {
                jx8Var.m(this);
                jx8Var.m.f();
                jx8Var.o(kx8.BogusComment);
            } else {
                gx8.j jVar = jx8Var.n;
                jVar.f();
                jVar.k = true;
                jx8Var.j = jVar;
                jx8Var.o(kx8.TagName);
            }
        }
    },
    MarkupProcessingOpen { // from class: kx8.m0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (ea1Var.u0()) {
                gx8.j jVar = jx8Var.n;
                jVar.f();
                jVar.k = false;
                jx8Var.j = jVar;
                jx8Var.o(kx8.TagName);
                return;
            }
            jx8Var.m(this);
            gx8.c cVar = jx8Var.m;
            cVar.f();
            cVar.g('?');
            jx8Var.o(kx8.BogusComment);
        }
    },
    CommentStart { // from class: kx8.n0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                jx8Var.m.g(kx8.replacementChar);
                jx8Var.o(kx8.Comment);
                return;
            }
            if (cP == '-') {
                jx8Var.o(kx8.CommentStartDash);
                return;
            }
            if (cP == '>') {
                jx8Var.m(this);
                jx8Var.i();
                jx8Var.o(kx8.Data);
            } else if (cP != 65535) {
                ea1Var.C0();
                jx8Var.o(kx8.Comment);
            } else {
                jx8Var.l(this);
                jx8Var.i();
                jx8Var.o(kx8.Data);
            }
        }
    },
    CommentStartDash { // from class: kx8.o0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                jx8Var.m.g(kx8.replacementChar);
                jx8Var.o(kx8.Comment);
                return;
            }
            if (cP == '-') {
                jx8Var.o(kx8.CommentEnd);
                return;
            }
            if (cP == '>') {
                jx8Var.m(this);
                jx8Var.i();
                jx8Var.o(kx8.Data);
            } else if (cP != 65535) {
                jx8Var.m.g(cP);
                jx8Var.o(kx8.Comment);
            } else {
                jx8Var.l(this);
                jx8Var.i();
                jx8Var.o(kx8.Data);
            }
        }
    },
    Comment { // from class: kx8.p0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cX = ea1Var.X();
            if (cX == 0) {
                jx8Var.m(this);
                ea1Var.m();
                jx8Var.m.g(kx8.replacementChar);
            } else {
                if (cX == '-') {
                    jx8Var.a(kx8.CommentEndDash);
                    return;
                }
                if (cX != 65535) {
                    gx8.c cVar = jx8Var.m;
                    cVar.d.b(ea1Var.Q('-', kx8.nullChar));
                } else {
                    jx8Var.l(this);
                    jx8Var.i();
                    jx8Var.o(kx8.Data);
                }
            }
        }
    },
    CommentEndDash { // from class: kx8.q0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                gx8.c cVar = jx8Var.m;
                cVar.d.a('-');
                cVar.g(kx8.replacementChar);
                jx8Var.o(kx8.Comment);
                return;
            }
            if (cP == '-') {
                jx8Var.o(kx8.CommentEnd);
                return;
            }
            if (cP == 65535) {
                jx8Var.l(this);
                jx8Var.i();
                jx8Var.o(kx8.Data);
            } else {
                gx8.c cVar2 = jx8Var.m;
                cVar2.d.a('-');
                cVar2.g(cP);
                jx8Var.o(kx8.Comment);
            }
        }
    },
    CommentEnd { // from class: kx8.s0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                gx8.c cVar = jx8Var.m;
                cVar.d.b("--");
                cVar.g(kx8.replacementChar);
                jx8Var.o(kx8.Comment);
                return;
            }
            if (cP == '!') {
                jx8Var.o(kx8.CommentEndBang);
                return;
            }
            if (cP == '-') {
                jx8Var.m.g('-');
                return;
            }
            if (cP == '>') {
                jx8Var.i();
                jx8Var.o(kx8.Data);
            } else if (cP == 65535) {
                jx8Var.l(this);
                jx8Var.i();
                jx8Var.o(kx8.Data);
            } else {
                gx8.c cVar2 = jx8Var.m;
                cVar2.d.b("--");
                cVar2.g(cP);
                jx8Var.o(kx8.Comment);
            }
        }
    },
    CommentEndBang { // from class: kx8.t0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                gx8.c cVar = jx8Var.m;
                cVar.d.b("--!");
                cVar.g(kx8.replacementChar);
                jx8Var.o(kx8.Comment);
                return;
            }
            if (cP == '-') {
                jx8Var.m.d.b("--!");
                jx8Var.o(kx8.CommentEndDash);
                return;
            }
            if (cP == '>') {
                jx8Var.i();
                jx8Var.o(kx8.Data);
            } else if (cP == 65535) {
                jx8Var.l(this);
                jx8Var.i();
                jx8Var.o(kx8.Data);
            } else {
                gx8.c cVar2 = jx8Var.m;
                cVar2.d.b("--!");
                cVar2.g(cP);
                jx8Var.o(kx8.Comment);
            }
        }
    },
    Doctype { // from class: kx8.u0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == '\t' || cP == '\n' || cP == '\f' || cP == '\r' || cP == ' ') {
                jx8Var.o(kx8.BeforeDoctypeName);
                return;
            }
            if (cP != '>') {
                if (cP != 65535) {
                    jx8Var.m(this);
                    jx8Var.o(kx8.BeforeDoctypeName);
                    return;
                }
                jx8Var.l(this);
            }
            jx8Var.m(this);
            gx8.d dVar = jx8Var.l;
            dVar.f();
            dVar.i = true;
            jx8Var.j();
            jx8Var.o(kx8.Data);
        }
    },
    BeforeDoctypeName { // from class: kx8.v0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (ea1Var.u0()) {
                jx8Var.l.f();
                jx8Var.o(kx8.DoctypeName);
                return;
            }
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                gx8.d dVar = jx8Var.l;
                dVar.f();
                dVar.d.a(kx8.replacementChar);
                jx8Var.o(kx8.DoctypeName);
                return;
            }
            if (cP != ' ') {
                if (cP == 65535) {
                    jx8Var.l(this);
                    gx8.d dVar2 = jx8Var.l;
                    dVar2.f();
                    dVar2.i = true;
                    jx8Var.j();
                    jx8Var.o(kx8.Data);
                    return;
                }
                if (cP == '\t' || cP == '\n' || cP == '\f' || cP == '\r') {
                    return;
                }
                jx8Var.l.f();
                jx8Var.l.d.a(cP);
                jx8Var.o(kx8.DoctypeName);
            }
        }
    },
    DoctypeName { // from class: kx8.w0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (ea1Var.u0()) {
                jx8Var.l.d.b(ea1Var.y());
                return;
            }
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                jx8Var.l.d.a(kx8.replacementChar);
                return;
            }
            if (cP != ' ') {
                if (cP == '>') {
                    jx8Var.j();
                    jx8Var.o(kx8.Data);
                    return;
                }
                if (cP == 65535) {
                    jx8Var.l(this);
                    jx8Var.l.i = true;
                    jx8Var.j();
                    jx8Var.o(kx8.Data);
                    return;
                }
                if (cP != '\t' && cP != '\n' && cP != '\f' && cP != '\r') {
                    jx8Var.l.d.a(cP);
                    return;
                }
            }
            jx8Var.o(kx8.AfterDoctypeName);
        }
    },
    AfterDoctypeName { // from class: kx8.x0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            if (ea1Var.Z()) {
                jx8Var.l(this);
                jx8Var.l.i = true;
                jx8Var.j();
                jx8Var.o(kx8.Data);
                return;
            }
            if (ea1Var.r0('\t', '\n', '\r', '\f', ' ')) {
                ea1Var.m();
                return;
            }
            if (ea1Var.q0('>')) {
                jx8Var.j();
                jx8Var.a(kx8.Data);
                return;
            }
            org.jsoup.nodes.f.a.EnumC0312a enumC0312a = jx8Var.g;
            gx8.d dVar = jx8Var.l;
            if (enumC0312a == org.jsoup.nodes.f.a.EnumC0312a.xml && ea1Var.q0('[')) {
                jx8Var.a(kx8.DoctypeInternalSubset);
                return;
            }
            if (ea1Var.n0("PUBLIC")) {
                dVar.e = "PUBLIC";
                jx8Var.o(kx8.AfterDoctypePublicKeyword);
            } else if (ea1Var.n0("SYSTEM")) {
                dVar.e = "SYSTEM";
                jx8Var.o(kx8.AfterDoctypeSystemKeyword);
            } else {
                jx8Var.m(this);
                dVar.i = true;
                jx8Var.a(kx8.BogusDoctype);
            }
        }
    },
    AfterDoctypePublicKeyword { // from class: kx8.y0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == '\t' || cP == '\n' || cP == '\f' || cP == '\r' || cP == ' ') {
                jx8Var.o(kx8.BeforeDoctypePublicIdentifier);
                return;
            }
            if (cP == '\"') {
                jx8Var.m(this);
                jx8Var.o(kx8.DoctypePublicIdentifier_doubleQuoted);
                return;
            }
            if (cP == '\'') {
                jx8Var.m(this);
                jx8Var.o(kx8.DoctypePublicIdentifier_singleQuoted);
                return;
            }
            if (cP == '>') {
                jx8Var.m(this);
                jx8Var.l.i = true;
                jx8Var.j();
                jx8Var.o(kx8.Data);
                return;
            }
            if (cP != 65535) {
                jx8Var.m(this);
                jx8Var.l.i = true;
                jx8Var.o(kx8.BogusDoctype);
            } else {
                jx8Var.l(this);
                jx8Var.l.i = true;
                jx8Var.j();
                jx8Var.o(kx8.Data);
            }
        }
    },
    BeforeDoctypePublicIdentifier { // from class: kx8.z0
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == '\t' || cP == '\n' || cP == '\f' || cP == '\r' || cP == ' ') {
                return;
            }
            if (cP == '\"') {
                jx8Var.o(kx8.DoctypePublicIdentifier_doubleQuoted);
                return;
            }
            if (cP == '\'') {
                jx8Var.o(kx8.DoctypePublicIdentifier_singleQuoted);
                return;
            }
            if (cP == '>') {
                jx8Var.m(this);
                jx8Var.l.i = true;
                jx8Var.j();
                jx8Var.o(kx8.Data);
                return;
            }
            if (cP != 65535) {
                jx8Var.m(this);
                jx8Var.l.i = true;
                jx8Var.o(kx8.BogusDoctype);
            } else {
                jx8Var.l(this);
                jx8Var.l.i = true;
                jx8Var.j();
                jx8Var.o(kx8.Data);
            }
        }
    },
    DoctypePublicIdentifier_doubleQuoted { // from class: kx8.a1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                jx8Var.l.f.a(kx8.replacementChar);
                return;
            }
            if (cP == '\"') {
                jx8Var.o(kx8.AfterDoctypePublicIdentifier);
                return;
            }
            if (cP == '>') {
                jx8Var.m(this);
                jx8Var.l.i = true;
                jx8Var.j();
                jx8Var.o(kx8.Data);
                return;
            }
            if (cP != 65535) {
                jx8Var.l.f.a(cP);
                return;
            }
            jx8Var.l(this);
            jx8Var.l.i = true;
            jx8Var.j();
            jx8Var.o(kx8.Data);
        }
    },
    DoctypePublicIdentifier_singleQuoted { // from class: kx8.b1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                jx8Var.l.f.a(kx8.replacementChar);
                return;
            }
            if (cP == '\'') {
                jx8Var.o(kx8.AfterDoctypePublicIdentifier);
                return;
            }
            if (cP == '>') {
                jx8Var.m(this);
                jx8Var.l.i = true;
                jx8Var.j();
                jx8Var.o(kx8.Data);
                return;
            }
            if (cP != 65535) {
                jx8Var.l.f.a(cP);
                return;
            }
            jx8Var.l(this);
            jx8Var.l.i = true;
            jx8Var.j();
            jx8Var.o(kx8.Data);
        }
    },
    AfterDoctypePublicIdentifier { // from class: kx8.d1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == '\t' || cP == '\n' || cP == '\f' || cP == '\r' || cP == ' ') {
                jx8Var.o(kx8.BetweenDoctypePublicAndSystemIdentifiers);
                return;
            }
            if (cP == '\"') {
                jx8Var.m(this);
                jx8Var.o(kx8.DoctypeSystemIdentifier_doubleQuoted);
                return;
            }
            if (cP == '\'') {
                jx8Var.m(this);
                jx8Var.o(kx8.DoctypeSystemIdentifier_singleQuoted);
                return;
            }
            if (cP == '>') {
                jx8Var.j();
                jx8Var.o(kx8.Data);
            } else if (cP != 65535) {
                jx8Var.m(this);
                jx8Var.l.i = true;
                jx8Var.o(kx8.BogusDoctype);
            } else {
                jx8Var.l(this);
                jx8Var.l.i = true;
                jx8Var.j();
                jx8Var.o(kx8.Data);
            }
        }
    },
    BetweenDoctypePublicAndSystemIdentifiers { // from class: kx8.e1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == '\t' || cP == '\n' || cP == '\f' || cP == '\r' || cP == ' ') {
                return;
            }
            if (cP == '\"') {
                jx8Var.m(this);
                jx8Var.o(kx8.DoctypeSystemIdentifier_doubleQuoted);
                return;
            }
            if (cP == '\'') {
                jx8Var.m(this);
                jx8Var.o(kx8.DoctypeSystemIdentifier_singleQuoted);
                return;
            }
            if (cP == '>') {
                jx8Var.j();
                jx8Var.o(kx8.Data);
                return;
            }
            if (cP == '[') {
                org.jsoup.nodes.f.a.EnumC0312a enumC0312a = jx8Var.g;
                gx8.d dVar = jx8Var.l;
                if (enumC0312a == org.jsoup.nodes.f.a.EnumC0312a.xml) {
                    jx8Var.o(kx8.DoctypeInternalSubset);
                    return;
                }
                jx8Var.m(this);
                dVar.i = true;
                jx8Var.o(kx8.BogusDoctype);
                return;
            }
            if (cP != 65535) {
                jx8Var.m(this);
                jx8Var.l.i = true;
                jx8Var.o(kx8.BogusDoctype);
            } else {
                jx8Var.l(this);
                jx8Var.l.i = true;
                jx8Var.j();
                jx8Var.o(kx8.Data);
            }
        }
    },
    AfterDoctypeSystemKeyword { // from class: kx8.f1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == '\t' || cP == '\n' || cP == '\f' || cP == '\r' || cP == ' ') {
                jx8Var.o(kx8.BeforeDoctypeSystemIdentifier);
                return;
            }
            if (cP == '\"') {
                jx8Var.m(this);
                jx8Var.o(kx8.DoctypeSystemIdentifier_doubleQuoted);
                return;
            }
            if (cP == '\'') {
                jx8Var.m(this);
                jx8Var.o(kx8.DoctypeSystemIdentifier_singleQuoted);
                return;
            }
            if (cP == '>') {
                jx8Var.m(this);
                jx8Var.l.i = true;
                jx8Var.j();
                jx8Var.o(kx8.Data);
                return;
            }
            if (cP != 65535) {
                jx8Var.m(this);
                jx8Var.l.i = true;
                jx8Var.j();
            } else {
                jx8Var.l(this);
                jx8Var.l.i = true;
                jx8Var.j();
                jx8Var.o(kx8.Data);
            }
        }
    },
    BeforeDoctypeSystemIdentifier { // from class: kx8.g1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == '\t' || cP == '\n' || cP == '\f' || cP == '\r' || cP == ' ') {
                return;
            }
            if (cP == '\"') {
                jx8Var.o(kx8.DoctypeSystemIdentifier_doubleQuoted);
                return;
            }
            if (cP == '\'') {
                jx8Var.o(kx8.DoctypeSystemIdentifier_singleQuoted);
                return;
            }
            if (cP == '>') {
                jx8Var.m(this);
                jx8Var.l.i = true;
                jx8Var.j();
                jx8Var.o(kx8.Data);
                return;
            }
            if (cP != 65535) {
                jx8Var.m(this);
                jx8Var.l.i = true;
                jx8Var.o(kx8.BogusDoctype);
            } else {
                jx8Var.l(this);
                jx8Var.l.i = true;
                jx8Var.j();
                jx8Var.o(kx8.Data);
            }
        }
    },
    DoctypeSystemIdentifier_doubleQuoted { // from class: kx8.h1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                jx8Var.l.g.a(kx8.replacementChar);
                return;
            }
            if (cP == '\"') {
                jx8Var.o(kx8.AfterDoctypeSystemIdentifier);
                return;
            }
            if (cP == '>') {
                jx8Var.m(this);
                jx8Var.l.i = true;
                jx8Var.j();
                jx8Var.o(kx8.Data);
                return;
            }
            if (cP != 65535) {
                jx8Var.l.g.a(cP);
                return;
            }
            jx8Var.l(this);
            jx8Var.l.i = true;
            jx8Var.j();
            jx8Var.o(kx8.Data);
        }
    },
    DoctypeSystemIdentifier_singleQuoted { // from class: kx8.i1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == 0) {
                jx8Var.m(this);
                jx8Var.l.g.a(kx8.replacementChar);
                return;
            }
            if (cP == '\'') {
                jx8Var.o(kx8.AfterDoctypeSystemIdentifier);
                return;
            }
            if (cP == '>') {
                jx8Var.m(this);
                jx8Var.l.i = true;
                jx8Var.j();
                jx8Var.o(kx8.Data);
                return;
            }
            if (cP != 65535) {
                jx8Var.l.g.a(cP);
                return;
            }
            jx8Var.l(this);
            jx8Var.l.i = true;
            jx8Var.j();
            jx8Var.o(kx8.Data);
        }
    },
    AfterDoctypeSystemIdentifier { // from class: kx8.j1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == '\t' || cP == '\n' || cP == '\f' || cP == '\r' || cP == ' ') {
                return;
            }
            if (cP == '>') {
                jx8Var.j();
                jx8Var.o(kx8.Data);
                return;
            }
            if (cP == '[') {
                if (jx8Var.g == org.jsoup.nodes.f.a.EnumC0312a.xml) {
                    jx8Var.o(kx8.DoctypeInternalSubset);
                    return;
                } else {
                    jx8Var.m(this);
                    jx8Var.o(kx8.BogusDoctype);
                    return;
                }
            }
            if (cP != 65535) {
                jx8Var.m(this);
                jx8Var.o(kx8.BogusDoctype);
            } else {
                jx8Var.l(this);
                jx8Var.l.i = true;
                jx8Var.j();
                jx8Var.o(kx8.Data);
            }
        }
    },
    BogusDoctype { // from class: kx8.k1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char cP = ea1Var.p();
            if (cP == '>') {
                jx8Var.j();
                jx8Var.o(kx8.Data);
            } else {
                if (cP != 65535) {
                    return;
                }
                jx8Var.j();
                jx8Var.o(kx8.Data);
            }
        }
    },
    DoctypeInternalSubset { // from class: kx8.l1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            char c;
            m54 m54Var = jx8Var.l.h;
            while (true) {
                char c2 = 0;
                while (true) {
                    char cP = ea1Var.p();
                    if (cP == 0) {
                        jx8Var.m(this);
                        m54Var.a(kx8.replacementChar);
                    } else if (cP == '\"') {
                        m54Var.a(cP);
                        c = 2;
                        if (c2 == 0) {
                            c2 = c;
                        } else if (c2 == 2) {
                            break;
                        }
                    } else if (cP == '\'') {
                        m54Var.a(cP);
                        c = 1;
                        if (c2 == 0) {
                            c2 = c;
                        } else if (c2 == 1) {
                            break;
                        }
                    } else if (cP == '-') {
                        m54Var.a(cP);
                        if (c2 == 3 && ea1Var.k0("->")) {
                            m54Var.b("->");
                            break;
                        }
                    } else if (cP == '<') {
                        m54Var.a(cP);
                        if (c2 == 0) {
                            if (ea1Var.k0("!--")) {
                                m54Var.b("!--");
                                c2 = 3;
                            } else if (ea1Var.k0("?")) {
                                m54Var.a('?');
                                c2 = 4;
                            }
                        }
                    } else if (cP == '?') {
                        m54Var.a(cP);
                        if (c2 == 4 && ea1Var.q0('>')) {
                            ea1Var.m();
                            m54Var.a('>');
                            break;
                        }
                    } else if (cP != ']') {
                        if (cP == 65535) {
                            jx8Var.l(this);
                            jx8Var.j();
                            jx8Var.o(kx8.Data);
                            return;
                        }
                        m54Var.a(cP);
                    } else if (c2 == 0) {
                        ea1Var.n();
                        int i = ea1Var.e;
                        int i2 = ea1Var.f;
                        char[] cArr = ea1Var.d;
                        int i3 = i;
                        while (i3 < i2 && ja8.h(cArr[i3])) {
                            i3++;
                        }
                        ea1Var.e = i3;
                        String strO = i3 > i ? ea1.o(ea1Var.d, ea1Var.b, i, i3 - i) : "";
                        if (ea1Var.q0('>')) {
                            ea1Var.m();
                            jx8Var.j();
                            jx8Var.o(kx8.Data);
                            return;
                        }
                        m54Var.a(cP);
                        m54Var.b(strO);
                    } else {
                        m54Var.a(cP);
                    }
                }
            }
        }
    },
    CdataSection { // from class: kx8.m1
        @Override // defpackage.kx8
        public final void f(jx8 jx8Var, ea1 ea1Var) {
            String strO;
            int iY0 = ea1Var.y0("]]>");
            if (iY0 != -1) {
                strO = ea1.o(ea1Var.d, ea1Var.b, ea1Var.e, iY0);
                ea1Var.e += iY0;
            } else {
                int i = ea1Var.f;
                int i2 = ea1Var.e;
                if (i - i2 < 3) {
                    strO = ea1Var.V();
                } else {
                    int i3 = i - 2;
                    strO = ea1.o(ea1Var.d, ea1Var.b, i2, i3 - i2);
                    ea1Var.e = i3;
                }
            }
            jx8Var.f.b(strO);
            if (ea1Var.k0("]]>") || ea1Var.Z()) {
                String strE = jx8Var.f.e();
                gx8.a aVar = new gx8.a();
                m54 m54Var = aVar.d;
                m54Var.d();
                m54Var.b = strE;
                jx8Var.g(aVar);
                jx8Var.o(kx8.Data);
            }
        }
    };

    private static final char eof = 65535;
    static final char[] attributeNameCharsSorted = {'\t', '\n', '\f', '\r', ' ', '\"', '\'', '/', '<', '=', '>', '?'};
    static final char nullChar = 0;
    static final char[] attributeValueUnquoted = {nullChar, '\t', '\n', '\f', '\r', ' ', '\"', '&', '\'', '<', '=', '>', '`'};
    private static final char replacementChar = 65533;
    private static final String replacementStr = String.valueOf(replacementChar);

    kx8() {
        throw null;
    }

    public static void d(jx8 jx8Var, ea1 ea1Var, kx8 kx8Var, kx8 kx8Var2) {
        if (ea1Var.u0()) {
            String strY = ea1Var.y();
            jx8Var.f.b(strY);
            jx8Var.h(strY);
            return;
        }
        char cP = ea1Var.p();
        if (cP != '\t' && cP != '\n' && cP != '\f' && cP != '\r' && cP != ' ' && cP != '/' && cP != '>') {
            ea1Var.C0();
            jx8Var.o(kx8Var2);
        } else {
            if (jx8Var.f.e().equals("script")) {
                jx8Var.o(kx8Var);
            } else {
                jx8Var.o(kx8Var2);
            }
            jx8Var.f(cP);
        }
    }

    public static void e(jx8 jx8Var, ea1 ea1Var, kx8 kx8Var) {
        if (ea1Var.u0()) {
            String strE = ea1Var.E(new cc(3));
            jx8Var.j.i(strE);
            jx8Var.f.b(strE);
            return;
        }
        boolean zN = jx8Var.n();
        m54 m54Var = jx8Var.f;
        if (zN && !ea1Var.Z()) {
            char cP = ea1Var.p();
            if (cP == '\t' || cP == '\n' || cP == '\f' || cP == '\r' || cP == ' ') {
                jx8Var.o(BeforeAttributeName);
                return;
            }
            if (cP == '/') {
                jx8Var.o(SelfClosingStartTag);
                return;
            } else {
                if (cP == '>') {
                    jx8Var.k();
                    jx8Var.o(Data);
                    return;
                }
                m54Var.a(cP);
            }
        }
        jx8Var.h("</");
        jx8Var.h(m54Var.e());
        jx8Var.o(kx8Var);
    }

    public static void g(jx8 jx8Var, ea1 ea1Var, kx8 kx8Var, kx8 kx8Var2) {
        char cX = ea1Var.X();
        if (cX == 0) {
            jx8Var.m(kx8Var);
            ea1Var.m();
            jx8Var.f(replacementChar);
            return;
        }
        if (cX == '<') {
            jx8Var.a(kx8Var2);
            return;
        }
        if (cX == 65535) {
            jx8Var.g(new gx8.e());
            return;
        }
        ea1Var.n();
        int i2 = ea1Var.e;
        int i3 = ea1Var.f;
        char[] cArr = ea1Var.d;
        int i4 = i2;
        while (i4 < i3) {
            char c2 = cArr[i4];
            if (c2 == '<' || c2 == 0) {
                break;
            } else {
                i4++;
            }
        }
        ea1Var.e = i4;
        jx8Var.h(i4 > i2 ? ea1.o(ea1Var.d, ea1Var.b, i2, i4 - i2) : "");
    }

    public abstract void f(jx8 jx8Var, ea1 ea1Var);
}
