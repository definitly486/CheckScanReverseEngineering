package defpackage;

import io.reactivex.exceptions.OnErrorNotImplementedException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class fx2 extends AtomicReference<cp2> implements mq1, cp2 {
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
        lazySet(ip2.DISPOSED);
    }

    @Override // defpackage.mq1
    public final void onError(Throwable th) {
        lazySet(ip2.DISPOSED);
        d97.b(new OnErrorNotImplementedException(th));
    }

    @Override // defpackage.mq1
    public final void onSubscribe(cp2 cp2Var) {
        ip2.g(this, cp2Var);
    }
}
