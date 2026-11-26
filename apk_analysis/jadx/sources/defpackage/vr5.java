package defpackage;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
public final class vr5<T> extends mz7<T> {
    public final tq5 b;

    public static final class a<T> implements ls5<T>, cp2 {
        public final t08<? super T> b;
        public cp2 c;
        public T d;
        public boolean e;

        public a(t08 t08Var) {
            this.b = t08Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.c.dispose();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            if (this.e) {
                return;
            }
            this.e = true;
            T t = this.d;
            this.d = null;
            if (t == null) {
                t = null;
            }
            t08<? super T> t08Var = this.b;
            if (t != null) {
                t08Var.onSuccess(t);
            } else {
                t08Var.onError(new NoSuchElementException());
            }
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            if (this.e) {
                d97.b(th);
            } else {
                this.e = true;
                this.b.onError(th);
            }
        }

        @Override // defpackage.ls5
        public final void onNext(T t) {
            if (this.e) {
                return;
            }
            if (this.d == null) {
                this.d = t;
                return;
            }
            this.e = true;
            this.c.dispose();
            this.b.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.c, cp2Var)) {
                this.c = cp2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public vr5(tq5 tq5Var) {
        this.b = tq5Var;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        this.b.a(new a(t08Var));
    }
}
