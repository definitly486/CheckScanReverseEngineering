package defpackage;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class tq1 extends qp1 {
    public final long b = 2;
    public final TimeUnit c = TimeUnit.SECONDS;
    public final he7 d;

    public static final class a extends AtomicReference<cp2> implements cp2, Runnable {
        public final mq1 b;

        public a(mq1 mq1Var) {
            this.b = mq1Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return ip2.d(get());
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.b.onComplete();
        }
    }

    public tq1(he7 he7Var) {
        this.d = he7Var;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        a aVar = new a(mq1Var);
        mq1Var.onSubscribe(aVar);
        ip2.e(aVar, this.d.d(aVar, this.b, this.c));
    }
}
