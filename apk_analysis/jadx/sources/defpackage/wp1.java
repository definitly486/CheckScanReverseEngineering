package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class wp1 extends qp1 {
    public final Callable<? extends qq1> b;

    public wp1(Callable<? extends qq1> callable) {
        this.b = callable;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        try {
            qq1 qq1VarCall = this.b.call();
            nq5.a(qq1VarCall, "The completableSupplier returned a null CompletableSource");
            qq1VarCall.b(mq1Var);
        } catch (Throwable th) {
            m13.d(th);
            mq1Var.onSubscribe(hx2.INSTANCE);
            mq1Var.onError(th);
        }
    }
}
