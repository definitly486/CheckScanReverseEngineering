package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class rq1 extends qp1 {
    public final qp1 b;
    public final he7 c;

    public static final class a extends AtomicReference<cp2> implements mq1, cp2, Runnable {
        public final mq1 b;
        public final kp7 c = new kp7();
        public final qq1 d;

        public a(mq1 mq1Var, qp1 qp1Var) {
            this.b = mq1Var;
            this.d = qp1Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this);
            ip2.a(this.c);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return ip2.d(get());
        }

        @Override // defpackage.mq1
        public final void onComplete() {
            this.b.onComplete();
        }

        @Override // defpackage.mq1
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.mq1
        public final void onSubscribe(cp2 cp2Var) {
            ip2.g(this, cp2Var);
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.d.b(this);
        }
    }

    public rq1(qp1 qp1Var, he7 he7Var) {
        this.b = qp1Var;
        this.c = he7Var;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        a aVar = new a(mq1Var, this.b);
        mq1Var.onSubscribe(aVar);
        ip2.e(aVar.c, this.c.c(aVar));
    }
}
