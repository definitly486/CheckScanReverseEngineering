package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class lh1 implements pz3 {
    public final hd1 a;

    public lh1(hd1 hd1Var) {
        hd1Var.getClass();
        this.a = hd1Var;
    }

    @Override // defpackage.pz3
    public final Object f() {
        hd1 hd1Var = this.a;
        return hd1Var.h() + " + " + hd1Var.g;
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a.a());
    }
}
