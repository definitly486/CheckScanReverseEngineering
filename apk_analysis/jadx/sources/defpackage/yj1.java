package defpackage;

import java.util.Comparator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class yj1 {
    public static final b b = new b();
    public static final a c = new a();
    public static final LinkedHashMap d = new LinkedHashMap();
    public static final yj1 e;
    public static final yj1 f;
    public static final yj1 g;
    public static final yj1 h;
    public static final yj1 i;
    public static final yj1 j;
    public static final yj1 k;
    public static final yj1 l;
    public static final yj1 m;
    public static final yj1 n;
    public static final yj1 o;
    public static final yj1 p;
    public static final yj1 q;
    public static final yj1 r;
    public static final yj1 s;
    public static final yj1 t;
    public final String a;

    public static final class a implements Comparator<String> {
        @Override // java.util.Comparator
        public final int compare(String str, String str2) {
            String str3 = str;
            String str4 = str2;
            str3.getClass();
            str4.getClass();
            int iMin = Math.min(str3.length(), str4.length());
            for (int i = 4; i < iMin; i++) {
                char cCharAt = str3.charAt(i);
                char cCharAt2 = str4.charAt(i);
                if (cCharAt != cCharAt2) {
                    return aa4.f(cCharAt, cCharAt2) < 0 ? -1 : 1;
                }
            }
            int length = str3.length();
            int length2 = str4.length();
            if (length != length2) {
                return length < length2 ? -1 : 1;
            }
            return 0;
        }
    }

    public static final class b {
        public static yj1 b(String str) {
            yj1 yj1Var = new yj1(str);
            yj1.d.put(str, yj1Var);
            return yj1Var;
        }

        public final synchronized yj1 a(String str) {
            yj1 yj1Var;
            String strConcat;
            try {
                str.getClass();
                LinkedHashMap linkedHashMap = yj1.d;
                yj1Var = (yj1) linkedHashMap.get(str);
                if (yj1Var == null) {
                    if (ra8.C(str, "TLS_", false)) {
                        strConcat = "SSL_".concat(str.substring(4));
                    } else {
                        strConcat = ra8.C(str, "SSL_", false) ? "TLS_".concat(str.substring(4)) : str;
                    }
                    yj1Var = (yj1) linkedHashMap.get(strConcat);
                    if (yj1Var == null) {
                        yj1Var = new yj1(str);
                    }
                    linkedHashMap.put(str, yj1Var);
                }
            } catch (Throwable th) {
                throw th;
            }
            return yj1Var;
        }
    }

    static {
        b.b("SSL_RSA_WITH_NULL_MD5");
        b.b("SSL_RSA_WITH_NULL_SHA");
        b.b("SSL_RSA_EXPORT_WITH_RC4_40_MD5");
        b.b("SSL_RSA_WITH_RC4_128_MD5");
        b.b("SSL_RSA_WITH_RC4_128_SHA");
        b.b("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA");
        b.b("SSL_RSA_WITH_DES_CBC_SHA");
        e = b.b("SSL_RSA_WITH_3DES_EDE_CBC_SHA");
        b.b("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA");
        b.b("SSL_DHE_DSS_WITH_DES_CBC_SHA");
        b.b("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA");
        b.b("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA");
        b.b("SSL_DHE_RSA_WITH_DES_CBC_SHA");
        b.b("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA");
        b.b("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5");
        b.b("SSL_DH_anon_WITH_RC4_128_MD5");
        b.b("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA");
        b.b("SSL_DH_anon_WITH_DES_CBC_SHA");
        b.b("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA");
        b.b("TLS_KRB5_WITH_DES_CBC_SHA");
        b.b("TLS_KRB5_WITH_3DES_EDE_CBC_SHA");
        b.b("TLS_KRB5_WITH_RC4_128_SHA");
        b.b("TLS_KRB5_WITH_DES_CBC_MD5");
        b.b("TLS_KRB5_WITH_3DES_EDE_CBC_MD5");
        b.b("TLS_KRB5_WITH_RC4_128_MD5");
        b.b("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA");
        b.b("TLS_KRB5_EXPORT_WITH_RC4_40_SHA");
        b.b("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5");
        b.b("TLS_KRB5_EXPORT_WITH_RC4_40_MD5");
        f = b.b("TLS_RSA_WITH_AES_128_CBC_SHA");
        b.b("TLS_DHE_DSS_WITH_AES_128_CBC_SHA");
        b.b("TLS_DHE_RSA_WITH_AES_128_CBC_SHA");
        b.b("TLS_DH_anon_WITH_AES_128_CBC_SHA");
        g = b.b("TLS_RSA_WITH_AES_256_CBC_SHA");
        b.b("TLS_DHE_DSS_WITH_AES_256_CBC_SHA");
        b.b("TLS_DHE_RSA_WITH_AES_256_CBC_SHA");
        b.b("TLS_DH_anon_WITH_AES_256_CBC_SHA");
        b.b("TLS_RSA_WITH_NULL_SHA256");
        b.b("TLS_RSA_WITH_AES_128_CBC_SHA256");
        b.b("TLS_RSA_WITH_AES_256_CBC_SHA256");
        b.b("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256");
        b.b("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA");
        b.b("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA");
        b.b("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA");
        b.b("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256");
        b.b("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256");
        b.b("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256");
        b.b("TLS_DH_anon_WITH_AES_128_CBC_SHA256");
        b.b("TLS_DH_anon_WITH_AES_256_CBC_SHA256");
        b.b("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA");
        b.b("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA");
        b.b("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA");
        b.b("TLS_PSK_WITH_RC4_128_SHA");
        b.b("TLS_PSK_WITH_3DES_EDE_CBC_SHA");
        b.b("TLS_PSK_WITH_AES_128_CBC_SHA");
        b.b("TLS_PSK_WITH_AES_256_CBC_SHA");
        b.b("TLS_RSA_WITH_SEED_CBC_SHA");
        h = b.b("TLS_RSA_WITH_AES_128_GCM_SHA256");
        i = b.b("TLS_RSA_WITH_AES_256_GCM_SHA384");
        b.b("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256");
        b.b("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384");
        b.b("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256");
        b.b("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384");
        b.b("TLS_DH_anon_WITH_AES_128_GCM_SHA256");
        b.b("TLS_DH_anon_WITH_AES_256_GCM_SHA384");
        b.b("TLS_EMPTY_RENEGOTIATION_INFO_SCSV");
        b.b("TLS_FALLBACK_SCSV");
        b.b("TLS_ECDH_ECDSA_WITH_NULL_SHA");
        b.b("TLS_ECDH_ECDSA_WITH_RC4_128_SHA");
        b.b("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA");
        b.b("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA");
        b.b("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA");
        b.b("TLS_ECDHE_ECDSA_WITH_NULL_SHA");
        b.b("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA");
        b.b("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA");
        b.b("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA");
        b.b("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA");
        b.b("TLS_ECDH_RSA_WITH_NULL_SHA");
        b.b("TLS_ECDH_RSA_WITH_RC4_128_SHA");
        b.b("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA");
        b.b("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA");
        b.b("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA");
        b.b("TLS_ECDHE_RSA_WITH_NULL_SHA");
        b.b("TLS_ECDHE_RSA_WITH_RC4_128_SHA");
        b.b("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA");
        j = b.b("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");
        k = b.b("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA");
        b.b("TLS_ECDH_anon_WITH_NULL_SHA");
        b.b("TLS_ECDH_anon_WITH_RC4_128_SHA");
        b.b("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA");
        b.b("TLS_ECDH_anon_WITH_AES_128_CBC_SHA");
        b.b("TLS_ECDH_anon_WITH_AES_256_CBC_SHA");
        b.b("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256");
        b.b("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384");
        b.b("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256");
        b.b("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384");
        b.b("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256");
        b.b("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384");
        b.b("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256");
        b.b("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384");
        l = b.b("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256");
        m = b.b("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384");
        b.b("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256");
        b.b("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384");
        n = b.b("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256");
        o = b.b("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384");
        b.b("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256");
        b.b("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384");
        b.b("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA");
        b.b("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA");
        p = b.b("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
        q = b.b("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256");
        b.b("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
        b.b("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256");
        r = b.b("TLS_AES_128_GCM_SHA256");
        s = b.b("TLS_AES_256_GCM_SHA384");
        t = b.b("TLS_CHACHA20_POLY1305_SHA256");
        b.b("TLS_AES_128_CCM_SHA256");
        b.b("TLS_AES_128_CCM_8_SHA256");
    }

    public yj1(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}
