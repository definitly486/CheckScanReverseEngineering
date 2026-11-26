package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class e18<T> extends mz7<T> {
    public final mz7 b;
    public final he7 c;

    public static final class a<T> extends AtomicReference<cp2> implements t08<T>, cp2, Runnable {
        public final t08<? super T> b;
        public final kp7 c = new kp7();
        public final c18<? extends T> d;

        public a(t08 t08Var, mz7 mz7Var) {
            this.b = t08Var;
            this.d = mz7Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this);
            ip2.a(this.c);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return ip2.d(get());
        }

        @Override // defpackage.t08
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.t08
        public final void onSubscribe(cp2 cp2Var) {
            ip2.g(this, cp2Var);
        }

        @Override // defpackage.t08
        public final void onSuccess(T t) {
            this.b.onSuccess(t);
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.d.d(this);
        }
    }

    public e18(mz7 mz7Var, he7 he7Var) {
        this.b = mz7Var;
        this.c = he7Var;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        a aVar = new a(t08Var, this.b);
        t08Var.onSubscribe(aVar);
        ip2.e(aVar.c, this.c.c(aVar));
    }
}
