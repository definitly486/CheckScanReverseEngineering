package defpackage;

import org.jsoup.helper.ValidationException;

/* JADX INFO: loaded from: classes5.dex */
public final class hx8 implements AutoCloseable {
    public static final char[] c = {'*', '|', '_', '-'};
    public final ea1 b;

    public hx8(String str) {
        this.b = new ea1(str);
    }

    public static String E(String str) {
        if (str.indexOf(92) == -1) {
            return str;
        }
        StringBuilder sbA = ja8.a();
        char c2 = 0;
        for (char c3 : str.toCharArray()) {
            if (c3 == '\\') {
                if (c2 == '\\') {
                    sbA.append(c3);
                    c2 = 0;
                }
            } else {
                sbA.append(c3);
            }
            c2 = c3;
        }
        return ja8.k(sbA);
    }

    public static boolean v(char c2) {
        return c2 == '-' || ja8.f(c2) || c2 == '_' || ja8.d(c2) || c2 >= 128;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.b.close();
    }

    public final void m() {
        ea1 ea1Var = this.b;
        if (ea1Var.Z()) {
            return;
        }
        ea1Var.m();
    }

    public final String n(char c2, char c3) {
        StringBuilder sbA = ja8.a();
        ea1 ea1Var = this.b;
        if (ea1Var.f - ea1Var.e < 1024) {
            ea1Var.g = 0;
        }
        ea1Var.n();
        ea1Var.i = ea1Var.e;
        char c4 = 0;
        boolean z = false;
        boolean z2 = false;
        int i = 0;
        boolean z3 = false;
        while (!ea1Var.Z()) {
            char cP = ea1Var.p();
            if (c4 == '\\') {
                if (cP == 'Q') {
                    z3 = true;
                } else if (cP == 'E') {
                    z3 = false;
                }
                sbA.append(cP);
            } else {
                if (cP == '\'' && cP != c2 && !z) {
                    z2 = !z2;
                } else if (cP == '\"' && cP != c2 && !z2) {
                    z = !z;
                }
                if (z2 || z || z3) {
                    sbA.append(cP);
                } else if (cP == c2) {
                    i++;
                    if (i > 1) {
                        sbA.append(cP);
                    }
                } else if (cP != c3 || (i = i - 1) > 0) {
                    sbA.append(cP);
                }
            }
            if (i <= 0) {
                break;
            }
            c4 = cP;
        }
        String strK = ja8.k(sbA);
        if (i <= 0) {
            return strK;
        }
        ea1Var.B0();
        throw new ValidationException("Did not find balanced marker at '" + strK + "'");
    }

    public final String o() {
        char cX;
        ea1 ea1Var = this.b;
        if (ea1Var.Z()) {
            fg.c("CSS identifier expected, but end of input found");
            return null;
        }
        ea1Var.n();
        int i = ea1Var.e;
        int i2 = ea1Var.f;
        char[] cArr = ea1Var.d;
        int i3 = i;
        while (i3 < i2 && v(cArr[i3])) {
            i3++;
        }
        ea1Var.e = i3;
        String strO = i3 > i ? ea1.o(ea1Var.d, ea1Var.b, i, i3 - i) : "";
        char cX2 = ea1Var.X();
        if (cX2 != '\\' && cX2 != 0) {
            return strO;
        }
        StringBuilder sbA = ja8.a();
        if (!strO.isEmpty()) {
            sbA.append(strO);
        }
        while (!ea1Var.Z()) {
            char cX3 = ea1Var.X();
            if (!v(cX3)) {
                if (cX3 != 0) {
                    if (cX3 != '\\') {
                        break;
                    }
                    m();
                    if (!ea1Var.Z() && ((cX = ea1Var.X()) == '\n' || cX == '\r' || cX == '\f')) {
                        ea1Var.C0();
                        break;
                    }
                    if (ea1Var.Z()) {
                        sbA.append((char) 65533);
                    } else {
                        char cP = ea1Var.p();
                        if (ja8.g(cP)) {
                            ea1Var.C0();
                            ea1Var.n();
                            int i4 = ea1Var.e;
                            int i5 = ea1Var.f;
                            char[] cArr2 = ea1Var.d;
                            int i6 = i4;
                            while (i6 < i5 && i6 - i4 < 6 && ja8.g(cArr2[i6])) {
                                i6++;
                            }
                            ea1Var.e = i6;
                            String strO2 = i6 > i4 ? ea1.o(ea1Var.d, ea1Var.b, i4, i6 - i4) : "";
                            try {
                                int i7 = Integer.parseInt(strO2, 16);
                                if (i7 == 0 || !Character.isValidCodePoint(i7) || Character.isSurrogate((char) i7)) {
                                    sbA.append((char) 65533);
                                } else {
                                    sbA.appendCodePoint(i7);
                                }
                                if (!ea1Var.Z()) {
                                    char cX4 = ea1Var.X();
                                    if (cX4 == '\r') {
                                        m();
                                        if (!ea1Var.Z() && ea1Var.X() == '\n') {
                                            m();
                                        }
                                    } else if (cX4 == ' ' || cX4 == '\t' || cX4 == '\n' || cX4 == '\r' || cX4 == '\f') {
                                        m();
                                    }
                                }
                            } catch (NumberFormatException e) {
                                cc.e("Invalid escape sequence: ".concat(strO2), e);
                                return null;
                            }
                        } else {
                            sbA.append(cP);
                        }
                    }
                } else {
                    m();
                    sbA.append((char) 65533);
                }
            } else {
                sbA.append(ea1Var.p());
            }
        }
        return ja8.k(sbA);
    }

    public final boolean p() {
        boolean z = false;
        while (ja8.h(this.b.X())) {
            m();
            z = true;
        }
        return z;
    }

    public final String toString() {
        return this.b.toString();
    }

    public final boolean y(char c2) {
        ea1 ea1Var = this.b;
        if (!ea1Var.q0(c2)) {
            return false;
        }
        ea1Var.p();
        return true;
    }
}
