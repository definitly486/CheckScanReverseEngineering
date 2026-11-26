package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class hg3<T, U> extends k0<T, U> {
    public final Callable<? extends U> d;
    public final b9 e;

    public static final class a<T, U> extends rk2<U> implements rh3<T> {
        public final b9 d;
        public final U e;
        public bc8 f;
        public boolean g;

        public a(wb8<? super U> wb8Var, U u, b9 b9Var) {
            super(wb8Var);
            this.d = b9Var;
            this.e = u;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.f, bc8Var)) {
                this.f = bc8Var;
                this.b.a(this);
                bc8Var.request(Long.MAX_VALUE);
            }
        }

        @Override // defpackage.rk2, defpackage.bc8
        public final void cancel() {
            super.cancel();
            this.f.cancel();
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            if (this.g) {
                return;
            }
            this.g = true;
            b(this.e);
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            if (this.g) {
                d97.b(th);
            } else {
                this.g = true;
                this.b.onError(th);
            }
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.g) {
                return;
            }
            try {
                b9 b9Var = this.d;
                ((bm3) b9Var.c).invoke(this.e, t);
            } catch (Throwable th) {
                m13.d(th);
                this.f.cancel();
                onError(th);
            }
        }
    }

    public hg3(vg3 vg3Var, os5 os5Var, b9 b9Var) {
        super(vg3Var);
        this.d = os5Var;
        this.e = b9Var;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super U> wb8Var) {
        try {
            U uCall = this.d.call();
            nq5.a(uCall, "The initial value supplied is null");
            this.c.f(new a(wb8Var, uCall, this.e));
        } catch (Throwable th) {
            wb8Var.a(qx2.INSTANCE);
            wb8Var.onError(th);
        }
    }
}
