package defpackage;

import java.net.ProtocolException;

/* JADX INFO: loaded from: classes5.dex */
public final class l88 {
    public final us6 a;
    public final int b;
    public final String c;

    public l88(us6 us6Var, int i, String str) {
        this.a = us6Var;
        this.b = i;
        this.c = str;
    }

    public static l88 a(String str) throws ProtocolException {
        us6 us6Var;
        int i;
        String strSubstring;
        if (str.startsWith("HTTP/1.")) {
            i = 9;
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt == 0) {
                us6Var = us6.HTTP_1_0;
            } else {
                if (iCharAt != 1) {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                us6Var = us6.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            us6Var = us6.HTTP_1_0;
            i = 4;
        }
        int i2 = i + 3;
        if (str.length() < i2) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
        try {
            int i3 = Integer.parseInt(str.substring(i, i2));
            if (str.length() <= i2) {
                strSubstring = "";
            } else {
                if (str.charAt(i2) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                strSubstring = str.substring(i + 4);
            }
            return new l88(us6Var, i3, strSubstring);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
    }

    public final String toString() {
        return (this.a == us6.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1") + ' ' + this.b + ' ' + this.c;
    }
}
