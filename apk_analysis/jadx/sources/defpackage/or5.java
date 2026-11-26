package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class or5<T> extends tq5<T> implements kd7<T> {
    public final T b;

    public or5(T t) {
        this.b = t;
    }

    @Override // java.util.concurrent.Callable
    public final T call() {
        return this.b;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        tr5.a aVar = new tr5.a(ls5Var, this.b);
        ls5Var.onSubscribe(aVar);
        aVar.run();
    }
}
