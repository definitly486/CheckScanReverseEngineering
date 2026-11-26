package com.my.tracker.obfuscated;

import android.content.Context;
import android.os.Build;
import java.io.ByteArrayInputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Enumeration;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes4.dex */
public final class t {
    private KeyStore b() {
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            return keyStore;
        } catch (Throwable th) {
            b3.d("CertManager: exception: " + g2.a(th));
            return null;
        }
    }

    private SSLContext c() {
        String[] strArr = Build.VERSION.SDK_INT >= 29 ? new String[]{"TLSv1.3", "TLSv1.2", "TLS"} : new String[]{"TLSv1.2", "TLS"};
        for (int i = 0; i < strArr.length; i++) {
            try {
                return SSLContext.getInstance(strArr[i]);
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return SSLContext.getInstance("SSL");
    }

    private ArrayList d() {
        ArrayList arrayList = new ArrayList();
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidCAStore");
            if (keyStore != null) {
                keyStore.load(null, null);
                Enumeration<String> enumerationAliases = keyStore.aliases();
                while (enumerationAliases.hasMoreElements()) {
                    try {
                        X509Certificate x509Certificate = (X509Certificate) keyStore.getCertificate(enumerationAliases.nextElement());
                        if (x509Certificate != null) {
                            arrayList.add(x509Certificate);
                        }
                    } catch (Throwable th) {
                        b3.d("CertManager: exception: " + g2.a(th));
                    }
                }
            }
        } catch (Throwable th2) {
            b3.d("CertManager: exception: " + g2.a(th2));
        }
        return arrayList;
    }

    public s a(Context context) {
        if (context == null) {
            b3.d("CertManager: Error make certData – context is null");
            return null;
        }
        CertificateFactory certificateFactoryA = a();
        if (certificateFactoryA == null) {
            b3.d("CertManager: Error make certData – certificateFactory is null");
            return null;
        }
        KeyStore keyStoreB = b();
        if (keyStoreB == null) {
            b3.d("CertManager: Error make certData – keyStore is null");
            return null;
        }
        a(keyStoreB, certificateFactoryA);
        ArrayList arrayListD = d();
        int size = arrayListD.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayListD.get(i);
            i++;
            X509Certificate x509Certificate = (X509Certificate) obj;
            try {
                keyStoreB.setCertificateEntry(x509Certificate.getIssuerDN().getName(), x509Certificate);
            } catch (KeyStoreException e) {
                b3.d("CertManager: exception: " + g2.a(e));
            }
        }
        TrustManagerFactory trustManagerFactoryA = a(keyStoreB);
        if (trustManagerFactoryA == null) {
            b3.d("CertManager: Error make certData – trustManagerFactory is null");
            return null;
        }
        X509TrustManager x509TrustManagerB = b(trustManagerFactoryA);
        if (x509TrustManagerB == null) {
            b3.d("CertManager: Error make certData – x509TrustManager is null");
            return null;
        }
        SSLContext sSLContextA = a(trustManagerFactoryA);
        if (sSLContextA != null) {
            return new s(x509TrustManagerB, sSLContextA, trustManagerFactoryA);
        }
        b3.d("CertManager: Error make certData – sslContext is null");
        return null;
    }

    private X509TrustManager b(TrustManagerFactory trustManagerFactory) {
        for (TrustManager trustManager : trustManagerFactory.getTrustManagers()) {
            if (trustManager instanceof X509TrustManager) {
                return (X509TrustManager) trustManager;
            }
        }
        return null;
    }

    private void a(KeyStore keyStore, CertificateFactory certificateFactory) {
        a(keyStore, certificateFactory, "russian_trusted_root_ca", u.a);
        a(keyStore, certificateFactory, "russian_trusted_root_ca_gost_2025", u.b);
        a(keyStore, certificateFactory, "russian_trusted_sub_ca", u.c);
        a(keyStore, certificateFactory, "russian_trusted_sub_ca_2024", u.d);
        a(keyStore, certificateFactory, "russian_trusted_sub_ca_gost_2025", u.e);
    }

    private void a(KeyStore keyStore, CertificateFactory certificateFactory, String str, byte[] bArr) {
        Certificate certificateA = a(certificateFactory, bArr);
        if (certificateA != null) {
            try {
                keyStore.setCertificateEntry(str, certificateA);
            } catch (KeyStoreException e) {
                b3.d("CertManager: exception: " + g2.a(e));
            }
        }
    }

    private Certificate a(CertificateFactory certificateFactory, byte[] bArr) {
        try {
            return certificateFactory.generateCertificate(new ByteArrayInputStream(bArr));
        } catch (CertificateException e) {
            b3.d("CertManager: exception: " + g2.a(e));
            return null;
        }
    }

    private CertificateFactory a() {
        try {
            return CertificateFactory.getInstance("X.509");
        } catch (CertificateException e) {
            b3.d("CertManager: exception: " + g2.a(e));
            return null;
        }
    }

    private TrustManagerFactory a(KeyStore keyStore) {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init(keyStore);
            return trustManagerFactory;
        } catch (Throwable th) {
            b3.d("CertManager: exception: " + g2.a(th));
            return null;
        }
    }

    private SSLContext a(TrustManagerFactory trustManagerFactory) {
        try {
            SSLContext sSLContextC = c();
            sSLContextC.init(null, trustManagerFactory.getTrustManagers(), new SecureRandom());
            return sSLContextC;
        } catch (Throwable th) {
            b3.d("CertManager: exception: " + g2.a(th));
            return null;
        }
    }
}
