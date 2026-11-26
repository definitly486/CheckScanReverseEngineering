package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public final class cs5<T> extends g1<T, T> {
    public final w13 c;

    public static final class a<T> extends AtomicBoolean implements ls5<T>, cp2 {
        public final ls5<? super T> b;
        public final he7 c;
        public cp2 d;

        /* JADX INFO: renamed from: cs5$a$a, reason: collision with other inner class name */
        public final class RunnableC0176a implements Runnable {
            public RunnableC0176a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                a.this.d.dispose();
            }
        }

        public a(ls5 ls5Var, w13 w13Var) {
            this.b = ls5Var;
            this.c = w13Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            if (compareAndSet(false, true)) {
                this.c.c(new RunnableC0176a());
            }
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return get();
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            if (get()) {
                return;
            }
            this.b.onComplete();
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            if (get()) {
                d97.b(th);
            } else {
                this.b.onError(th);
            }
        }

        @Override // defpackage.ls5
        public final void onNext(T t) {
            if (get()) {
                return;
            }
            this.b.onNext(t);
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.d, cp2Var)) {
                this.d = cp2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public cs5(xr5 xr5Var, w13 w13Var) {
        super(xr5Var);
        this.c = w13Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        this.b.a(new a(ls5Var, this.c));
    }
}
