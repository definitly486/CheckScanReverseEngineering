package defpackage;

import java.net.Socket;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class rv5 {
    public static final List<us6> a = Collections.unmodifiableList(Arrays.asList(us6.HTTP_2));

    public static SSLSocket a(SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, Socket socket, String str, int i, sw1 sw1Var) throws SSLPeerUnverifiedException {
        o8.l(sSLSocketFactory, "sslSocketFactory");
        o8.l(socket, "socket");
        o8.l(sw1Var, "spec");
        SSLSocket sSLSocket = (SSLSocket) sSLSocketFactory.createSocket(socket, str, i, true);
        String[] strArr = sw1Var.b;
        String[] strArr2 = strArr != null ? (String[]) fb9.a(strArr, sSLSocket.getEnabledCipherSuites()) : null;
        String[] strArr3 = (String[]) fb9.a(sw1Var.c, sSLSocket.getEnabledProtocols());
        sw1.a aVar = new sw1.a(sw1Var);
        boolean z = aVar.a;
        if (!z) {
            ah.f("no cipher suites for cleartext connections");
            return null;
        }
        if (strArr2 == null) {
            aVar.b = null;
        } else {
            aVar.b = (String[]) strArr2.clone();
        }
        if (!z) {
            ah.f("no TLS versions for cleartext connections");
            return null;
        }
        if (strArr3 == null) {
            aVar.c = null;
        } else {
            aVar.c = (String[]) strArr3.clone();
        }
        sw1 sw1Var2 = new sw1(aVar);
        sSLSocket.setEnabledProtocols(sw1Var2.c);
        String[] strArr4 = sw1Var2.b;
        if (strArr4 != null) {
            sSLSocket.setEnabledCipherSuites(strArr4);
        }
        ov5 ov5Var = ov5.c;
        boolean z2 = sw1Var.d;
        List<us6> list = a;
        String strD = ov5Var.d(sSLSocket, str, z2 ? list : null);
        o8.q("Only " + list + " are supported, but negotiated protocol is %s", list.contains(us6.a(strD)), strD);
        if (hostnameVerifier.verify((str.startsWith("[") && str.endsWith("]")) ? rg.f(1, 1, str) : str, sSLSocket.getSession())) {
            return sSLSocket;
        }
        throw new SSLPeerUnverifiedException("Cannot verify hostname: ".concat(str));
    }
}
