package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class r08<T> extends mz7<T> {
    public final mz7 b;
    public final he7 c;

    public static final class a<T> extends AtomicReference<cp2> implements t08<T>, cp2, Runnable {
        public final t08<? super T> b;
        public final he7 c;
        public T d;
        public Throwable e;

        public a(t08<? super T> t08Var, he7 he7Var) {
            this.b = t08Var;
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

        @Override // defpackage.t08
        public final void onError(Throwable th) {
            this.e = th;
            ip2.e(this, this.c.c(this));
        }

        @Override // defpackage.t08
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.g(this, cp2Var)) {
                this.b.onSubscribe(this);
            }
        }

        @Override // defpackage.t08
        public final void onSuccess(T t) {
            this.d = t;
            ip2.e(this, this.c.c(this));
        }

        @Override // java.lang.Runnable
        public final void run() {
            Throwable th = this.e;
            t08<? super T> t08Var = this.b;
            if (th != null) {
                t08Var.onError(th);
            } else {
                t08Var.onSuccess(this.d);
            }
        }
    }

    public r08(mz7 mz7Var, he7 he7Var) {
        this.b = mz7Var;
        this.c = he7Var;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        this.b.d(new a(t08Var, this.c));
    }
}
