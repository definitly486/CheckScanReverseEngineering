package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class g75 extends a75<Object> implements kd7<Object> {
    public static final g75 b = new g75();

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return null;
    }

    @Override // defpackage.a75
    public final void d(t75<? super Object> t75Var) {
        t75Var.onSubscribe(hx2.INSTANCE);
        t75Var.onComplete();
    }
}
