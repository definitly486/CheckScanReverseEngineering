package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class rp1 extends qp1 {
    public final qp1 b;
    public final qq1 c;

    public static final class a implements mq1 {
        public final b b;
        public final mq1 c;

        public a(b bVar, mq1 mq1Var) {
            this.b = bVar;
            this.c = mq1Var;
        }

        @Override // defpackage.mq1
        public final void onComplete() {
            this.c.onComplete();
        }

        @Override // defpackage.mq1
        public final void onError(Throwable th) {
            this.c.onError(th);
        }

        @Override // defpackage.mq1
        public final void onSubscribe(cp2 cp2Var) {
            ip2.e(this.b, cp2Var);
        }
    }

    public static final class b extends AtomicReference<cp2> implements mq1, cp2 {
        public final mq1 b;
        public final qq1 c;

        public b(mq1 mq1Var, qq1 qq1Var) {
            this.b = mq1Var;
            this.c = qq1Var;
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
            this.c.b(new a(this, this.b));
        }

        @Override // defpackage.mq1
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.mq1
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.g(this, cp2Var)) {
                this.b.onSubscribe(this);
            }
        }
    }

    public rp1(qp1 qp1Var, qq1 qq1Var) {
        this.b = qp1Var;
        this.c = qq1Var;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        this.b.b(new b(mq1Var, this.c));
    }
}
