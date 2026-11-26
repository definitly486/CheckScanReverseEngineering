package defpackage;

import io.reactivex.exceptions.OnErrorNotImplementedException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class uy0 extends AtomicReference<cp2> implements mq1, cp2, qx1<Throwable> {
    public final qx1<? super Throwable> b;
    public final h6 c;

    public uy0(h6 h6Var) {
        this.b = this;
        this.c = h6Var;
    }

    @Override // defpackage.qx1
    public final void accept(Throwable th) {
        d97.b(new OnErrorNotImplementedException(th));
    }

    @Override // defpackage.cp2
    public final void dispose() {
        ip2.a(this);
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        return get() == ip2.DISPOSED;
    }

    @Override // defpackage.mq1
    public final void onComplete() {
        try {
            this.c.run();
        } catch (Throwable th) {
            m13.d(th);
            d97.b(th);
        }
        lazySet(ip2.DISPOSED);
    }

    @Override // defpackage.mq1
    public final void onError(Throwable th) {
        try {
            this.b.accept(th);
        } catch (Throwable th2) {
            m13.d(th2);
            d97.b(th2);
        }
        lazySet(ip2.DISPOSED);
    }

    @Override // defpackage.mq1
    public final void onSubscribe(cp2 cp2Var) {
        ip2.g(this, cp2Var);
    }

    public uy0(qx1<? super Throwable> qx1Var, h6 h6Var) {
        this.b = qx1Var;
        this.c = h6Var;
    }
}
