package defpackage;

import java.util.Locale;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class e36 extends m {
    public final d36 a = new d36();
    public final pq4 b = new pq4();

    @Override // defpackage.uj0
    public final pj0 d() {
        return this.a;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0033  */
    /* JADX WARN: Code duplicated, block: B:86:0x01b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:? A[LOOP:0: B:6:0x0014->B:99:?, LOOP_END, SYNTHETIC] */
    @Override // defpackage.m, defpackage.uj0
    public final void e(CharSequence charSequence) {
        int iU;
        int i;
        pq4 pq4Var = this.b;
        StringBuilder sb = pq4Var.b;
        if (sb.length() != 0) {
            sb.append('\n');
        }
        sb.append(charSequence);
        int iC = 0;
        while (iC < charSequence.length()) {
            switch (pq4.a.a[pq4Var.a.ordinal()]) {
                case 1:
                    break;
                case 2:
                    int iC2 = tz.c(charSequence, iC, charSequence.length());
                    if (iC2 >= charSequence.length() || charSequence.charAt(iC2) != '[') {
                        iC = -1;
                    } else {
                        pq4Var.a = pq4.b.LABEL;
                        pq4Var.d = new StringBuilder();
                        iC = iC2 + 1;
                        if (iC >= charSequence.length()) {
                            pq4Var.d.append('\n');
                        }
                    }
                    if (iC == -1) {
                        pq4Var.a = pq4.b.PARAGRAPH;
                    }
                    break;
                case 3:
                    iU = o8.u(iC, charSequence);
                    if (iU == -1) {
                        iC = -1;
                    } else {
                        pq4Var.d.append(charSequence, iC, iU);
                        if (iU >= charSequence.length()) {
                            pq4Var.d.append('\n');
                            iC = iU;
                        } else if (charSequence.charAt(iU) != ']' || (i = iU + 1) >= charSequence.length() || charSequence.charAt(i) != ':' || pq4Var.d.length() > 999) {
                            iC = -1;
                        } else {
                            String string = pq4Var.d.toString();
                            Pattern pattern = w03.a;
                            String strReplaceAll = w03.c.matcher(string.trim().toLowerCase(Locale.ROOT)).replaceAll(" ");
                            if (strReplaceAll.isEmpty()) {
                                iC = -1;
                            } else {
                                pq4Var.e = strReplaceAll;
                                pq4Var.a = pq4.b.DESTINATION;
                                iC = tz.c(charSequence, iU + 2, charSequence.length());
                            }
                        }
                    }
                    if (iC == -1) {
                        pq4Var.a = pq4.b.PARAGRAPH;
                    }
                    break;
                case 4:
                    int iC3 = tz.c(charSequence, iC, charSequence.length());
                    int iT = o8.t(iC3, charSequence);
                    if (iT != -1) {
                        pq4Var.f = charSequence.charAt(iC3) == '<' ? charSequence.subSequence(iC3 + 1, iT - 1).toString() : charSequence.subSequence(iC3, iT).toString();
                        iC = tz.c(charSequence, iT, charSequence.length());
                        if (iC >= charSequence.length()) {
                            pq4Var.i = true;
                            sb.setLength(0);
                        } else if (iC == iT) {
                            iC = -1;
                        }
                        pq4Var.a = pq4.b.START_TITLE;
                    } else {
                        iC = -1;
                    }
                    if (iC == -1) {
                        pq4Var.a = pq4.b.PARAGRAPH;
                    }
                    break;
                case 5:
                    iC = tz.c(charSequence, iC, charSequence.length());
                    if (iC >= charSequence.length()) {
                        pq4Var.a = pq4.b.START_DEFINITION;
                    } else {
                        pq4Var.g = (char) 0;
                        char cCharAt = charSequence.charAt(iC);
                        if (cCharAt == '\"' || cCharAt == '\'') {
                            pq4Var.g = cCharAt;
                        } else if (cCharAt == '(') {
                            pq4Var.g = ')';
                        }
                        if (pq4Var.g != 0) {
                            pq4Var.a = pq4.b.TITLE;
                            pq4Var.h = new StringBuilder();
                            iC++;
                            if (iC == charSequence.length()) {
                                pq4Var.h.append('\n');
                            }
                        } else {
                            pq4Var.a();
                            pq4Var.a = pq4.b.START_DEFINITION;
                        }
                    }
                    if (iC == -1) {
                        pq4Var.a = pq4.b.PARAGRAPH;
                    }
                    break;
                case 6:
                    iU = o8.w(charSequence, iC, pq4Var.g);
                    if (iU == -1) {
                        iC = -1;
                    } else {
                        pq4Var.h.append(charSequence.subSequence(iC, iU));
                        if (iU >= charSequence.length()) {
                            pq4Var.h.append('\n');
                            iC = iU;
                        } else {
                            iC = tz.c(charSequence, iU + 1, charSequence.length());
                            if (iC != charSequence.length()) {
                                iC = -1;
                            } else {
                                pq4Var.i = true;
                                pq4Var.a();
                                sb.setLength(0);
                                pq4Var.a = pq4.b.START_DEFINITION;
                            }
                        }
                    }
                    if (iC == -1) {
                        pq4Var.a = pq4.b.PARAGRAPH;
                    }
                    break;
                default:
                    if (iC == -1) {
                        pq4Var.a = pq4.b.PARAGRAPH;
                    }
                    break;
            }
            return;
        }
    }

    @Override // defpackage.uj0
    public final rj0 f(dq2 dq2Var) {
        if (dq2Var.h) {
            return null;
        }
        return rj0.a(dq2Var.b);
    }

    @Override // defpackage.m, defpackage.uj0
    public final void g(l54 l54Var) {
        StringBuilder sb = this.b.b;
        if (sb.length() > 0) {
            l54Var.a(sb.toString(), this.a);
        }
    }

    @Override // defpackage.m, defpackage.uj0
    public final void h() {
        if (this.b.b.length() == 0) {
            this.a.f();
        }
    }
}
