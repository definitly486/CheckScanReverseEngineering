package defpackage;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class b75<T> extends AtomicReference<cp2> implements t75<T>, cp2 {
    public final qx1<? super T> b;
    public final qx1<? super Throwable> c;
    public final h6 d;

    public b75(qx1<? super T> qx1Var, qx1<? super Throwable> qx1Var2, h6 h6Var) {
        this.b = qx1Var;
        this.c = qx1Var2;
        this.d = h6Var;
    }

    @Override // defpackage.cp2
    public final void dispose() {
        ip2.a(this);
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        return ip2.d(get());
    }

    @Override // defpackage.t75
    public final void onComplete() {
        lazySet(ip2.DISPOSED);
        try {
            this.d.run();
        } catch (Throwable th) {
            m13.d(th);
            d97.b(th);
        }
    }

    @Override // defpackage.t75
    public final void onError(Throwable th) {
        lazySet(ip2.DISPOSED);
        try {
            this.c.accept(th);
        } catch (Throwable th2) {
            m13.d(th2);
            d97.b(new CompositeException(th, th2));
        }
    }

    @Override // defpackage.t75
    public final void onSubscribe(cp2 cp2Var) {
        ip2.g(this, cp2Var);
    }

    @Override // defpackage.t75
    public final void onSuccess(T t) {
        lazySet(ip2.DISPOSED);
        try {
            this.b.accept(t);
        } catch (Throwable th) {
            m13.d(th);
            d97.b(th);
        }
    }
}
