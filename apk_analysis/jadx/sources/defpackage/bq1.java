package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class bq1 extends qp1 {
    public final Throwable b;

    public bq1(Throwable th) {
        this.b = th;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        mq1Var.onSubscribe(hx2.INSTANCE);
        mq1Var.onError(this.b);
    }
}
