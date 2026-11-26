package defpackage;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class jq1 extends qp1 {
    public final qq1[] b;

    public static final class a implements mq1 {
        public final mq1 b;
        public final fu1 c;
        public final pt d;
        public final AtomicInteger e;

        public a(mq1 mq1Var, fu1 fu1Var, pt ptVar, AtomicInteger atomicInteger) {
            this.b = mq1Var;
            this.c = fu1Var;
            this.d = ptVar;
            this.e = atomicInteger;
        }

        public final void a() {
            if (this.e.decrementAndGet() == 0) {
                Throwable thB = k13.b(this.d);
                mq1 mq1Var = this.b;
                if (thB == null) {
                    mq1Var.onComplete();
                } else {
                    mq1Var.onError(thB);
                }
            }
        }

        @Override // defpackage.mq1
        public final void onComplete() {
            a();
        }

        @Override // defpackage.mq1
        public final void onError(Throwable th) {
            if (k13.a(this.d, th)) {
                a();
            } else {
                d97.b(th);
            }
        }

        @Override // defpackage.mq1
        public final void onSubscribe(cp2 cp2Var) {
            this.c.b(cp2Var);
        }
    }

    public jq1(qq1[] qq1VarArr) {
        this.b = qq1VarArr;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        fu1 fu1Var = new fu1();
        AtomicInteger atomicInteger = new AtomicInteger(this.b.length + 1);
        pt ptVar = new pt();
        mq1Var.onSubscribe(fu1Var);
        for (qq1 qq1Var : this.b) {
            if (fu1Var.c) {
                return;
            }
            if (qq1Var == null) {
                k13.a(ptVar, new NullPointerException("A completable source is null"));
                atomicInteger.decrementAndGet();
            } else {
                qq1Var.b(new a(mq1Var, fu1Var, ptVar, atomicInteger));
            }
        }
        if (atomicInteger.decrementAndGet() == 0) {
            Throwable thB = k13.b(ptVar);
            if (thB == null) {
                mq1Var.onComplete();
            } else {
                mq1Var.onError(thB);
            }
        }
    }
}
