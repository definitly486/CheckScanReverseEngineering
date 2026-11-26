package defpackage;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;

/* JADX INFO: loaded from: classes3.dex */
public final class te9 implements l37, DefaultLifecycleObserver {
    public final sy6 b;
    public final b24 c;
    public final Lifecycle d;
    public final mb4 e;

    public te9(sy6 sy6Var, b24 b24Var, re9 re9Var, Lifecycle lifecycle, mb4 mb4Var) {
        this.b = sy6Var;
        this.c = b24Var;
        this.d = lifecycle;
        this.e = mb4Var;
    }

    @Override // defpackage.l37
    public final void a() {
        throw null;
    }

    @Override // defpackage.l37
    public final Object b(vy6 vy6Var) {
        Object objA;
        Lifecycle lifecycle = this.d;
        return (lifecycle == null || (objA = zp4.a(lifecycle, vy6Var)) != a32.COROUTINE_SUSPENDED) ? j59.a : objA;
    }

    public final void c() {
        this.e.cancel(null);
        Lifecycle lifecycle = this.d;
        if (lifecycle != null) {
            lifecycle.removeObserver(this);
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        throw null;
    }

    @Override // defpackage.l37
    public final void start() {
        Lifecycle lifecycle = this.d;
        if (lifecycle != null) {
            lifecycle.addObserver(this);
        }
        throw null;
    }
}
