package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class iq1 extends qp1 {
    public final qq1[] b;

    public static final class a extends AtomicInteger implements mq1 {
        public final mq1 b;
        public final AtomicBoolean c;
        public final fu1 d;

        public a(mq1 mq1Var, AtomicBoolean atomicBoolean, fu1 fu1Var, int i) {
            this.b = mq1Var;
            this.c = atomicBoolean;
            this.d = fu1Var;
            lazySet(i);
        }

        @Override // defpackage.mq1
        public final void onComplete() {
            if (decrementAndGet() == 0 && this.c.compareAndSet(false, true)) {
                this.b.onComplete();
            }
        }

        @Override // defpackage.mq1
        public final void onError(Throwable th) {
            this.d.dispose();
            if (this.c.compareAndSet(false, true)) {
                this.b.onError(th);
            } else {
                d97.b(th);
            }
        }

        @Override // defpackage.mq1
        public final void onSubscribe(cp2 cp2Var) {
            this.d.b(cp2Var);
        }
    }

    public iq1(qq1[] qq1VarArr) {
        this.b = qq1VarArr;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        fu1 fu1Var = new fu1();
        a aVar = new a(mq1Var, new AtomicBoolean(), fu1Var, this.b.length + 1);
        mq1Var.onSubscribe(fu1Var);
        for (qq1 qq1Var : this.b) {
            if (fu1Var.c) {
                return;
            }
            if (qq1Var == null) {
                fu1Var.dispose();
                aVar.onError(new NullPointerException("A completable source is null"));
                return;
            }
            qq1Var.b(aVar);
        }
        aVar.onComplete();
    }
}
