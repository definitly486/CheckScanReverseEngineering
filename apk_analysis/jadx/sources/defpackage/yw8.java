package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public enum yw8 {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");

    public static final a Companion = new a();
    private final String javaName;

    public static final class a {
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public static yw8 a(String str) {
            str.getClass();
            int iHashCode = str.hashCode();
            if (iHashCode != 79201641) {
                if (iHashCode != 79923350) {
                    switch (iHashCode) {
                        case -503070503:
                            if (str.equals("TLSv1.1")) {
                                return yw8.TLS_1_1;
                            }
                            break;
                        case -503070502:
                            if (str.equals("TLSv1.2")) {
                                return yw8.TLS_1_2;
                            }
                            break;
                        case -503070501:
                            if (str.equals("TLSv1.3")) {
                                return yw8.TLS_1_3;
                            }
                            break;
                    }
                } else if (str.equals("TLSv1")) {
                    return yw8.TLS_1_0;
                }
            } else if (str.equals("SSLv3")) {
                return yw8.SSL_3_0;
            }
            fg.c("Unexpected TLS version: ".concat(str));
            return null;
        }
    }

    yw8(String str) {
        this.javaName = str;
    }

    public final String a() {
        return this.javaName;
    }
}
