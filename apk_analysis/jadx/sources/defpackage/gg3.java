package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public abstract class gg3<T> implements dt6<T> {
    public static final int b = Math.max(1, Integer.getInteger("rx2.buffer-size", 128).intValue());

    @Override // defpackage.dt6
    public final void a(wb8<? super T> wb8Var) {
        if (wb8Var instanceof rh3) {
            f((rh3) wb8Var);
        } else {
            nq5.a(wb8Var, "s is null");
            f(new t98(wb8Var));
        }
    }

    public final ug3 b(xl3 xl3Var) {
        nq5.a(xl3Var, "mapper is null");
        nq5.b(Integer.MAX_VALUE, "maxConcurrency");
        return new ug3(this, xl3Var);
    }

    public final eh3 c(he7 he7Var) {
        nq5.a(he7Var, "scheduler is null");
        int i = b;
        nq5.b(i, "bufferSize");
        return new eh3(this, he7Var, i);
    }

    public final kh3 d() {
        int i = b;
        nq5.b(i, "bufferSize");
        AtomicReference atomicReference = new AtomicReference();
        return new kh3(new kh3.a(atomicReference, i), this, atomicReference, i);
    }

    public final cp2 e(qx1<? super T> qx1Var, qx1<? super Throwable> qx1Var2, h6 h6Var, qx1<? super bc8> qx1Var3) {
        nq5.a(qx1Var, "onNext is null");
        nq5.a(qx1Var2, "onError is null");
        nq5.a(h6Var, "onComplete is null");
        nq5.a(qx1Var3, "onSubscribe is null");
        ih4 ih4Var = new ih4(qx1Var, qx1Var2, h6Var, qx1Var3);
        f(ih4Var);
        return ih4Var;
    }

    public final void f(rh3<? super T> rh3Var) {
        try {
            g(rh3Var);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            m13.d(th);
            d97.b(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public abstract void g(wb8<? super T> wb8Var);

    public final qh3 h(he7 he7Var) {
        nq5.a(he7Var, "scheduler is null");
        return new qh3(this, he7Var, !(this instanceof kg3));
    }
}
