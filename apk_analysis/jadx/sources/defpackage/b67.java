package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class b67<T> implements t08<T> {
    public final AtomicReference<cp2> b;
    public final t08<? super T> c;

    public b67(AtomicReference<cp2> atomicReference, t08<? super T> t08Var) {
        this.b = atomicReference;
        this.c = t08Var;
    }

    @Override // defpackage.t08
    public final void onError(Throwable th) {
        this.c.onError(th);
    }

    @Override // defpackage.t08
    public final void onSubscribe(cp2 cp2Var) {
        ip2.e(this.b, cp2Var);
    }

    @Override // defpackage.t08
    public final void onSuccess(T t) {
        this.c.onSuccess(t);
    }
}
