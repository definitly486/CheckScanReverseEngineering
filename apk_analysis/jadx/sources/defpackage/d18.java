package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class d18<T> implements s08<T>, dp2 {
    public final nl3<Throwable, j59> a;
    public final nl3<T, j59> b;
    public final AtomicBoolean c;
    public final AtomicReference<dp2> d;

    /* JADX WARN: Multi-variable type inference failed */
    public d18(nl3<? super Throwable, j59> nl3Var, nl3<? super T, j59> nl3Var2) {
        nl3Var.getClass();
        nl3Var2.getClass();
        this.a = nl3Var;
        this.b = nl3Var2;
        this.c = new AtomicBoolean();
        this.d = new AtomicReference<>(null);
    }

    @Override // defpackage.s08
    public final void a(dp2 dp2Var) {
        AtomicReference<dp2> atomicReference;
        dp2 andSet;
        do {
            atomicReference = this.d;
            if (atomicReference.compareAndSet(null, dp2Var)) {
                break;
            }
        } while (atomicReference.get() == null);
        if (!this.c.get() || (andSet = atomicReference.getAndSet(null)) == null) {
            return;
        }
        andSet.dispose();
    }

    @Override // defpackage.dp2
    public final void dispose() {
        dp2 andSet;
        if (!this.c.compareAndSet(false, true) || (andSet = this.d.getAndSet(null)) == null) {
            return;
        }
        andSet.dispose();
    }

    @Override // defpackage.s08
    public final void onError(Throwable th) {
        if (this.c.compareAndSet(false, true)) {
            this.a.invoke(th);
        }
    }

    @Override // defpackage.s08
    public final void onSuccess(T t) {
        if (this.c.compareAndSet(false, true)) {
            this.b.invoke(t);
        }
    }
}
