package defpackage;

import android.os.Build;
import java.io.ByteArrayInputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import javax.net.ssl.SSLContext;

/* JADX INFO: loaded from: classes4.dex */
public final class oy9 {
    public static void a(KeyStore keyStore, CertificateFactory certificateFactory, String str, byte[] bArr) {
        Certificate certificateGenerateCertificate;
        try {
            certificateGenerateCertificate = certificateFactory.generateCertificate(new ByteArrayInputStream(bArr));
        } catch (CertificateException e) {
            y14.w(null, "CertManager: exception: " + y14.p(e));
            certificateGenerateCertificate = null;
        }
        if (certificateGenerateCertificate != null) {
            try {
                keyStore.setCertificateEntry(str, certificateGenerateCertificate);
            } catch (KeyStoreException e2) {
                y14.w(null, "CertManager: exception: " + y14.p(e2));
            }
        }
    }

    public static SSLContext b() {
        String[] strArr = Build.VERSION.SDK_INT >= 29 ? new String[]{"TLSv1.3", "TLSv1.2", "TLS"} : new String[]{"TLSv1.2", "TLS"};
        for (int i = 0; i < strArr.length; i++) {
            try {
                return SSLContext.getInstance(strArr[i]);
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return SSLContext.getInstance("SSL");
    }
}
