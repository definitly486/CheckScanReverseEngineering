package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class m75<T> extends a75<T> implements Callable<T> {
    public final Callable<? extends T> b;

    public m75(Callable<? extends T> callable) {
        this.b = callable;
    }

    @Override // java.util.concurrent.Callable
    public final T call() {
        return this.b.call();
    }

    @Override // defpackage.a75
    public final void d(t75<? super T> t75Var) {
        v87 v87Var = new v87(rm3.b);
        t75Var.onSubscribe(v87Var);
        if (v87Var.isDisposed()) {
            return;
        }
        try {
            T tCall = this.b.call();
            if (v87Var.isDisposed()) {
                return;
            }
            if (tCall == null) {
                t75Var.onComplete();
            } else {
                t75Var.onSuccess(tCall);
            }
        } catch (Throwable th) {
            m13.d(th);
            if (v87Var.isDisposed()) {
                d97.b(th);
            } else {
                t75Var.onError(th);
            }
        }
    }
}
