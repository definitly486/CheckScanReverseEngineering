package yads;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class ay4 extends SSLSocketFactory {
    public static final /* synthetic */ int b = 0;
    public final SSLSocketFactory a;

    public ay4(SSLSocketFactory sSLSocketFactory) {
        this.a = sSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) throws IOException {
        Socket socketCreateSocket = this.a.createSocket(str, i);
        String[] strArrA = zx4.a(this.a);
        socketCreateSocket.getClass();
        ((SSLSocket) socketCreateSocket).setEnabledCipherSuites(strArrA);
        return socketCreateSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return zx4.a(this.a);
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return zx4.b(this.a);
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        Socket socketCreateSocket = this.a.createSocket(inetAddress, i);
        String[] strArrA = zx4.a(this.a);
        socketCreateSocket.getClass();
        ((SSLSocket) socketCreateSocket).setEnabledCipherSuites(strArrA);
        return socketCreateSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        Socket socketCreateSocket = this.a.createSocket(socket, str, i, z);
        String[] strArrA = zx4.a(this.a);
        socketCreateSocket.getClass();
        ((SSLSocket) socketCreateSocket).setEnabledCipherSuites(strArrA);
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        Socket socketCreateSocket = this.a.createSocket(str, i, inetAddress, i2);
        String[] strArrA = zx4.a(this.a);
        socketCreateSocket.getClass();
        ((SSLSocket) socketCreateSocket).setEnabledCipherSuites(strArrA);
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        Socket socketCreateSocket = this.a.createSocket(inetAddress, i, inetAddress2, i2);
        String[] strArrA = zx4.a(this.a);
        socketCreateSocket.getClass();
        ((SSLSocket) socketCreateSocket).setEnabledCipherSuites(strArrA);
        return socketCreateSocket;
    }
}
