package defpackage;

import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class ch3 extends gg3<Long> {
    public final he7 c;
    public final long d;
    public final long e;
    public final TimeUnit f = TimeUnit.MILLISECONDS;

    public static final class a extends AtomicLong implements bc8, Runnable {
        public final wb8<? super Long> b;
        public long c;
        public final AtomicReference<cp2> d = new AtomicReference<>();

        public a(wb8<? super Long> wb8Var) {
            this.b = wb8Var;
        }

        @Override // defpackage.bc8
        public final void cancel() {
            ip2.a(this.d);
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            if (hc8.e(j)) {
                m00.c(this, j);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            AtomicReference<cp2> atomicReference = this.d;
            if (atomicReference.get() != ip2.DISPOSED) {
                long j = get();
                long j2 = this.c;
                wb8<? super Long> wb8Var = this.b;
                if (j == 0) {
                    wb8Var.onError(new MissingBackpressureException(bg.d(j2, "Can't deliver value ", " due to lack of requests")));
                    ip2.a(atomicReference);
                } else {
                    this.c = j2 + 1;
                    wb8Var.onNext(Long.valueOf(j2));
                    m00.e(this, 1L);
                }
            }
        }
    }

    public ch3(long j, long j2, he7 he7Var) {
        this.d = j;
        this.e = j2;
        this.c = he7Var;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super Long> wb8Var) {
        a aVar = new a(wb8Var);
        wb8Var.a(aVar);
        he7 he7Var = this.c;
        boolean z = he7Var instanceof vy8;
        AtomicReference<cp2> atomicReference = aVar.d;
        if (!z) {
            ip2.g(atomicReference, he7Var.e(aVar, this.d, this.e, this.f));
        } else {
            vy8.c cVar = new vy8.c();
            ip2.g(atomicReference, cVar);
            cVar.c(aVar, this.d, this.e, this.f);
        }
    }
}
