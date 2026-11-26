package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class e88 implements b88 {
    public final l78 a;

    public e88(l78 l78Var) {
        this.a = l78Var;
    }

    @Override // defpackage.b88
    public final mz7<Long> a(ha3 ha3Var) {
        return this.a.b(new na3(ha3Var.b(), ha3Var.c(), ha3Var.a(), ha3Var.d(), ha3Var.e()));
    }

    @Override // defpackage.b88
    public final p08 b(String str, ha3 ha3Var) {
        ha3Var.getClass();
        mz7<f88> mz7VarA = this.a.a(str, new na3(ha3Var.b(), ha3Var.c(), ha3Var.a(), ha3Var.d(), ha3Var.e()));
        x52 x52Var = new x52(d88.f, 3);
        mz7VarA.getClass();
        return new p08(mz7VarA, x52Var);
    }
}
