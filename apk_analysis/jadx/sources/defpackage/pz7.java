package defpackage;

/* JADX INFO: loaded from: classes2.dex */
public final class pz7<T> extends lz7<T> {
    public final l90 a;

    public pz7(l90 l90Var) {
        this.a = l90Var;
    }

    @Override // defpackage.lz7
    public final void a(s08<T> s08Var) {
        c08 c08Var = new c08(s08Var);
        s08Var.a(c08Var);
        try {
            this.a.invoke(c08Var);
        } catch (Throwable th) {
            c08Var.b(th);
        }
    }
}
