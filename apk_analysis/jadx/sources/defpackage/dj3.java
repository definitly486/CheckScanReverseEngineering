package defpackage;

import io.grpc.a;

/* JADX INFO: loaded from: classes5.dex */
public abstract class dj3 implements mw1 {
    public abstract mw1 a();

    @Override // defpackage.l94
    public final m94 c() {
        return a().c();
    }

    @Override // defpackage.nz4
    public final Runnable d(nz4.a aVar) {
        return a().d(aVar);
    }

    @Override // defpackage.nz4
    public void e(h88 h88Var) {
        a().e(h88Var);
    }

    @Override // defpackage.mw1
    public final a getAttributes() {
        return a().getAttributes();
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.d(a(), "delegate");
        return aVarB.toString();
    }
}
