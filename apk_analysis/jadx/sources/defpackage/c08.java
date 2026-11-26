package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class c08<T> implements a08<T>, dp2 {
    public final s08<T> a;
    public final AtomicBoolean b = new AtomicBoolean();
    public final AtomicReference<ll3<j59>> c = new AtomicReference<>(null);

    public c08(s08<T> s08Var) {
        this.a = s08Var;
    }

    @Override // defpackage.a08
    public final void a(a64 a64Var) {
        if (this.b.compareAndSet(false, true)) {
            ll3<j59> ll3Var = this.c.get();
            if (ll3Var != null) {
                ll3Var.invoke();
            }
            this.a.onSuccess(a64Var);
        }
    }

    @Override // defpackage.a08
    public final void b(Throwable th) {
        if (this.b.compareAndSet(false, true)) {
            ll3<j59> ll3Var = this.c.get();
            if (ll3Var != null) {
                ll3Var.invoke();
            }
            this.a.onError(th);
        }
    }

    @Override // defpackage.dp2
    public final void dispose() {
        ll3<j59> ll3Var;
        if (!this.b.compareAndSet(false, true) || (ll3Var = this.c.get()) == null) {
            return;
        }
        ll3Var.invoke();
    }
}
