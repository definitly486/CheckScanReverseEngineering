package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class o08<T> extends mz7<T> {
    public final T b;

    public o08(T t) {
        this.b = t;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        t08Var.onSubscribe(hx2.INSTANCE);
        t08Var.onSuccess(this.b);
    }
}
