package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class dr5 extends tq5<Object> implements kd7<Object> {
    public static final dr5 b = new dr5();

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return null;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super Object> ls5Var) {
        ls5Var.onSubscribe(hx2.INSTANCE);
        ls5Var.onComplete();
    }
}
