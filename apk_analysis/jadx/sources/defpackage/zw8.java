package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public enum zw8 {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");

    final String javaName;

    zw8(String str) {
        this.javaName = str;
    }
}
