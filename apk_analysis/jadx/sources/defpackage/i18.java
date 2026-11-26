package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class i18<T> extends tq5<T> {
    public final p08 b;

    public static final class a<T> extends qk2<T> implements t08<T> {
        public cp2 d;

        @Override // defpackage.cp2
        public final void dispose() {
            set(4);
            this.c = null;
            this.d.dispose();
        }

        @Override // defpackage.t08
        public final void onError(Throwable th) {
            if ((get() & 54) != 0) {
                d97.b(th);
            } else {
                lazySet(2);
                this.b.onError(th);
            }
        }

        @Override // defpackage.t08
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.d, cp2Var)) {
                this.d = cp2Var;
                this.b.onSubscribe(this);
            }
        }

        @Override // defpackage.t08
        public final void onSuccess(T t) {
            int i = get();
            if ((i & 54) != 0) {
                return;
            }
            ls5<? super T> ls5Var = this.b;
            if (i == 8) {
                this.c = t;
                lazySet(16);
                ls5Var.onNext(null);
            } else {
                lazySet(2);
                ls5Var.onNext(t);
            }
            if (get() != 4) {
                ls5Var.onComplete();
            }
        }
    }

    public i18(p08 p08Var) {
        this.b = p08Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        this.b.d(new a(ls5Var));
    }
}
