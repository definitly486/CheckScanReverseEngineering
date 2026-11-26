package defpackage;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class mh3<T> extends k0<T, T> {
    public final rm3.m d;
    public final long e;

    public static final class a<T> extends AtomicInteger implements rh3<T> {
        public final wb8<? super T> b;
        public final dc8 c;
        public final dt6<? extends T> d;
        public final ze6<? super Throwable> e;
        public long f;
        public long g;

        public a(wb8 wb8Var, long j, rm3.m mVar, dc8 dc8Var, dt6 dt6Var) {
            this.b = wb8Var;
            this.c = dc8Var;
            this.d = dt6Var;
            this.e = mVar;
            this.f = j;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            this.c.g(bc8Var);
        }

        public final void b() {
            if (getAndIncrement() == 0) {
                int iAddAndGet = 1;
                while (!this.c.g) {
                    long j = this.g;
                    if (j != 0) {
                        this.g = 0L;
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
            this.b.onComplete();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            long j = this.f;
            if (j != Long.MAX_VALUE) {
                this.f = j - 1;
            }
            wb8<? super T> wb8Var = this.b;
            if (j == 0) {
                wb8Var.onError(th);
                return;
            }
            try {
                if (this.e.test(th)) {
                    b();
                } else {
                    wb8Var.onError(th);
                }
            } catch (Throwable th2) {
                m13.d(th2);
                wb8Var.onError(new CompositeException(th, th2));
            }
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            this.g++;
            this.b.onNext(t);
        }
    }

    public mh3(gg3 gg3Var) {
        super(gg3Var);
        this.d = rm3.f;
        this.e = 5L;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        dc8 dc8Var = new dc8();
        wb8Var.a(dc8Var);
        new a(wb8Var, this.e, this.d, dc8Var, this.c).b();
    }
}
