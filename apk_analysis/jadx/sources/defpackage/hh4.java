package defpackage;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class hh4<T> extends AtomicReference<cp2> implements ls5<T>, cp2 {
    public final qx1<? super T> b;
    public final qx1<? super Throwable> c;
    public final h6 d;

    public hh4(qx1 qx1Var, qx1 qx1Var2, h6 h6Var) {
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
        return get() == ip2.DISPOSED;
    }

    @Override // defpackage.ls5
    public final void onComplete() {
        if (isDisposed()) {
            return;
        }
        lazySet(ip2.DISPOSED);
        try {
            this.d.run();
        } catch (Throwable th) {
            m13.d(th);
            d97.b(th);
        }
    }

    @Override // defpackage.ls5
    public final void onError(Throwable th) {
        if (isDisposed()) {
            d97.b(th);
            return;
        }
        lazySet(ip2.DISPOSED);
        try {
            this.c.accept(th);
        } catch (Throwable th2) {
            m13.d(th2);
            d97.b(new CompositeException(th, th2));
        }
    }

    @Override // defpackage.ls5
    public final void onNext(T t) {
        if (isDisposed()) {
            return;
        }
        try {
            this.b.accept(t);
        } catch (Throwable th) {
            m13.d(th);
            get().dispose();
            onError(th);
        }
    }

    @Override // defpackage.ls5
    public final void onSubscribe(cp2 cp2Var) {
        ip2.g(this, cp2Var);
    }
}
