package defpackage;

import java.security.cert.Certificate;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: classes5.dex */
public final class i94 {
    public static final Logger d = Logger.getLogger(i94.class.getName());
    public static final i94 e = new i94();
    public final ConcurrentSkipListMap a;
    public final ConcurrentHashMap b;
    public final ConcurrentHashMap c;

    public static final class a {
        public final Certificate a;
        public final Certificate b;

        public a(SSLSession sSLSession) {
            sSLSession.getCipherSuite();
            Certificate[] localCertificates = sSLSession.getLocalCertificates();
            Certificate certificate = null;
            Certificate certificate2 = localCertificates != null ? localCertificates[0] : null;
            try {
                Certificate[] peerCertificates = sSLSession.getPeerCertificates();
                if (peerCertificates != null) {
                    certificate = peerCertificates[0];
                }
            } catch (SSLPeerUnverifiedException e) {
                i94.d.log(Level.FINE, "Peer cert not available for peerHost=" + sSLSession.getPeerHost(), (Throwable) e);
            }
            this.a = certificate2;
            this.b = certificate;
        }
    }

    public i94() {
        new ConcurrentSkipListMap();
        this.a = new ConcurrentSkipListMap();
        this.b = new ConcurrentHashMap();
        this.c = new ConcurrentHashMap();
        new ConcurrentHashMap();
    }
}
