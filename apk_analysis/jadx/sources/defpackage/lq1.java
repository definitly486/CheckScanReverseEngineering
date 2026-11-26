package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class lq1 extends qp1 {
    public final qp1 b;
    public final he7 c;

    public static final class a extends AtomicReference<cp2> implements mq1, cp2, Runnable {
        public final mq1 b;
        public final he7 c;
        public Throwable d;

        public a(mq1 mq1Var, he7 he7Var) {
            this.b = mq1Var;
            this.c = he7Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return ip2.d(get());
        }

        @Override // defpackage.mq1
        public final void onComplete() {
            ip2.e(this, this.c.c(this));
        }

        @Override // defpackage.mq1
        public final void onError(Throwable th) {
            this.d = th;
            ip2.e(this, this.c.c(this));
        }

        @Override // defpackage.mq1
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.g(this, cp2Var)) {
                this.b.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            Throwable th = this.d;
            mq1 mq1Var = this.b;
            if (th == null) {
                mq1Var.onComplete();
            } else {
                this.d = null;
                mq1Var.onError(th);
            }
        }
    }

    public lq1(qp1 qp1Var, he7 he7Var) {
        this.b = qp1Var;
        this.c = he7Var;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        this.b.b(new a(mq1Var, this.c));
    }
}
