package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class q75<T> extends a75<T> implements kd7<T> {
    public final T b;

    public q75(T t) {
        this.b = t;
    }

    @Override // java.util.concurrent.Callable
    public final T call() {
        return this.b;
    }

    @Override // defpackage.a75
    public final void d(t75<? super T> t75Var) {
        t75Var.onSubscribe(hx2.INSTANCE);
        t75Var.onSuccess(this.b);
    }
}
