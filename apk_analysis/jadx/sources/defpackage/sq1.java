package defpackage;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public final class sq1 extends qp1 {
    public final qp1 b;
    public final long c;
    public final TimeUnit d = TimeUnit.SECONDS;
    public final he7 e;

    public final class a implements Runnable {
        public final AtomicBoolean b;
        public final fu1 c;
        public final mq1 d;

        public a(AtomicBoolean atomicBoolean, fu1 fu1Var, mq1 mq1Var) {
            this.b = atomicBoolean;
            this.c = fu1Var;
            this.d = mq1Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.b.compareAndSet(false, true)) {
                this.c.d();
                sq1 sq1Var = sq1.this;
                this.d.onError(new TimeoutException(k13.c(sq1Var.c, sq1Var.d)));
            }
        }
    }

    public static final class b implements mq1 {
        public final fu1 b;
        public final AtomicBoolean c;
        public final mq1 d;

        public b(fu1 fu1Var, AtomicBoolean atomicBoolean, mq1 mq1Var) {
            this.b = fu1Var;
            this.c = atomicBoolean;
            this.d = mq1Var;
        }

        @Override // defpackage.mq1
        public final void onComplete() {
            if (this.c.compareAndSet(false, true)) {
                this.b.dispose();
                this.d.onComplete();
            }
        }

        @Override // defpackage.mq1
        public final void onError(Throwable th) {
            if (!this.c.compareAndSet(false, true)) {
                d97.b(th);
            } else {
                this.b.dispose();
                this.d.onError(th);
            }
        }

        @Override // defpackage.mq1
        public final void onSubscribe(cp2 cp2Var) {
            this.b.b(cp2Var);
        }
    }

    public sq1(qp1 qp1Var, long j, he7 he7Var) {
        this.b = qp1Var;
        this.c = j;
        this.e = he7Var;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        fu1 fu1Var = new fu1();
        mq1Var.onSubscribe(fu1Var);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        fu1Var.b(this.e.d(new a(atomicBoolean, fu1Var, mq1Var), this.c, this.d));
        this.b.b(new b(fu1Var, atomicBoolean, mq1Var));
    }
}
