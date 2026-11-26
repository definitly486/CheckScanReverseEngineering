package defpackage;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
public final class ph3<T> extends mz7<T> implements tm3<T> {
    public final yg3 b;

    public static final class a<T> implements rh3<T>, cp2 {
        public final t08<? super T> b;
        public bc8 c;
        public boolean d;
        public T e;

        public a(t08 t08Var) {
            this.b = t08Var;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.c, bc8Var)) {
                this.c = bc8Var;
                this.b.onSubscribe(this);
                bc8Var.request(Long.MAX_VALUE);
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.c.cancel();
            this.c = hc8.CANCELLED;
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.c == hc8.CANCELLED;
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            if (this.d) {
                return;
            }
            this.d = true;
            this.c = hc8.CANCELLED;
            T t = this.e;
            this.e = null;
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

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            if (this.d) {
                d97.b(th);
                return;
            }
            this.d = true;
            this.c = hc8.CANCELLED;
            this.b.onError(th);
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.d) {
                return;
            }
            if (this.e == null) {
                this.e = t;
                return;
            }
            this.d = true;
            this.c.cancel();
            this.c = hc8.CANCELLED;
            this.b.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }
    }

    public ph3(yg3 yg3Var) {
        this.b = yg3Var;
    }

    @Override // defpackage.tm3
    public final gg3<T> c() {
        return new oh3(this.b);
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        this.b.f(new a(t08Var));
    }
}
