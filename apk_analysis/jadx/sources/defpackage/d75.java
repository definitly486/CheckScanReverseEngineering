package defpackage;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class d75<T> extends b1<T, T> {
    public final long c;
    public final TimeUnit d;
    public final he7 e;

    public static final class a<T> extends AtomicReference<cp2> implements t75<T>, cp2, Runnable {
        public final t75<? super T> b;
        public final long c;
        public final TimeUnit d;
        public final he7 e;
        public T f;
        public Throwable g;

        public a(t75<? super T> t75Var, long j, TimeUnit timeUnit, he7 he7Var) {
            this.b = t75Var;
            this.c = j;
            this.d = timeUnit;
            this.e = he7Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return ip2.d(get());
        }

        @Override // defpackage.t75
        public final void onComplete() {
            ip2.e(this, this.e.d(this, this.c, this.d));
        }

        @Override // defpackage.t75
        public final void onError(Throwable th) {
            this.g = th;
            ip2.e(this, this.e.d(this, this.c, this.d));
        }

        @Override // defpackage.t75
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.g(this, cp2Var)) {
                this.b.onSubscribe(this);
            }
        }

        @Override // defpackage.t75
        public final void onSuccess(T t) {
            this.f = t;
            ip2.e(this, this.e.d(this, this.c, this.d));
        }

        @Override // java.lang.Runnable
        public final void run() {
            Throwable th = this.g;
            t75<? super T> t75Var = this.b;
            if (th != null) {
                t75Var.onError(th);
                return;
            }
            T t = this.f;
            if (t != null) {
                t75Var.onSuccess(t);
            } else {
                t75Var.onComplete();
            }
        }
    }

    public d75(e75 e75Var, long j, he7 he7Var) {
        super(e75Var);
        this.c = j;
        this.d = TimeUnit.SECONDS;
        this.e = he7Var;
    }

    @Override // defpackage.a75
    public final void d(t75<? super T> t75Var) {
        this.b.a(new a(t75Var, this.c, this.d, this.e));
    }
}
