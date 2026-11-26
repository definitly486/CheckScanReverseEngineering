package yads;

import android.util.Log;
import com.yandex.mobile.ads.R$raw;
import defpackage.fh8;
import defpackage.j59;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes6.dex */
public final class eh5 {
    public final dc0 a;
    public KeyStore c;
    public X509TrustManager d;
    public final defpackage.cl4 b = new fh8(new defpackage.d94(2));
    public final Object e = new Object();

    public eh5(dc0 dc0Var) {
        this.a = dc0Var;
    }

    public final void a(X509Certificate[] x509CertificateArr, String str) {
        j59 j59Var;
        try {
            ((X509TrustManager) this.b.getValue()).checkServerTrusted(x509CertificateArr, str);
        } catch (CertificateException e) {
            synchronized (this.e) {
                try {
                    b();
                    c();
                    X509TrustManager x509TrustManager = this.d;
                    if (x509TrustManager != null) {
                        x509TrustManager.checkServerTrusted(x509CertificateArr, str);
                        j59Var = j59.a;
                    } else {
                        j59Var = null;
                    }
                    if (j59Var != null) {
                        j59 j59Var2 = j59.a;
                    } else {
                        Log.w("SdkTrustManager", "Custom TrustManager is null");
                        throw e;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void b() {
        KeyStore keyStore;
        X509Certificate x509Certificate;
        c();
        c();
        if (this.c == null) {
            defpackage.cl4 cl4Var = k26.a;
            KeyStore keyStore2 = null;
            try {
                keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                try {
                    keyStore.load(null);
                } catch (IOException unused) {
                }
            } catch (GeneralSecurityException unused2) {
                keyStore = null;
            }
            if (keyStore == null) {
                Log.w("SdkTrustManager", "Custom KeyStore is null, failed to add certs");
            } else {
                de5 de5Var = (de5) this.a;
                de5Var.getClass();
                try {
                    InputStream inputStreamOpenRawResource = de5Var.b.getResources().openRawResource(R$raw.monetization_ads_sdkinternalca);
                    try {
                        byte[] bArrD = defpackage.ex0.d(inputStreamOpenRawResource);
                        inputStreamOpenRawResource.close();
                        try {
                            InputStream inputStreamOpenRawResource2 = de5Var.a.getResources().openRawResource(R$raw.monetization_ads_bundled_cert);
                            try {
                                byte[] bArrD2 = defpackage.ex0.d(inputStreamOpenRawResource2);
                                inputStreamOpenRawResource2.close();
                                byte[][] bArr = (byte[][]) defpackage.aq5.A(new byte[][]{bArrD2}, new byte[][]{bArrD});
                                ArrayList arrayList = new ArrayList();
                                for (byte[] bArr2 : bArr) {
                                    defpackage.cl4 cl4Var2 = k26.a;
                                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr2);
                                    try {
                                        CertificateFactory certificateFactory = (CertificateFactory) k26.a.getValue();
                                        x509Certificate = (X509Certificate) (certificateFactory != null ? certificateFactory.generateCertificate(byteArrayInputStream) : null);
                                    } catch (CertificateException unused3) {
                                        x509Certificate = null;
                                    }
                                    if (x509Certificate != null) {
                                        arrayList.add(x509Certificate);
                                    }
                                }
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    a(keyStore, (X509Certificate) it.next());
                                }
                                keyStore2 = keyStore;
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    defpackage.m96.c(inputStreamOpenRawResource2, th);
                                    throw th2;
                                }
                            }
                        } catch (IOException e) {
                            defpackage.h2.e("Failed to create cert", e);
                            return;
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            defpackage.m96.c(inputStreamOpenRawResource, th3);
                            throw th4;
                        }
                    }
                } catch (IOException e2) {
                    defpackage.h2.e("Failed to create cert", e2);
                    return;
                }
            }
            this.c = keyStore2;
        }
        c();
        if (this.d == null) {
            c();
            if (this.c != null) {
                c();
                this.d = k26.a(this.c);
            }
        }
    }

    public final void c() {
        if (Thread.holdsLock(this.e)) {
            return;
        }
        defpackage.ah.f("Operation should be performed under lock");
    }

    public static final X509TrustManager a() {
        X509TrustManager x509TrustManagerA = k26.a(null);
        if (x509TrustManagerA != null) {
            return x509TrustManagerA;
        }
        defpackage.fg.c("Failed to create default TrustManager");
        return null;
    }

    public static void a(KeyStore keyStore, X509Certificate x509Certificate) {
        try {
            keyStore.setCertificateEntry("custom_cert_" + keyStore.size(), x509Certificate);
        } catch (KeyStoreException e) {
            Log.w("SdkTrustManager", "Failed to store certificate", e);
        }
    }
}
