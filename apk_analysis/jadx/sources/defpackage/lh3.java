package defpackage;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class lh3<T> extends k0<T, T> {
    public final long d;

    public static final class a<T> extends AtomicInteger implements rh3<T> {
        public final wb8<? super T> b;
        public final dc8 c;
        public final dt6<? extends T> d;
        public long e;
        public long f;

        public a(wb8<? super T> wb8Var, long j, dc8 dc8Var, dt6<? extends T> dt6Var) {
            this.b = wb8Var;
            this.c = dc8Var;
            this.d = dt6Var;
            this.e = j;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            this.c.g(bc8Var);
        }

        public final void b() {
            if (getAndIncrement() == 0) {
                int iAddAndGet = 1;
                while (!this.c.g) {
                    long j = this.f;
                    if (j != 0) {
                        this.f = 0L;
                        this.c.f(j);
                    }
                    this.d.a(this);
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            long j = this.e;
            if (j != Long.MAX_VALUE) {
                this.e = j - 1;
            }
            if (j != 0) {
                b();
            } else {
                this.b.onComplete();
            }
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            this.f++;
            this.b.onNext(t);
        }
    }

    public lh3(gg3 gg3Var) {
        super(gg3Var);
        this.d = Long.MAX_VALUE;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        dc8 dc8Var = new dc8();
        wb8Var.a(dc8Var);
        long j = this.d;
        new a(wb8Var, j != Long.MAX_VALUE ? j - 1 : Long.MAX_VALUE, dc8Var, this.c).b();
    }
}
