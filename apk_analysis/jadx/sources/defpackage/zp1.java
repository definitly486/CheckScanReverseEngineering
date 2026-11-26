package defpackage;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class zp1 extends qp1 {
    public final qp1 b;
    public final h6 c;

    public static final class a extends AtomicInteger implements mq1, cp2 {
        public final mq1 b;
        public final h6 c;
        public cp2 d;

        public a(mq1 mq1Var, h6 h6Var) {
            this.b = mq1Var;
            this.c = h6Var;
        }

        public final void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.c.run();
                } catch (Throwable th) {
                    m13.d(th);
                    d97.b(th);
                }
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.d.dispose();
            a();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override // defpackage.mq1
        public final void onComplete() {
            this.b.onComplete();
            a();
        }

        @Override // defpackage.mq1
        public final void onError(Throwable th) {
            this.b.onError(th);
            a();
        }

        @Override // defpackage.mq1
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.d, cp2Var)) {
                this.d = cp2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public zp1(qp1 qp1Var, h6 h6Var) {
        this.b = qp1Var;
        this.c = h6Var;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        this.b.b(new a(mq1Var, this.c));
    }
}
