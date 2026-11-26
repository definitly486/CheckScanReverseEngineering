package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class h08<T> extends qp1 {
    public final mz7 b;
    public final xl3<? super T, ? extends qq1> c;

    public static final class a<T> extends AtomicReference<cp2> implements t08<T>, mq1, cp2 {
        public final mq1 b;
        public final xl3<? super T, ? extends qq1> c;

        public a(mq1 mq1Var, xl3<? super T, ? extends qq1> xl3Var) {
            this.b = mq1Var;
            this.c = xl3Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return ip2.d(get());
        }

        @Override // defpackage.mq1
        public final void onComplete() {
            this.b.onComplete();
        }

        @Override // defpackage.t08
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.t08
        public final void onSubscribe(cp2 cp2Var) {
            ip2.e(this, cp2Var);
        }

        @Override // defpackage.t08
        public final void onSuccess(T t) {
            try {
                qq1 qq1VarApply = this.c.apply(t);
                nq5.a(qq1VarApply, "The mapper returned a null CompletableSource");
                qq1 qq1Var = qq1VarApply;
                if (isDisposed()) {
                    return;
                }
                qq1Var.b(this);
            } catch (Throwable th) {
                m13.d(th);
                onError(th);
            }
        }
    }

    public h08(mz7 mz7Var, xl3 xl3Var) {
        this.b = mz7Var;
        this.c = xl3Var;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        a aVar = new a(mq1Var, this.c);
        mq1Var.onSubscribe(aVar);
        this.b.d(aVar);
    }
}
