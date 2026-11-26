package defpackage;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
public final class oh3<T> extends k0<T, T> {
    public final boolean d;

    public static final class a<T> extends rk2<T> implements rh3<T> {
        public final boolean d;
        public bc8 e;
        public boolean f;

        public a(wb8 wb8Var, boolean z) {
            super(wb8Var);
            this.d = z;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.e, bc8Var)) {
                this.e = bc8Var;
                this.b.a(this);
                bc8Var.request(Long.MAX_VALUE);
            }
        }

        @Override // defpackage.rk2, defpackage.bc8
        public final void cancel() {
            super.cancel();
            this.e.cancel();
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            if (this.f) {
                return;
            }
            this.f = true;
            T t = this.c;
            this.c = null;
            if (t == null) {
                t = null;
            }
            if (t != null) {
                b(t);
                return;
            }
            boolean z = this.d;
            wb8<? super T> wb8Var = this.b;
            if (z) {
                wb8Var.onError(new NoSuchElementException());
            } else {
                wb8Var.onComplete();
            }
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            if (this.f) {
                d97.b(th);
            } else {
                this.f = true;
                this.b.onError(th);
            }
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.f) {
                return;
            }
            if (this.c == null) {
                this.c = t;
                return;
            }
            this.f = true;
            this.e.cancel();
            this.b.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }
    }

    public oh3(yg3 yg3Var) {
        super(yg3Var);
        this.d = true;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        this.c.f(new a(wb8Var, this.d));
    }
}
