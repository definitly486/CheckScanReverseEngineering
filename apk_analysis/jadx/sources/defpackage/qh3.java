package defpackage;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class qh3<T> extends k0<T, T> {
    public final he7 d;
    public final boolean e;

    public static final class a<T> extends AtomicReference<Thread> implements rh3<T>, bc8, Runnable {
        public final wb8<? super T> b;
        public final he7.c c;
        public final AtomicReference<bc8> d = new AtomicReference<>();
        public final AtomicLong e = new AtomicLong();
        public final boolean f;
        public dt6<T> g;

        /* JADX INFO: renamed from: qh3$a$a, reason: collision with other inner class name */
        public static final class RunnableC0319a implements Runnable {
            public final bc8 b;
            public final long c;

            public RunnableC0319a(long j, bc8 bc8Var) {
                this.b = bc8Var;
                this.c = j;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.b.request(this.c);
            }
        }

        public a(wb8<? super T> wb8Var, he7.c cVar, dt6<T> dt6Var, boolean z) {
            this.b = wb8Var;
            this.c = cVar;
            this.g = dt6Var;
            this.f = !z;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.d(this.d, bc8Var)) {
                long andSet = this.e.getAndSet(0L);
                if (andSet != 0) {
                    b(andSet, bc8Var);
                }
            }
        }

        public final void b(long j, bc8 bc8Var) {
            if (this.f || Thread.currentThread() == get()) {
                bc8Var.request(j);
            } else {
                this.c.a(new RunnableC0319a(j, bc8Var));
            }
        }

        @Override // defpackage.bc8
        public final void cancel() {
            hc8.a(this.d);
            this.c.dispose();
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            this.b.onComplete();
            this.c.dispose();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            this.b.onError(th);
            this.c.dispose();
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            this.b.onNext(t);
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            if (hc8.e(j)) {
                AtomicReference<bc8> atomicReference = this.d;
                bc8 bc8Var = atomicReference.get();
                if (bc8Var != null) {
                    b(j, bc8Var);
                    return;
                }
                AtomicLong atomicLong = this.e;
                m00.c(atomicLong, j);
                bc8 bc8Var2 = atomicReference.get();
                if (bc8Var2 != null) {
                    long andSet = atomicLong.getAndSet(0L);
                    if (andSet != 0) {
                        b(andSet, bc8Var2);
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            lazySet(Thread.currentThread());
            dt6<T> dt6Var = this.g;
            this.g = null;
            dt6Var.a(this);
        }
    }

    public qh3(gg3<T> gg3Var, he7 he7Var, boolean z) {
        super(gg3Var);
        this.d = he7Var;
        this.e = z;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        he7.c cVarB = this.d.b();
        a aVar = new a(wb8Var, cVarB, this.c, this.e);
        wb8Var.a(aVar);
        cVarB.a(aVar);
    }
}
