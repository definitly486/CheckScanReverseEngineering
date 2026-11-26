package defpackage;

import io.reactivex.exceptions.CompositeException;

/* JADX INFO: loaded from: classes5.dex */
public final class u08<T> extends mz7<T> {
    public final mz7 b;
    public final xl3<? super Throwable, ? extends T> c;
    public final T d;

    public final class a implements t08<T> {
        public final t08<? super T> b;

        public a(t08<? super T> t08Var) {
            this.b = t08Var;
        }

        @Override // defpackage.t08
        public final void onError(Throwable th) {
            T tApply;
            u08 u08Var = u08.this;
            xl3<? super Throwable, ? extends T> xl3Var = u08Var.c;
            t08<? super T> t08Var = this.b;
            if (xl3Var != null) {
                try {
                    tApply = xl3Var.apply(th);
                } catch (Throwable th2) {
                    m13.d(th2);
                    t08Var.onError(new CompositeException(th, th2));
                    return;
                }
            } else {
                tApply = u08Var.d;
            }
            if (tApply != null) {
                t08Var.onSuccess(tApply);
                return;
            }
            NullPointerException nullPointerException = new NullPointerException("Value supplied was null");
            nullPointerException.initCause(th);
            t08Var.onError(nullPointerException);
        }

        @Override // defpackage.t08
        public final void onSubscribe(cp2 cp2Var) {
            this.b.onSubscribe(cp2Var);
        }

        @Override // defpackage.t08
        public final void onSuccess(T t) {
            this.b.onSuccess(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public u08(mz7 mz7Var, xl3 xl3Var, Object obj) {
        this.b = mz7Var;
        this.c = xl3Var;
        this.d = obj;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        this.b.d(new a(t08Var));
    }
}
