package defpackage;

import android.net.http.SslCertificate;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.lang.reflect.Field;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes4.dex */
public class fn2 extends WebViewClient {
    public final TrustManagerFactory a;

    public fn2(TrustManagerFactory trustManagerFactory) {
        this.a = trustManagerFactory;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        webView.getClass();
        sslErrorHandler.getClass();
        sslError.getClass();
        if (sslError.getPrimaryError() == 3) {
            SslCertificate certificate = sslError.getCertificate();
            try {
                Field declaredField = certificate.getClass().getDeclaredField("mX509Certificate");
                declaredField.getClass();
                declaredField.setAccessible(true);
                Object obj = declaredField.get(certificate);
                obj.getClass();
                X509Certificate[] x509CertificateArr = {(X509Certificate) obj};
                TrustManager[] trustManagers = this.a.getTrustManagers();
                trustManagers.getClass();
                for (TrustManager trustManager : trustManagers) {
                    if (trustManager instanceof X509TrustManager) {
                        try {
                            ((X509TrustManager) trustManager).checkServerTrusted(x509CertificateArr, "generic");
                            sslErrorHandler.proceed();
                            return;
                        } catch (Exception unused) {
                            continue;
                        }
                    }
                }
            } catch (Exception unused2) {
            }
        }
        sslErrorHandler.cancel();
    }
}
