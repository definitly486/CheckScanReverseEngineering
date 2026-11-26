package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class vp1 extends qp1 {
    public final z87 b;

    public static final class a extends AtomicReference<cp2> implements cp2 {
        public final mq1 b;

        public a(mq1 mq1Var) {
            this.b = mq1Var;
        }

        public final boolean a(Throwable th) {
            cp2 andSet;
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            cp2 cp2Var = get();
            ip2 ip2Var = ip2.DISPOSED;
            if (cp2Var == ip2Var || (andSet = getAndSet(ip2Var)) == ip2Var) {
                return false;
            }
            try {
                this.b.onError(th);
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return ip2.d(get());
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public final String toString() {
            return pg.g(a.class.getSimpleName(), "{", super.toString(), "}");
        }
    }

    public vp1(z87 z87Var) {
        this.b = z87Var;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        a aVar = new a(mq1Var);
        mq1Var.onSubscribe(aVar);
        try {
            this.b.a(aVar);
        } catch (Throwable th) {
            m13.d(th);
            if (aVar.a(th)) {
                return;
            }
            d97.b(th);
        }
    }
}
