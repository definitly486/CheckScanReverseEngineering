package defpackage;

import io.grpc.b;

/* JADX INFO: loaded from: classes5.dex */
public abstract class lj3 extends dz4 {
    public final ez4 a;

    public lj3(ez4 ez4Var) {
        this.a = ez4Var;
    }

    @Override // defpackage.y81
    public final String a() {
        return this.a.u.a();
    }

    @Override // defpackage.y81
    public final <RequestT, ResponseT> rl1<RequestT, ResponseT> f(ra5<RequestT, ResponseT> ra5Var, b bVar) {
        return this.a.u.f(ra5Var, bVar);
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.d(this.a, "delegate");
        return aVarB.toString();
    }
}
