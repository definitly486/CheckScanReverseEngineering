package defpackage;

import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes5.dex */
public final class sk2 implements m48 {
    public final a a;
    public m48 b;

    public interface a {
        boolean a(SSLSocket sSLSocket);

        m48 b(SSLSocket sSLSocket);
    }

    public sk2(a aVar) {
        this.a = aVar;
    }

    @Override // defpackage.m48
    public final boolean a(SSLSocket sSLSocket) {
        return this.a.a(sSLSocket);
    }

    @Override // defpackage.m48
    public final String b(SSLSocket sSLSocket) {
        m48 m48VarD = d(sSLSocket);
        if (m48VarD != null) {
            return m48VarD.b(sSLSocket);
        }
        return null;
    }

    @Override // defpackage.m48
    public final void c(SSLSocket sSLSocket, String str, List<? extends ts6> list) {
        m48 m48VarD = d(sSLSocket);
        if (m48VarD != null) {
            m48VarD.c(sSLSocket, str, list);
        }
    }

    public final synchronized m48 d(SSLSocket sSLSocket) {
        try {
            if (this.b == null && this.a.a(sSLSocket)) {
                this.b = this.a.b(sSLSocket);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.b;
    }

    @Override // defpackage.m48
    public final boolean isSupported() {
        return true;
    }
}
