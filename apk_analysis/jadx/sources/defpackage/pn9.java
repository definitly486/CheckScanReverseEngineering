package defpackage;

import android.net.http.SslCertificate;
import android.net.http.SslError;
import android.os.Build;
import java.lang.reflect.Field;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes4.dex */
public abstract class pn9 {
    public static boolean a(SslError sslError, TrustManagerFactory trustManagerFactory) {
        X509Certificate x509Certificate;
        if (sslError.getPrimaryError() == 3) {
            SslCertificate certificate = sslError.getCertificate();
            try {
                if (Build.VERSION.SDK_INT >= 29) {
                    x509Certificate = certificate.getX509Certificate();
                } else {
                    Field declaredField = certificate.getClass().getDeclaredField("mX509Certificate");
                    declaredField.setAccessible(true);
                    x509Certificate = (X509Certificate) declaredField.get(certificate);
                }
                X509Certificate[] x509CertificateArr = {x509Certificate};
                for (TrustManager trustManager : trustManagerFactory.getTrustManagers()) {
                    if (trustManager instanceof X509TrustManager) {
                        try {
                            ((X509TrustManager) trustManager).checkServerTrusted(x509CertificateArr, "generic");
                            return true;
                        } catch (Exception e) {
                            y14.w(null, "SslErrorVerifier: exception=" + y14.p(e));
                        }
                    }
                }
            } catch (Exception e2) {
                y14.w(null, "SslErrorVerifier: exception2=" + y14.p(e2));
            }
        }
        return false;
    }
}
