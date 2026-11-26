package yads;

import android.util.Log;
import defpackage.j59;
import java.net.Socket;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.X509ExtendedTrustManager;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes6.dex */
public final class df5 extends X509ExtendedTrustManager implements dh5 {
    public final eh5 a;

    public df5(dc0 dc0Var) {
        this.a = new eh5(dc0Var);
    }

    @Override // javax.net.ssl.X509ExtendedTrustManager
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str, Socket socket) throws CertificateException {
        eh5 eh5Var = this.a;
        eh5Var.getClass();
        boolean zA = k26.a();
        defpackage.cl4 cl4Var = eh5Var.b;
        if (zA) {
            of.a((X509TrustManager) cl4Var.getValue(), x509CertificateArr, str, socket);
        } else {
            ((X509TrustManager) cl4Var.getValue()).checkClientTrusted(x509CertificateArr, str);
        }
    }

    @Override // javax.net.ssl.X509ExtendedTrustManager
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str, Socket socket) {
        j59 j59Var;
        eh5 eh5Var = this.a;
        eh5Var.getClass();
        try {
            X509TrustManager x509TrustManager = (X509TrustManager) eh5Var.b.getValue();
            if (k26.a()) {
                of.b(x509TrustManager, x509CertificateArr, str, socket);
            } else {
                x509TrustManager.checkServerTrusted(x509CertificateArr, str);
            }
        } catch (CertificateException e) {
            synchronized (eh5Var.e) {
                try {
                    eh5Var.b();
                    eh5Var.c();
                    X509TrustManager x509TrustManager2 = eh5Var.d;
                    if (x509TrustManager2 != null) {
                        if (k26.a()) {
                            of.b(x509TrustManager2, x509CertificateArr, str, socket);
                        } else {
                            x509TrustManager2.checkServerTrusted(x509CertificateArr, str);
                        }
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

    @Override // javax.net.ssl.X509TrustManager
    public final X509Certificate[] getAcceptedIssuers() {
        return ((X509TrustManager) this.a.b.getValue()).getAcceptedIssuers();
    }

    @Override // javax.net.ssl.X509ExtendedTrustManager
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str, SSLEngine sSLEngine) throws CertificateException {
        eh5 eh5Var = this.a;
        eh5Var.getClass();
        boolean zA = k26.a();
        defpackage.cl4 cl4Var = eh5Var.b;
        if (zA) {
            of.a((X509TrustManager) cl4Var.getValue(), x509CertificateArr, str, sSLEngine);
        } else {
            ((X509TrustManager) cl4Var.getValue()).checkClientTrusted(x509CertificateArr, str);
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        ((X509TrustManager) this.a.b.getValue()).checkClientTrusted(x509CertificateArr, str);
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        this.a.a(x509CertificateArr, str);
    }

    @Override // javax.net.ssl.X509ExtendedTrustManager
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str, SSLEngine sSLEngine) {
        j59 j59Var;
        eh5 eh5Var = this.a;
        eh5Var.getClass();
        try {
            X509TrustManager x509TrustManager = (X509TrustManager) eh5Var.b.getValue();
            if (k26.a()) {
                of.b(x509TrustManager, x509CertificateArr, str, sSLEngine);
            } else {
                x509TrustManager.checkServerTrusted(x509CertificateArr, str);
            }
        } catch (CertificateException e) {
            synchronized (eh5Var.e) {
                try {
                    eh5Var.b();
                    eh5Var.c();
                    X509TrustManager x509TrustManager2 = eh5Var.d;
                    if (x509TrustManager2 != null) {
                        if (k26.a()) {
                            of.b(x509TrustManager2, x509CertificateArr, str, sSLEngine);
                        } else {
                            x509TrustManager2.checkServerTrusted(x509CertificateArr, str);
                        }
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
}
