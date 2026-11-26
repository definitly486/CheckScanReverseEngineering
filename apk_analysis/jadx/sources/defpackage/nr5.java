package defpackage;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class nr5 extends tq5<Long> {
    public final he7 b;
    public final long c;
    public final long d;
    public final TimeUnit e = TimeUnit.SECONDS;

    public static final class a extends AtomicReference<cp2> implements cp2, Runnable {
        public final ls5<? super Long> b;
        public long c;

        public a(ls5<? super Long> ls5Var) {
            this.b = ls5Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return get() == ip2.DISPOSED;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (get() != ip2.DISPOSED) {
                long j = this.c;
                this.c = 1 + j;
                this.b.onNext(Long.valueOf(j));
            }
        }
    }

    public nr5(long j, long j2, he7 he7Var) {
        this.c = j;
        this.d = j2;
        this.b = he7Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super Long> ls5Var) {
        a aVar = new a(ls5Var);
        ls5Var.onSubscribe(aVar);
        he7 he7Var = this.b;
        if (!(he7Var instanceof vy8)) {
            ip2.g(aVar, he7Var.e(aVar, this.c, this.d, this.e));
        } else {
            vy8.c cVar = new vy8.c();
            ip2.g(aVar, cVar);
            cVar.c(aVar, this.c, this.d, this.e);
        }
    }
}
