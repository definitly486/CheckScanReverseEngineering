package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class xb8<T> implements mq1, bc8 {
    public final wb8<? super T> b;
    public cp2 c;

    public xb8(wb8<? super T> wb8Var) {
        this.b = wb8Var;
    }

    @Override // defpackage.bc8
    public final void cancel() {
        this.c.dispose();
    }

    @Override // defpackage.mq1
    public final void onComplete() {
        this.b.onComplete();
    }

    @Override // defpackage.mq1
    public final void onError(Throwable th) {
        this.b.onError(th);
    }

    @Override // defpackage.mq1
    public final void onSubscribe(cp2 cp2Var) {
        if (ip2.i(this.c, cp2Var)) {
            this.c = cp2Var;
            this.b.a(this);
        }
    }

    @Override // defpackage.bc8
    public final void request(long j) {
    }
}
