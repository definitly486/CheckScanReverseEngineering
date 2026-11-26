package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class k81 implements ra4 {
    public final c81 a;

    public k81(c81 c81Var) {
        c81Var.getClass();
        this.a = c81Var;
    }

    @Override // defpackage.pz3
    public final Object f() {
        c81 c81Var = this.a;
        return c81Var.a().b() + c81Var.b();
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a.a().a());
    }
}
