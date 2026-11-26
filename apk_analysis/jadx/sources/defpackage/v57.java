package defpackage;

import io.reactivex.exceptions.CompositeException;

/* JADX INFO: loaded from: classes5.dex */
public final class v57<T> extends tq5<m57> {
    public final tq5<a57<T>> b;

    public static class a<R> implements ls5<a57<R>> {
        public final ls5<? super m57> b;

        public a(ls5<? super m57> ls5Var) {
            this.b = ls5Var;
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            this.b.onComplete();
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            ls5<? super m57> ls5Var = this.b;
            try {
                if (th == null) {
                    throw new NullPointerException("error == null");
                }
                ls5Var.onNext(new m57());
                ls5Var.onComplete();
            } catch (Throwable th2) {
                try {
                    ls5Var.onError(th2);
                } catch (Throwable th3) {
                    m13.d(th3);
                    d97.b(new CompositeException(th2, th3));
                }
            }
        }

        @Override // defpackage.ls5
        public final void onNext(Object obj) {
            if (((a57) obj) == null) {
                o2.d("response == null");
            } else {
                this.b.onNext(new m57());
            }
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            this.b.onSubscribe(cp2Var);
        }
    }

    public v57(tq5<a57<T>> tq5Var) {
        this.b = tq5Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super m57> ls5Var) {
        this.b.a(new a(ls5Var));
    }
}
