package defpackage;

import kotlinx.serialization.json.JsonDecodingException;

/* JADX INFO: loaded from: classes5.dex */
public class w98 {
    public final fc4 a;
    public int b;
    public final od4 c;
    public String d;
    public final StringBuilder e;
    public final String f;

    public w98(String str, fc4 fc4Var) {
        str.getClass();
        this.a = fc4Var;
        this.c = new od4(fc4Var);
        this.e = new StringBuilder();
        this.f = str;
    }

    public static /* synthetic */ void l(w98 w98Var, String str, int i, String str2, int i2) {
        if ((i2 & 2) != 0) {
            i = w98Var.b;
        }
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        w98Var.k(i, str, str2);
        throw null;
    }

    public final int a(int i, CharSequence charSequence) {
        int i2 = i + 4;
        if (i2 < charSequence.length()) {
            this.e.append((char) (m(i + 3, charSequence) + (m(i, charSequence) << 12) + (m(i + 1, charSequence) << 8) + (m(i + 2, charSequence) << 4)));
            return i2;
        }
        this.b = i;
        if (i2 < charSequence.length()) {
            return a(this.b, charSequence);
        }
        l(this, "Unexpected EOF during unicode escape", 0, null, 6);
        throw null;
    }

    public boolean b() {
        int i = this.b;
        if (i == -1) {
            return false;
        }
        while (true) {
            String str = this.f;
            if (i >= str.length()) {
                this.b = i;
                return false;
            }
            char cCharAt = str.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.b = i;
                return (cCharAt == ',' || cCharAt == ':' || cCharAt == ']' || cCharAt == '}') ? false : true;
            }
            i++;
        }
    }

    public final void c(int i, String str) {
        if (n().length() - i < str.length()) {
            l(this, "Unexpected end of boolean literal", 0, null, 6);
            throw null;
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (str.charAt(i2) != (n().charAt(i + i2) | ' ')) {
                l(this, "Expected valid boolean literal prefix, but had '" + j() + '\'', 0, null, 6);
                throw null;
            }
        }
        this.b = str.length() + i;
    }

    public final String d() {
        String string;
        g('\"');
        int i = this.b;
        String str = this.f;
        int iJ = ta8.J('\"', i, 4, str);
        if (iJ == -1) {
            j();
            int i2 = this.b;
            l(this, me0.c("Expected quotation mark '\"', but had '", (i2 == str.length() || i2 < 0) ? "EOF" : String.valueOf(str.charAt(i2)), "' instead"), i2, null, 4);
            throw null;
        }
        int i3 = i;
        while (i3 < iJ) {
            if (str.charAt(i3) == '\\') {
                int iR = this.b;
                char cCharAt = str.charAt(i3);
                boolean z = false;
                while (true) {
                    StringBuilder sb = this.e;
                    if (cCharAt == '\"') {
                        if (z) {
                            sb.append((CharSequence) n(), iR, i3);
                            string = sb.toString();
                            sb.setLength(0);
                        } else {
                            string = n().subSequence(iR, i3).toString();
                        }
                        this.b = i3 + 1;
                        return string;
                    }
                    if (cCharAt == '\\') {
                        sb.append((CharSequence) n(), iR, i3);
                        int iR2 = r(i3 + 1);
                        if (iR2 == -1) {
                            l(this, "Expected escape sequence to continue, got EOF", 0, null, 6);
                            throw null;
                        }
                        int iA = iR2 + 1;
                        char cCharAt2 = str.charAt(iR2);
                        if (cCharAt2 == 'u') {
                            iA = a(iA, str);
                        } else {
                            char c = cCharAt2 < 'u' ? x91.a[cCharAt2] : (char) 0;
                            if (c == 0) {
                                l(this, "Invalid escaped char '" + cCharAt2 + '\'', 0, null, 6);
                                throw null;
                            }
                            sb.append(c);
                        }
                        iR = r(iA);
                        if (iR == -1) {
                            l(this, "Unexpected EOF", iR, null, 4);
                            throw null;
                        }
                    } else {
                        i3++;
                        if (i3 >= str.length()) {
                            sb.append((CharSequence) n(), iR, i3);
                            iR = r(i3);
                            if (iR == -1) {
                                l(this, "Unexpected EOF", iR, null, 4);
                                throw null;
                            }
                        } else {
                            continue;
                        }
                        cCharAt = str.charAt(i3);
                    }
                    i3 = iR;
                    z = true;
                    cCharAt = str.charAt(i3);
                }
            } else {
                i3++;
            }
        }
        this.b = iJ + 1;
        return str.substring(i, iJ);
    }

    public byte e() {
        String str;
        int i = this.b;
        while (true) {
            str = this.f;
            if (i == -1 || i >= str.length()) {
                break;
            }
            int i2 = i + 1;
            char cCharAt = str.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.b = i2;
                return s0.b(cCharAt);
            }
            i = i2;
        }
        this.b = str.length();
        return (byte) 10;
    }

    public final byte f(byte b) {
        byte bE = e();
        if (bE == b) {
            return bE;
        }
        String strE = s0.e(b);
        int i = this.b;
        int i2 = i > 0 ? i - 1 : i;
        l(this, n2.d("Expected ", strE, ", but had '", (i == n().length() || i2 < 0) ? "EOF" : String.valueOf(n().charAt(i2)), "' instead"), i2, null, 4);
        throw null;
    }

    public void g(char c) {
        int i = this.b;
        if (i == -1) {
            v(c);
            throw null;
        }
        while (true) {
            String str = this.f;
            if (i >= str.length()) {
                this.b = -1;
                v(c);
                throw null;
            }
            int i2 = i + 1;
            char cCharAt = str.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.b = i2;
                if (cCharAt == c) {
                    return;
                }
                v(c);
                throw null;
            }
            i = i2;
        }
    }

    public final long h() {
        boolean z;
        boolean z2;
        boolean z3;
        double dPow;
        int iR = r(s());
        if (iR >= n().length() || iR == -1) {
            l(this, "EOF", 0, null, 6);
            throw null;
        }
        if (n().charAt(iR) == '\"') {
            iR++;
            if (iR == n().length()) {
                l(this, "EOF", 0, null, 6);
                throw null;
            }
            z = true;
        } else {
            z = false;
        }
        int i = iR;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        long j = 0;
        long j2 = 0;
        while (true) {
            if (i == n().length()) {
                z = z;
                z2 = z5;
                z3 = z6;
                break;
            }
            char cCharAt = n().charAt(i);
            z = z;
            if ((cCharAt != 'e' && cCharAt != 'E') || z5) {
                z2 = z5;
                if (cCharAt == '-' && z2) {
                    if (i == iR) {
                        l(this, "Unexpected symbol '-' in numeric literal", i, null, 4);
                        throw null;
                    }
                    i++;
                    z5 = z2;
                    z4 = false;
                } else if (cCharAt != '+' || !z2) {
                    z3 = z6;
                    if (cCharAt != '-') {
                        if (s0.b(cCharAt) != 0) {
                            break;
                        }
                        int i2 = i + 1;
                        int i3 = cCharAt - '0';
                        if (i3 < 0 || i3 >= 10) {
                            l(this, "Unexpected symbol '" + cCharAt + "' in numeric literal", i, null, 4);
                            throw null;
                        }
                        if (z2) {
                            j = (j * 10) + ((long) i3);
                        } else {
                            j2 = (j2 * 10) - ((long) i3);
                            if (j2 > 0) {
                                l(this, "Numeric value overflow", 0, null, 6);
                                throw null;
                            }
                        }
                        i = i2;
                        z5 = z2;
                        z6 = z3;
                    } else {
                        if (i != iR) {
                            l(this, "Unexpected symbol '-' in numeric literal", i, null, 4);
                            throw null;
                        }
                        i++;
                        z5 = z2;
                        z6 = true;
                    }
                } else {
                    if (i == iR) {
                        l(this, "Unexpected symbol '+' in numeric literal", i, null, 4);
                        throw null;
                    }
                    i++;
                    z5 = z2;
                    z4 = true;
                }
            } else {
                if (i == iR) {
                    l(this, "Unexpected symbol '" + cCharAt + "' in numeric literal", i, null, 4);
                    throw null;
                }
                i++;
                z4 = true;
                z5 = true;
            }
        }
        boolean z7 = i != iR;
        if (iR == i || (z3 && iR == i - 1)) {
            l(this, "Expected numeric literal", i, null, 4);
            throw null;
        }
        if (z) {
            if (!z7) {
                l(this, "EOF", 0, null, 6);
                throw null;
            }
            if (n().charAt(i) != '\"') {
                l(this, "Expected closing quotation mark", i, null, 4);
                throw null;
            }
            i++;
        }
        this.b = i;
        if (z2) {
            double d = j2;
            if (!z4) {
                dPow = Math.pow(10.0d, -j);
            } else {
                if (!z4) {
                    me0.e();
                    return 0L;
                }
                dPow = Math.pow(10.0d, j);
            }
            double d2 = d * dPow;
            if (d2 > 9.223372036854776E18d || d2 < -9.223372036854776E18d) {
                l(this, "Numeric value overflow", 0, null, 6);
                throw null;
            }
            if (Math.floor(d2) != d2) {
                l(this, "Can't convert " + d2 + " to Long", 0, null, 6);
                throw null;
            }
            j2 = (long) d2;
        }
        if (z3) {
            return j2;
        }
        if (j2 != Long.MIN_VALUE) {
            return -j2;
        }
        l(this, "Numeric value overflow", 0, null, 6);
        throw null;
    }

    public final String i() {
        String str = this.d;
        if (str == null) {
            return d();
        }
        str.getClass();
        this.d = null;
        return str;
    }

    public final String j() {
        String string;
        String str = this.d;
        if (str != null) {
            str.getClass();
            this.d = null;
            return str;
        }
        int iS = s();
        if (iS >= n().length() || iS == -1) {
            l(this, "EOF", iS, null, 4);
            throw null;
        }
        byte b = s0.b(n().charAt(iS));
        if (b == 1) {
            return i();
        }
        if (b != 0) {
            l(this, "Expected beginning of the string, but got " + n().charAt(iS), 0, null, 6);
            throw null;
        }
        boolean z = false;
        while (true) {
            byte b2 = s0.b(n().charAt(iS));
            StringBuilder sb = this.e;
            if (b2 != 0) {
                int i = this.b;
                if (z) {
                    sb.append((CharSequence) n(), i, iS);
                    string = sb.toString();
                    sb.setLength(0);
                } else {
                    string = n().subSequence(i, iS).toString();
                }
                this.b = iS;
                return string;
            }
            iS++;
            if (iS >= n().length()) {
                sb.append((CharSequence) n(), this.b, iS);
                int iR = r(iS);
                if (iR == -1) {
                    this.b = iS;
                    sb.append((CharSequence) n(), 0, 0);
                    String string2 = sb.toString();
                    sb.setLength(0);
                    return string2;
                }
                iS = iR;
                z = true;
            }
        }
    }

    public final void k(int i, String str, String str2) {
        String strA = this.c.a();
        String strN = n();
        strN.getClass();
        throw new JsonDecodingException(yc4.c(i, str, strA, str2, this.a.h ? yc4.e(i, strN).toString() : null));
    }

    public final int m(int i, CharSequence charSequence) {
        char cCharAt = charSequence.charAt(i);
        if ('0' <= cCharAt && cCharAt < ':') {
            return cCharAt - '0';
        }
        if ('a' <= cCharAt && cCharAt < 'g') {
            return cCharAt - 'W';
        }
        if ('A' <= cCharAt && cCharAt < 'G') {
            return cCharAt - '7';
        }
        l(this, "Invalid toHexChar char '" + cCharAt + "' in unicode escape", 0, null, 6);
        throw null;
    }

    public final String n() {
        return this.f;
    }

    public final String o(String str) {
        str.getClass();
        int i = this.b;
        try {
            if (e() == 6 && aa4.e(q(), str)) {
                this.d = null;
                if (e() == 5) {
                    return q();
                }
            }
            return null;
        } finally {
            this.b = i;
            this.d = null;
        }
    }

    public byte p() {
        String strN = n();
        int i = this.b;
        while (true) {
            int iR = r(i);
            if (iR == -1) {
                this.b = iR;
                return (byte) 10;
            }
            char cCharAt = strN.charAt(iR);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != ' ') {
                this.b = iR;
                return s0.b(cCharAt);
            }
            i = iR + 1;
        }
    }

    public final String q() {
        if (p() != 1) {
            return null;
        }
        String strI = i();
        this.d = strI;
        return strI;
    }

    public final int r(int i) {
        if (i < this.f.length()) {
            return i;
        }
        return -1;
    }

    public int s() {
        char cCharAt;
        int i = this.b;
        if (i == -1) {
            return i;
        }
        while (true) {
            String str = this.f;
            if (i >= str.length() || !((cCharAt = str.charAt(i)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
                break;
            }
            i++;
        }
        this.b = i;
        return i;
    }

    public final boolean t() {
        int iS = s();
        String strN = n();
        if (iS >= strN.length() || iS == -1 || strN.charAt(iS) != ',') {
            return false;
        }
        this.b++;
        return true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("JsonReader(source='");
        sb.append((Object) n());
        sb.append("', currentPosition=");
        return rg.h(sb, this.b, ')');
    }

    public final boolean u(boolean z) {
        int iR = r(s());
        int length = n().length() - iR;
        if (length >= 4 && iR != -1) {
            for (int i = 0; i < 4; i++) {
                if ("null".charAt(i) == n().charAt(iR + i)) {
                }
            }
            if (length <= 4 || s0.b(n().charAt(iR + 4)) != 0) {
                if (z) {
                    this.b = iR + 4;
                }
                return true;
            }
        }
        return false;
    }

    public final void v(char c) {
        int i = this.b;
        if (i > 0 && c == '\"') {
            try {
                this.b = i - 1;
                String strJ = j();
                this.b = i;
                if (aa4.e(strJ, "null")) {
                    k(this.b - 1, "Expected string literal but 'null' literal was found", "Use 'coerceInputValues = true' in 'Json {}' builder to coerce nulls if property has a default value.");
                    throw null;
                }
            } catch (Throwable th) {
                this.b = i;
                throw th;
            }
        }
        String strE = s0.e(s0.b(c));
        int i2 = this.b;
        int i3 = i2 > 0 ? i2 - 1 : i2;
        String str = this.f;
        l(this, n2.d("Expected ", strE, ", but had '", (i2 == str.length() || i3 < 0) ? "EOF" : String.valueOf(str.charAt(i3)), "' instead"), i3, null, 4);
        throw null;
    }
}
