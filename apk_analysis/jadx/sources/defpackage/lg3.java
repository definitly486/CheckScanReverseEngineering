package defpackage;

import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class lg3<T> extends k0<T, T> {
    public final long d;
    public final TimeUnit e;
    public final he7 f;

    public static final class a<T> extends AtomicReference<cp2> implements Runnable, cp2 {
        public final T b;
        public final long c;
        public final b<T> d;
        public final AtomicBoolean e = new AtomicBoolean();

        public a(T t, long j, b<T> bVar) {
            this.b = t;
            this.c = j;
            this.d = bVar;
        }

        public final void a() {
            if (this.e.compareAndSet(false, true)) {
                b<T> bVar = this.d;
                long j = this.c;
                T t = this.b;
                if (j == bVar.h) {
                    if (bVar.get() == 0) {
                        bVar.cancel();
                        bVar.b.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
                    } else {
                        bVar.b.onNext(t);
                        m00.e(bVar, 1L);
                        ip2.a(this);
                    }
                }
            }
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
            a();
        }
    }

    public static final class b<T> extends AtomicLong implements rh3<T>, bc8 {
        public final dq7 b;
        public final long c;
        public final TimeUnit d;
        public final he7.c e;
        public bc8 f;
        public a g;
        public volatile long h;
        public boolean i;

        public b(dq7 dq7Var, long j, TimeUnit timeUnit, he7.c cVar) {
            this.b = dq7Var;
            this.c = j;
            this.d = timeUnit;
            this.e = cVar;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.f, bc8Var)) {
                this.f = bc8Var;
                this.b.a(this);
                bc8Var.request(Long.MAX_VALUE);
            }
        }

        @Override // defpackage.bc8
        public final void cancel() {
            this.f.cancel();
            this.e.dispose();
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            if (this.i) {
                return;
            }
            this.i = true;
            a aVar = this.g;
            if (aVar != null) {
                ip2.a(aVar);
            }
            if (aVar != null) {
                aVar.a();
            }
            this.b.onComplete();
            this.e.dispose();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            if (this.i) {
                d97.b(th);
                return;
            }
            this.i = true;
            a aVar = this.g;
            if (aVar != null) {
                ip2.a(aVar);
            }
            this.b.onError(th);
            this.e.dispose();
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.i) {
                return;
            }
            long j = this.h + 1;
            this.h = j;
            a aVar = this.g;
            if (aVar != null) {
                ip2.a(aVar);
            }
            a aVar2 = new a(t, j, this);
            this.g = aVar2;
            ip2.e(aVar2, this.e.b(aVar2, this.c, this.d));
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            if (hc8.e(j)) {
                m00.c(this, j);
            }
        }
    }

    public lg3(gg3 gg3Var, he7 he7Var) {
        super(gg3Var);
        this.d = 500L;
        this.e = TimeUnit.MILLISECONDS;
        this.f = he7Var;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        this.c.f(new b(new dq7(wb8Var), this.d, this.e, this.f.b()));
    }
}
