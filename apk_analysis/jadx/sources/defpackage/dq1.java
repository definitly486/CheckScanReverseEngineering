package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class dq1 extends qp1 {
    public final Callable<?> b;

    public dq1(Callable<?> callable) {
        this.b = callable;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        v87 v87Var = new v87(rm3.b);
        mq1Var.onSubscribe(v87Var);
        try {
            this.b.call();
            if (v87Var.isDisposed()) {
                return;
            }
            mq1Var.onComplete();
        } catch (Throwable th) {
            m13.d(th);
            if (v87Var.isDisposed()) {
                d97.b(th);
            } else {
                mq1Var.onError(th);
            }
        }
    }
}
