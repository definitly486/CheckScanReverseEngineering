package defpackage;

import androidx.webkit.ProxyConfig;

/* JADX INFO: loaded from: classes5.dex */
public final class ez3 {
    public final String a;
    public final int b;
    public final String c;

    public static final class a {
        public String a;
        public String b;
        public int c;

        public final String toString() {
            StringBuilder sb = new StringBuilder(this.a);
            sb.append("://");
            int i = -1;
            if (this.b.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.b);
                sb.append(']');
            } else {
                sb.append(this.b);
            }
            int i2 = this.c;
            if (i2 == -1) {
                String str = this.a;
                if (str.equals(ProxyConfig.MATCH_HTTP)) {
                    i2 = 80;
                } else {
                    i2 = str.equals(ProxyConfig.MATCH_HTTPS) ? 443 : -1;
                }
            }
            String str2 = this.a;
            if (str2.equals(ProxyConfig.MATCH_HTTP)) {
                i = 80;
            } else if (str2.equals(ProxyConfig.MATCH_HTTPS)) {
                i = 443;
            }
            if (i2 != i) {
                sb.append(':');
                sb.append(i2);
            }
            return sb.toString();
        }
    }

    public ez3(a aVar) {
        String str = aVar.a;
        this.a = aVar.b;
        int i = aVar.c;
        this.b = i == -1 ? str.equals(ProxyConfig.MATCH_HTTP) ? 80 : str.equals(ProxyConfig.MATCH_HTTPS) ? 443 : -1 : i;
        this.c = aVar.toString();
    }

    public static int a(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c >= 'a' && c <= 'f') {
            return c - 'W';
        }
        if (c < 'A' || c > 'F') {
            return -1;
        }
        return c - '7';
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ez3) && ((ez3) obj).c.equals(this.c);
    }

    public final int hashCode() {
        return this.c.hashCode();
    }

    public final String toString() {
        return this.c;
    }
}
