package defpackage;

import java.net.ProtocolException;

/* JADX INFO: loaded from: classes5.dex */
public final class k88 {
    public final ts6 a;
    public final int b;
    public final String c;

    public static final class a {
        public static k88 a(String str) throws ProtocolException {
            ts6 ts6Var;
            int i;
            String strSubstring;
            if (ra8.C(str, "HTTP/1.", false)) {
                i = 9;
                if (str.length() < 9 || str.charAt(8) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                int iCharAt = str.charAt(7) - '0';
                if (iCharAt == 0) {
                    ts6Var = ts6.HTTP_1_0;
                } else {
                    if (iCharAt != 1) {
                        throw new ProtocolException("Unexpected status line: ".concat(str));
                    }
                    ts6Var = ts6.HTTP_1_1;
                }
            } else {
                if (!ra8.C(str, "ICY ", false)) {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                ts6Var = ts6.HTTP_1_0;
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
                return new k88(ts6Var, i3, strSubstring);
            } catch (NumberFormatException unused) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
        }
    }

    public k88(ts6 ts6Var, int i, String str) {
        ts6Var.getClass();
        this.a = ts6Var;
        this.b = i;
        this.c = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.a == ts6.HTTP_1_0) {
            sb.append("HTTP/1.0");
        } else {
            sb.append("HTTP/1.1");
        }
        sb.append(' ');
        sb.append(this.b);
        sb.append(' ');
        sb.append(this.c);
        return sb.toString();
    }
}
