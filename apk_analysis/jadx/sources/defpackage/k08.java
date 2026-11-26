package defpackage;

/* JADX INFO: loaded from: classes2.dex */
public final class k08<T> extends lz7<T> {
    public final ll3<T> a;

    /* JADX WARN: Multi-variable type inference failed */
    public k08(ll3<? extends T> ll3Var) {
        this.a = ll3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.lz7
    public final void a(s08<T> s08Var) {
        Object aVar;
        dz7 dz7Var = new dz7();
        s08Var.a(dz7Var);
        if (dz7Var.a) {
            return;
        }
        try {
            aVar = this.a.invoke();
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (!(aVar instanceof k57.a) && !dz7Var.a) {
            s08Var.onSuccess(aVar);
        }
        Throwable thA = k57.a(aVar);
        if (thA == null || dz7Var.a) {
            return;
        }
        s08Var.onError(thA);
    }
}
