package defpackage;

import io.reactivex.exceptions.CompositeException;
import retrofit2.adapter.rxjava2.HttpException;

/* JADX INFO: loaded from: classes5.dex */
public final class mk0<T> extends tq5<T> {
    public final tq5<a57<T>> b;

    public static class a<R> implements ls5<a57<R>> {
        public final ls5<? super R> b;
        public boolean c;

        public a(ls5<? super R> ls5Var) {
            this.b = ls5Var;
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            if (this.c) {
                return;
            }
            this.b.onComplete();
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            if (!this.c) {
                this.b.onError(th);
                return;
            }
            AssertionError assertionError = new AssertionError("This should never happen! Report as a bug with the full stacktrace.");
            assertionError.initCause(th);
            d97.b(assertionError);
        }

        @Override // defpackage.ls5
        public final void onNext(Object obj) {
            a57 a57Var = (a57) obj;
            boolean zO = a57Var.a.o();
            ls5<? super R> ls5Var = this.b;
            if (zO) {
                ls5Var.onNext(a57Var.b);
                return;
            }
            this.c = true;
            HttpException httpException = new HttpException(a57Var);
            try {
                ls5Var.onError(httpException);
            } catch (Throwable th) {
                m13.d(th);
                d97.b(new CompositeException(httpException, th));
            }
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            this.b.onSubscribe(cp2Var);
        }
    }

    public mk0(tq5<a57<T>> tq5Var) {
        this.b = tq5Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        this.b.a(new a(ls5Var));
    }
}
