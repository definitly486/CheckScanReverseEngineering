package yads;

import android.content.Context;
import android.net.http.SslError;
import android.os.Build;
import defpackage.fh8;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

/* JADX INFO: loaded from: classes6.dex */
public final class kk6 {
    public final defpackage.cl4 a = new fh8(new defpackage.dr2(3));

    public final boolean a(Context context, SslError sslError) {
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(context);
        if (fe5VarA != null && fe5VarA.x) {
            X509Certificate x509Certificate = Build.VERSION.SDK_INT >= 29 ? sslError.getCertificate().getX509Certificate() : ac5.a(sslError.getCertificate(), (CertificateFactory) this.a.getValue());
            if (x509Certificate == null) {
                return false;
            }
            int i = cc0.a;
            try {
                bs3.a(new de5(context)).checkServerTrusted(new X509Certificate[]{x509Certificate}, "RSA");
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static final CertificateFactory a() {
        return CertificateFactory.getInstance("X.509");
    }
}
