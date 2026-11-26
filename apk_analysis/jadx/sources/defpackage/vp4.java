package defpackage;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;

/* JADX INFO: loaded from: classes3.dex */
public final class vp4 implements l37, DefaultLifecycleObserver {
    public final Lifecycle b;
    public final mb4 c;

    public vp4(Lifecycle lifecycle, mb4 mb4Var) {
        this.b = lifecycle;
        this.c = mb4Var;
    }

    @Override // defpackage.l37
    public final Object b(vy6 vy6Var) throws Throwable {
        Object objA = zp4.a(this.b, vy6Var);
        return objA == a32.COROUTINE_SUSPENDED ? objA : j59.a;
    }

    @Override // defpackage.l37
    public final void complete() {
        this.b.removeObserver(this);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        this.c.cancel(null);
    }

    @Override // defpackage.l37
    public final void start() {
        this.b.addObserver(this);
    }
}
