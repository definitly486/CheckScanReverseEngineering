package defpackage;

import io.reactivex.exceptions.CompositeException;

/* JADX INFO: loaded from: classes5.dex */
public final class nq1 extends qp1 {
    public final qp1 b;
    public final rm3.m c = rm3.f;

    public final class a implements mq1 {
        public final mq1 b;

        public a(mq1 mq1Var) {
            this.b = mq1Var;
        }

        @Override // defpackage.mq1
        public final void onComplete() {
            this.b.onComplete();
        }

        @Override // defpackage.mq1
        public final void onError(Throwable th) {
            mq1 mq1Var = this.b;
            try {
                nq1.this.c.getClass();
                mq1Var.onComplete();
            } catch (Throwable th2) {
                m13.d(th2);
                mq1Var.onError(new CompositeException(th, th2));
            }
        }

        @Override // defpackage.mq1
        public final void onSubscribe(cp2 cp2Var) {
            this.b.onSubscribe(cp2Var);
        }
    }

    public nq1(qp1 qp1Var) {
        this.b = qp1Var;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        this.b.b(new a(mq1Var));
    }
}
