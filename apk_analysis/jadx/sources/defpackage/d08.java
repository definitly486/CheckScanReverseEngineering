package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class d08<T> extends mz7<T> {
    public final rm3.j b;

    public d08(rm3.j jVar) {
        this.b = jVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        try {
            th = (Throwable) this.b.b;
        } catch (Throwable th) {
            th = th;
            m13.d(th);
        }
        t08Var.onSubscribe(hx2.INSTANCE);
        t08Var.onError(th);
    }
}
