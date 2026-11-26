package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public final class wh3<T> extends k0<T, T> {
    public final w13 d;

    public static final class a<T> extends AtomicBoolean implements rh3<T>, bc8 {
        public final wb8<? super T> b;
        public final he7 c;
        public bc8 d;

        /* JADX INFO: renamed from: wh3$a$a, reason: collision with other inner class name */
        public final class RunnableC0350a implements Runnable {
            public RunnableC0350a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                a.this.d.cancel();
            }
        }

        public a(wb8 wb8Var, w13 w13Var) {
            this.b = wb8Var;
            this.c = w13Var;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.d, bc8Var)) {
                this.d = bc8Var;
                this.b.a(this);
            }
        }

        @Override // defpackage.bc8
        public final void cancel() {
            if (compareAndSet(false, true)) {
                this.c.c(new RunnableC0350a());
            }
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            if (get()) {
                return;
            }
            this.b.onComplete();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            if (get()) {
                d97.b(th);
            } else {
                this.b.onError(th);
            }
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (get()) {
                return;
            }
            this.b.onNext(t);
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            this.d.request(j);
        }
    }

    public wh3(qh3 qh3Var, w13 w13Var) {
        super(qh3Var);
        this.d = w13Var;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        this.c.f(new a(wb8Var, this.d));
    }
}
