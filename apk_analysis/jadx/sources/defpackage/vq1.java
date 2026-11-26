package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class vq1<T> extends mz7<T> {
    public final qp1 b;
    public final Callable<? extends T> c;

    public final class a implements mq1 {
        public final t08<? super T> b;

        public a(t08<? super T> t08Var) {
            this.b = t08Var;
        }

        @Override // defpackage.mq1
        public final void onComplete() {
            T tCall;
            Callable<? extends T> callable = vq1.this.c;
            t08<? super T> t08Var = this.b;
            if (callable != null) {
                try {
                    tCall = callable.call();
                } catch (Throwable th) {
                    m13.d(th);
                    t08Var.onError(th);
                    return;
                }
            } else {
                tCall = null;
            }
            if (tCall == null) {
                t08Var.onError(new NullPointerException("The value supplied is null"));
            } else {
                t08Var.onSuccess(tCall);
            }
        }

        @Override // defpackage.mq1
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.mq1
        public final void onSubscribe(cp2 cp2Var) {
            this.b.onSubscribe(cp2Var);
        }
    }

    public vq1(qp1 qp1Var, Callable callable) {
        this.b = qp1Var;
        this.c = callable;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        this.b.b(new a(t08Var));
    }
}
