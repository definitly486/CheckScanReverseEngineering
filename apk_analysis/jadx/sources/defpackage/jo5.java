package defpackage;

import java.security.Principal;
import java.security.cert.Certificate;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSessionContext;
import javax.security.cert.X509Certificate;

/* JADX INFO: loaded from: classes5.dex */
public class jo5 implements SSLSession {
    @Override // javax.net.ssl.SSLSession
    public final int getApplicationBufferSize() {
        return 0;
    }

    @Override // javax.net.ssl.SSLSession
    public final String getCipherSuite() {
        return null;
    }

    @Override // javax.net.ssl.SSLSession
    public final long getCreationTime() {
        return 0L;
    }

    @Override // javax.net.ssl.SSLSession
    public final byte[] getId() {
        return new byte[0];
    }

    @Override // javax.net.ssl.SSLSession
    public final long getLastAccessedTime() {
        return 0L;
    }

    @Override // javax.net.ssl.SSLSession
    public final Certificate[] getLocalCertificates() {
        return new Certificate[0];
    }

    @Override // javax.net.ssl.SSLSession
    public final Principal getLocalPrincipal() {
        return null;
    }

    @Override // javax.net.ssl.SSLSession
    public final int getPacketBufferSize() {
        return 0;
    }

    @Override // javax.net.ssl.SSLSession
    public final X509Certificate[] getPeerCertificateChain() {
        throw new UnsupportedOperationException("This method is deprecated and marked for removal. Use the getPeerCertificates() method instead.");
    }

    @Override // javax.net.ssl.SSLSession
    public final Certificate[] getPeerCertificates() {
        return new Certificate[0];
    }

    @Override // javax.net.ssl.SSLSession
    public final int getPeerPort() {
        return 0;
    }

    @Override // javax.net.ssl.SSLSession
    public final Principal getPeerPrincipal() {
        return null;
    }

    @Override // javax.net.ssl.SSLSession
    public final String getProtocol() {
        return null;
    }

    @Override // javax.net.ssl.SSLSession
    public final SSLSessionContext getSessionContext() {
        return null;
    }

    @Override // javax.net.ssl.SSLSession
    public final Object getValue(String str) {
        return null;
    }

    @Override // javax.net.ssl.SSLSession
    public final String[] getValueNames() {
        return new String[0];
    }

    @Override // javax.net.ssl.SSLSession
    public final void invalidate() {
    }

    @Override // javax.net.ssl.SSLSession
    public final boolean isValid() {
        return false;
    }

    @Override // javax.net.ssl.SSLSession
    public final void putValue(String str, Object obj) {
    }

    @Override // javax.net.ssl.SSLSession
    public final void removeValue(String str) {
    }
}
