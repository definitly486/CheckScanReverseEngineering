package defpackage;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class yq5<T> extends g1<T, T> {
    public final long c;
    public final TimeUnit d;
    public final he7 e;

    public static final class a<T> implements ls5<T>, cp2 {
        public final ls5<? super T> b;
        public final long c;
        public final TimeUnit d;
        public final he7.c e;
        public cp2 f;

        /* JADX INFO: renamed from: yq5$a$a, reason: collision with other inner class name */
        public final class RunnableC0367a implements Runnable {
            public RunnableC0367a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                a aVar = a.this;
                he7.c cVar = aVar.e;
                try {
                    aVar.b.onComplete();
                } finally {
                    cVar.dispose();
                }
            }
        }

        public final class b implements Runnable {
            public final Throwable b;

            public b(Throwable th) {
                this.b = th;
            }

            @Override // java.lang.Runnable
            public final void run() {
                a aVar = a.this;
                he7.c cVar = aVar.e;
                try {
                    aVar.b.onError(this.b);
                } finally {
                    cVar.dispose();
                }
            }
        }

        public final class c implements Runnable {
            public final T b;

            public c(T t) {
                this.b = t;
            }

            @Override // java.lang.Runnable
            public final void run() {
                a.this.b.onNext(this.b);
            }
        }

        public a(ls5 ls5Var, long j, TimeUnit timeUnit, he7.c cVar) {
            this.b = ls5Var;
            this.c = j;
            this.d = timeUnit;
            this.e = cVar;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.f.dispose();
            this.e.dispose();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.e.isDisposed();
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            this.e.b(new RunnableC0367a(), this.c, this.d);
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            this.e.b(new b(th), 0L, this.d);
        }

        @Override // defpackage.ls5
        public final void onNext(T t) {
            this.e.b(new c(t), this.c, this.d);
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.f, cp2Var)) {
                this.f = cp2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public yq5(hi0 hi0Var, he7 he7Var) {
        super(hi0Var);
        this.c = 200L;
        this.d = TimeUnit.MILLISECONDS;
        this.e = he7Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        this.b.a(new a(new cq7(ls5Var), this.c, this.d, this.e.b()));
    }
}
