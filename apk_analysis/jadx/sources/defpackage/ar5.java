package defpackage;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
public final class ar5<T> extends g1<T, T> {
    public final boolean c;

    public static final class a<T> implements ls5<T>, cp2 {
        public final ls5<? super T> b;
        public final boolean c;
        public cp2 d;
        public long e;
        public boolean f;

        public a(ls5 ls5Var, boolean z) {
            this.b = ls5Var;
            this.c = z;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.d.dispose();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            if (this.f) {
                return;
            }
            this.f = true;
            boolean z = this.c;
            ls5<? super T> ls5Var = this.b;
            if (z) {
                ls5Var.onError(new NoSuchElementException());
            } else {
                ls5Var.onComplete();
            }
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            if (this.f) {
                d97.b(th);
            } else {
                this.f = true;
                this.b.onError(th);
            }
        }

        @Override // defpackage.ls5
        public final void onNext(T t) {
            if (this.f) {
                return;
            }
            long j = this.e;
            if (j != 0) {
                this.e = j + 1;
                return;
            }
            this.f = true;
            this.d.dispose();
            ls5<? super T> ls5Var = this.b;
            ls5Var.onNext(t);
            ls5Var.onComplete();
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.d, cp2Var)) {
                this.d = cp2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public ar5(er5 er5Var) {
        super(er5Var);
        this.c = true;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        this.b.a(new a(ls5Var, this.c));
    }
}
