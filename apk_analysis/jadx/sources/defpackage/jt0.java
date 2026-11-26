package defpackage;

import java.util.List;
import javax.net.ssl.SSLSocket;
import org.bouncycastle.jsse.BCSSLParameters;
import org.bouncycastle.jsse.BCSSLSocket;

/* JADX INFO: loaded from: classes5.dex */
public final class jt0 implements m48 {
    public static final a a = new a();

    public static final class a implements sk2.a {
        @Override // sk2.a
        public final boolean a(SSLSocket sSLSocket) {
            boolean z = it0.d;
            return false;
        }

        @Override // sk2.a
        public final m48 b(SSLSocket sSLSocket) {
            return new jt0();
        }
    }

    @Override // defpackage.m48
    public final boolean a(SSLSocket sSLSocket) {
        return false;
    }

    @Override // defpackage.m48
    public final String b(SSLSocket sSLSocket) {
        String applicationProtocol = ((BCSSLSocket) sSLSocket).getApplicationProtocol();
        if (applicationProtocol == null ? true : applicationProtocol.equals("")) {
            return null;
        }
        return applicationProtocol;
    }

    @Override // defpackage.m48
    public final void c(SSLSocket sSLSocket, String str, List<? extends ts6> list) {
        if (a(sSLSocket)) {
            BCSSLSocket bCSSLSocket = (BCSSLSocket) sSLSocket;
            BCSSLParameters parameters = bCSSLSocket.getParameters();
            z86 z86Var = z86.a;
            parameters.setApplicationProtocols((String[]) z86.a.a(list).toArray(new String[0]));
            bCSSLSocket.setParameters(parameters);
        }
    }

    @Override // defpackage.m48
    public final boolean isSupported() {
        boolean z = it0.d;
        return it0.d;
    }
}
