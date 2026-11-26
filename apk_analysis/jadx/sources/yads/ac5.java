package yads;

import android.net.http.SslCertificate;
import android.os.Bundle;
import java.io.ByteArrayInputStream;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ac5 {
    public static final X509Certificate a(SslCertificate sslCertificate, CertificateFactory certificateFactory) {
        byte[] byteArray;
        if (!defpackage.aa4.e(certificateFactory.getType(), "X.509")) {
            certificateFactory.getType();
            return null;
        }
        Bundle bundleSaveState = SslCertificate.saveState(sslCertificate);
        if (bundleSaveState != null && (byteArray = bundleSaveState.getByteArray("x509-certificate")) != null) {
            try {
                Certificate certificateGenerateCertificate = certificateFactory.generateCertificate(new ByteArrayInputStream(byteArray));
                if (certificateGenerateCertificate instanceof X509Certificate) {
                    return (X509Certificate) certificateGenerateCertificate;
                }
            } catch (CertificateException unused) {
            }
        }
        return null;
    }
}
