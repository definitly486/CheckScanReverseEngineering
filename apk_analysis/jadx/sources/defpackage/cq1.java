package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class cq1 extends qp1 {
    public final h6 b;

    public cq1(h6 h6Var) {
        this.b = h6Var;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        v87 v87Var = new v87(rm3.b);
        mq1Var.onSubscribe(v87Var);
        try {
            this.b.run();
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
