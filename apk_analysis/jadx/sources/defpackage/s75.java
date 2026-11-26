package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class s75<T> extends b1<T, T> {
    public final he7 c;

    public static final class a<T> extends AtomicReference<cp2> implements t75<T>, cp2, Runnable {
        public final t75<? super T> b;
        public final he7 c;
        public T d;
        public Throwable e;

        public a(t75<? super T> t75Var, he7 he7Var) {
            this.b = t75Var;
            this.c = he7Var;
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
            ip2.e(this, this.c.c(this));
        }

        @Override // defpackage.t75
        public final void onError(Throwable th) {
            this.e = th;
            ip2.e(this, this.c.c(this));
        }

        @Override // defpackage.t75
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.g(this, cp2Var)) {
                this.b.onSubscribe(this);
            }
        }

        @Override // defpackage.t75
        public final void onSuccess(T t) {
            this.d = t;
            ip2.e(this, this.c.c(this));
        }

        @Override // java.lang.Runnable
        public final void run() {
            Throwable th = this.e;
            t75<? super T> t75Var = this.b;
            if (th != null) {
                this.e = null;
                t75Var.onError(th);
                return;
            }
            T t = this.d;
            if (t == null) {
                t75Var.onComplete();
            } else {
                this.d = null;
                t75Var.onSuccess(t);
            }
        }
    }

    public s75(a75 a75Var, he7 he7Var) {
        super(a75Var);
        this.c = he7Var;
    }

    @Override // defpackage.a75
    public final void d(t75<? super T> t75Var) {
        this.b.a(new a(t75Var, this.c));
    }
}
