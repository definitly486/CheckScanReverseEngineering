package defpackage;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class qz7<T> extends mz7<T> {
    public final mz7 b;
    public final long c = 3;
    public final TimeUnit d = TimeUnit.SECONDS;
    public final he7 e;

    public final class a implements t08<T> {
        public final kp7 b;
        public final t08<? super T> c;

        /* JADX INFO: renamed from: qz7$a$a, reason: collision with other inner class name */
        public final class RunnableC0323a implements Runnable {
            public final Throwable b;

            public RunnableC0323a(Throwable th) {
                this.b = th;
            }

            @Override // java.lang.Runnable
            public final void run() {
                a.this.c.onError(this.b);
            }
        }

        public final class b implements Runnable {
            public final T b;

            public b(T t) {
                this.b = t;
            }

            @Override // java.lang.Runnable
            public final void run() {
                a.this.c.onSuccess(this.b);
            }
        }

        public a(kp7 kp7Var, t08<? super T> t08Var) {
            this.b = kp7Var;
            this.c = t08Var;
        }

        @Override // defpackage.t08
        public final void onError(Throwable th) {
            qz7 qz7Var = qz7.this;
            ip2.e(this.b, qz7Var.e.d(new RunnableC0323a(th), 0L, qz7Var.d));
        }

        @Override // defpackage.t08
        public final void onSubscribe(cp2 cp2Var) {
            ip2.e(this.b, cp2Var);
        }

        @Override // defpackage.t08
        public final void onSuccess(T t) {
            qz7 qz7Var = qz7.this;
            ip2.e(this.b, qz7Var.e.d(new b(t), qz7Var.c, qz7Var.d));
        }
    }

    public qz7(mz7 mz7Var, he7 he7Var) {
        this.b = mz7Var;
        this.e = he7Var;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        kp7 kp7Var = new kp7();
        t08Var.onSubscribe(kp7Var);
        this.b.d(new a(kp7Var, t08Var));
    }
}
