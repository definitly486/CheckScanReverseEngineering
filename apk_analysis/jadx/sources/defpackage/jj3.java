package defpackage;

import io.grpc.h;

/* JADX INFO: loaded from: classes5.dex */
public abstract class jj3 extends h {
    @Override // io.grpc.h
    public final void b(h88 h88Var) {
        ir3 ir3Var = (ir3) this;
        h hVar = ir3Var.k;
        if (hVar == ir3Var.f) {
            hVar = ir3Var.i;
        }
        hVar.b(h88Var);
    }

    @Override // io.grpc.h
    public final void c() {
        ir3 ir3Var = (ir3) this;
        h hVar = ir3Var.k;
        if (hVar == ir3Var.f) {
            hVar = ir3Var.i;
        }
        hVar.c();
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        ir3 ir3Var = (ir3) this;
        h hVar = ir3Var.k;
        if (hVar == ir3Var.f) {
            hVar = ir3Var.i;
        }
        aVarB.d(hVar, "delegate");
        return aVarB.toString();
    }
}
