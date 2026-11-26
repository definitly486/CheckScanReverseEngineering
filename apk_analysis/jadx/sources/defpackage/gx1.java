package defpackage;

import java.util.List;
import javax.net.ssl.SSLSocket;
import org.conscrypt.Conscrypt;

/* JADX INFO: loaded from: classes5.dex */
public final class gx1 implements m48 {
    public static final a a = new a();

    public static final class a implements sk2.a {
        @Override // sk2.a
        public final boolean a(SSLSocket sSLSocket) {
            return fx1.d && Conscrypt.isConscrypt(sSLSocket);
        }

        @Override // sk2.a
        public final m48 b(SSLSocket sSLSocket) {
            return new gx1();
        }
    }

    @Override // defpackage.m48
    public final boolean a(SSLSocket sSLSocket) {
        return Conscrypt.isConscrypt(sSLSocket);
    }

    @Override // defpackage.m48
    public final String b(SSLSocket sSLSocket) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        return null;
    }

    @Override // defpackage.m48
    public final void c(SSLSocket sSLSocket, String str, List<? extends ts6> list) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            Conscrypt.setUseSessionTickets(sSLSocket, true);
            z86 z86Var = z86.a;
            Conscrypt.setApplicationProtocols(sSLSocket, (String[]) z86.a.a(list).toArray(new String[0]));
        }
    }

    @Override // defpackage.m48
    public final boolean isSupported() {
        boolean z = fx1.d;
        return fx1.d;
    }
}
