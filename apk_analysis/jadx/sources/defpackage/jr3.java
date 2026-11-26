package defpackage;

import io.grpc.h;

/* JADX INFO: loaded from: classes5.dex */
public final class jr3 extends kj3 {
    public h a;
    public final /* synthetic */ ir3 b;

    public jr3(ir3 ir3Var) {
        this.b = ir3Var;
    }

    @Override // io.grpc.h.e
    public final void f(cx1 cx1Var, h.k kVar) {
        h hVar = this.a;
        ir3 ir3Var = this.b;
        h hVar2 = ir3Var.k;
        if (hVar == hVar2) {
            o8.s(ir3Var.n, "there's pending lb while current lb has been out of READY");
            ir3Var.l = cx1Var;
            ir3Var.m = kVar;
            if (cx1Var != cx1.CONNECTING) {
                ir3Var.f();
                return;
            }
            return;
        }
        if (hVar == ir3Var.i) {
            boolean z = cx1Var == cx1.READY;
            ir3Var.n = z;
            if (z || hVar2 == ir3Var.f) {
                ir3Var.g.f(cx1Var, kVar);
            } else {
                ir3Var.f();
            }
        }
    }

    @Override // defpackage.kj3
    public final h.e g() {
        return this.b.g;
    }
}
