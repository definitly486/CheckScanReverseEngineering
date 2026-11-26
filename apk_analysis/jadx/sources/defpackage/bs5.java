package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class bs5<T> extends g1<T, T> {
    public final long c;

    public static final class a<T> implements ls5<T>, cp2 {
        public final ls5<? super T> b;
        public boolean c;
        public cp2 d;
        public long e;

        public a(ls5<? super T> ls5Var, long j) {
            this.b = ls5Var;
            this.e = j;
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
            if (this.c) {
                return;
            }
            this.c = true;
            this.d.dispose();
            this.b.onComplete();
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            if (this.c) {
                d97.b(th);
                return;
            }
            this.c = true;
            this.d.dispose();
            this.b.onError(th);
        }

        @Override // defpackage.ls5
        public final void onNext(T t) {
            if (this.c) {
                return;
            }
            long j = this.e;
            long j2 = j - 1;
            this.e = j2;
            if (j > 0) {
                boolean z = j2 == 0;
                this.b.onNext(t);
                if (z) {
                    onComplete();
                }
            }
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.d, cp2Var)) {
                this.d = cp2Var;
                long j = this.e;
                ls5<? super T> ls5Var = this.b;
                if (j != 0) {
                    ls5Var.onSubscribe(this);
                    return;
                }
                this.c = true;
                cp2Var.dispose();
                ls5Var.onSubscribe(hx2.INSTANCE);
                ls5Var.onComplete();
            }
        }
    }

    public bs5(nr5 nr5Var, long j) {
        super(nr5Var);
        this.c = j;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        this.b.a(new a(ls5Var, this.c));
    }
}
