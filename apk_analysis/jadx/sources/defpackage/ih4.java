package defpackage;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class ih4<T> extends AtomicReference<bc8> implements rh3<T>, bc8, cp2 {
    public final qx1<? super T> b;
    public final qx1<? super Throwable> c;
    public final h6 d;
    public final qx1<? super bc8> e;

    public ih4(qx1<? super T> qx1Var, qx1<? super Throwable> qx1Var2, h6 h6Var, qx1<? super bc8> qx1Var3) {
        this.b = qx1Var;
        this.c = qx1Var2;
        this.d = h6Var;
        this.e = qx1Var3;
    }

    @Override // defpackage.wb8
    public final void a(bc8 bc8Var) {
        if (hc8.d(this, bc8Var)) {
            try {
                this.e.accept(this);
            } catch (Throwable th) {
                m13.d(th);
                bc8Var.cancel();
                onError(th);
            }
        }
    }

    @Override // defpackage.bc8
    public final void cancel() {
        hc8.a(this);
    }

    @Override // defpackage.cp2
    public final void dispose() {
        hc8.a(this);
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        return get() == hc8.CANCELLED;
    }

    @Override // defpackage.wb8
    public final void onComplete() {
        bc8 bc8Var = get();
        hc8 hc8Var = hc8.CANCELLED;
        if (bc8Var != hc8Var) {
            lazySet(hc8Var);
            try {
                this.d.run();
            } catch (Throwable th) {
                m13.d(th);
                d97.b(th);
            }
        }
    }

    @Override // defpackage.wb8
    public final void onError(Throwable th) {
        bc8 bc8Var = get();
        hc8 hc8Var = hc8.CANCELLED;
        if (bc8Var == hc8Var) {
            d97.b(th);
            return;
        }
        lazySet(hc8Var);
        try {
            this.c.accept(th);
        } catch (Throwable th2) {
            m13.d(th2);
            d97.b(new CompositeException(th, th2));
        }
    }

    @Override // defpackage.wb8
    public final void onNext(T t) {
        if (isDisposed()) {
            return;
        }
        try {
            this.b.accept(t);
        } catch (Throwable th) {
            m13.d(th);
            get().cancel();
            onError(th);
        }
    }

    @Override // defpackage.bc8
    public final void request(long j) {
        get().request(j);
    }
}
