package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class sw1 {
    public static final sw1 e;
    public final boolean a;
    public final String[] b;
    public final String[] c;
    public final boolean d;

    static {
        zj1[] zj1VarArr = {zj1.TLS_AES_128_GCM_SHA256, zj1.TLS_AES_256_GCM_SHA384, zj1.TLS_CHACHA20_POLY1305_SHA256, zj1.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, zj1.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, zj1.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, zj1.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, zj1.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256, zj1.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256, zj1.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, zj1.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, zj1.TLS_RSA_WITH_AES_128_GCM_SHA256, zj1.TLS_RSA_WITH_AES_256_GCM_SHA384, zj1.TLS_RSA_WITH_AES_128_CBC_SHA, zj1.TLS_RSA_WITH_AES_256_CBC_SHA, zj1.TLS_RSA_WITH_3DES_EDE_CBC_SHA};
        a aVar = new a(true);
        aVar.a(zj1VarArr);
        zw8 zw8Var = zw8.TLS_1_3;
        zw8 zw8Var2 = zw8.TLS_1_2;
        aVar.c(zw8Var, zw8Var2);
        aVar.b();
        sw1 sw1Var = new sw1(aVar);
        e = sw1Var;
        zw8[] zw8VarArr = {zw8Var, zw8Var2, zw8.TLS_1_1, zw8.TLS_1_0};
        boolean z = sw1Var.a;
        if (!z) {
            ah.f("no TLS versions for cleartext connections");
            return;
        }
        if (zw8VarArr.length == 0) {
            fg.c("At least one TlsVersion is required");
            return;
        }
        String[] strArr = new String[zw8VarArr.length];
        for (int i = 0; i < zw8VarArr.length; i++) {
            strArr[i] = zw8VarArr[i].javaName;
        }
        if (z) {
            return;
        }
        ah.f("no TLS extensions for cleartext connections");
    }

    public sw1(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof sw1)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        sw1 sw1Var = (sw1) obj;
        boolean z = sw1Var.a;
        boolean z2 = this.a;
        if (z2 != z) {
            return false;
        }
        if (z2) {
            return Arrays.equals(this.b, sw1Var.b) && Arrays.equals(this.c, sw1Var.c) && this.d == sw1Var.d;
        }
        return true;
    }

    public final int hashCode() {
        if (this.a) {
            return ((((527 + Arrays.hashCode(this.b)) * 31) + Arrays.hashCode(this.c)) * 31) + (!this.d ? 1 : 0);
        }
        return 17;
    }

    public final String toString() {
        List listUnmodifiableList;
        zw8 zw8Var;
        if (!this.a) {
            return "ConnectionSpec()";
        }
        String[] strArr = this.b;
        if (strArr == null) {
            listUnmodifiableList = null;
        } else {
            zj1[] zj1VarArr = new zj1[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                String str = strArr[i];
                zj1VarArr[i] = str.startsWith("SSL_") ? zj1.valueOf("TLS_".concat(str.substring(4))) : zj1.valueOf(str);
            }
            String[] strArr2 = fb9.a;
            listUnmodifiableList = Collections.unmodifiableList(Arrays.asList((Object[]) zj1VarArr.clone()));
        }
        StringBuilder sbD = n7.d("ConnectionSpec(cipherSuites=", listUnmodifiableList == null ? "[use default]" : listUnmodifiableList.toString(), ", tlsVersions=");
        String[] strArr3 = this.c;
        zw8[] zw8VarArr = new zw8[strArr3.length];
        for (int i2 = 0; i2 < strArr3.length; i2++) {
            String str2 = strArr3[i2];
            if ("TLSv1.3".equals(str2)) {
                zw8Var = zw8.TLS_1_3;
            } else if ("TLSv1.2".equals(str2)) {
                zw8Var = zw8.TLS_1_2;
            } else if ("TLSv1.1".equals(str2)) {
                zw8Var = zw8.TLS_1_1;
            } else if ("TLSv1".equals(str2)) {
                zw8Var = zw8.TLS_1_0;
            } else {
                if (!"SSLv3".equals(str2)) {
                    fg.c(bj.c("Unexpected TLS version: ", str2));
                    return null;
                }
                zw8Var = zw8.SSL_3_0;
            }
            zw8VarArr[i2] = zw8Var;
        }
        String[] strArr4 = fb9.a;
        sbD.append(Collections.unmodifiableList(Arrays.asList((Object[]) zw8VarArr.clone())));
        sbD.append(", supportsTlsExtensions=");
        return dh.e(sbD, this.d, ")");
    }

    public static final class a {
        public final boolean a;
        public String[] b;
        public String[] c;
        public boolean d;

        public a(sw1 sw1Var) {
            this.a = sw1Var.a;
            this.b = sw1Var.b;
            this.c = sw1Var.c;
            this.d = sw1Var.d;
        }

        public final void a(zj1... zj1VarArr) {
            if (!this.a) {
                ah.f("no cipher suites for cleartext connections");
                return;
            }
            String[] strArr = new String[zj1VarArr.length];
            for (int i = 0; i < zj1VarArr.length; i++) {
                strArr[i] = zj1VarArr[i].javaName;
            }
            this.b = strArr;
        }

        public final void b() {
            if (this.a) {
                this.d = true;
            } else {
                ah.f("no TLS extensions for cleartext connections");
            }
        }

        public final void c(zw8... zw8VarArr) {
            if (!this.a) {
                ah.f("no TLS versions for cleartext connections");
                return;
            }
            if (zw8VarArr.length == 0) {
                fg.c("At least one TlsVersion is required");
                return;
            }
            String[] strArr = new String[zw8VarArr.length];
            for (int i = 0; i < zw8VarArr.length; i++) {
                strArr[i] = zw8VarArr[i].javaName;
            }
            this.c = strArr;
        }

        public a(boolean z) {
            this.a = z;
        }
    }
}
