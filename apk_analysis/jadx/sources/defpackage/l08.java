package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class l08<T> extends mz7<T> {
    public final Callable<? extends T> b;

    public l08(Callable<? extends T> callable) {
        this.b = callable;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        v87 v87Var = new v87(rm3.b);
        t08Var.onSubscribe(v87Var);
        if (v87Var.isDisposed()) {
            return;
        }
        try {
            T tCall = this.b.call();
            nq5.a(tCall, "The callable returned a null value");
            if (v87Var.isDisposed()) {
                return;
            }
            t08Var.onSuccess(tCall);
        } catch (Throwable th) {
            m13.d(th);
            if (v87Var.isDisposed()) {
                d97.b(th);
            } else {
                t08Var.onError(th);
            }
        }
    }
}
