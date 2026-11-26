package defpackage;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;

/* JADX INFO: loaded from: classes3.dex */
public final class yp4 implements DefaultLifecycleObserver {
    public final /* synthetic */ c31 b;

    public yp4(c31 c31Var) {
        this.b = c31Var;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStart(LifecycleOwner lifecycleOwner) {
        this.b.resumeWith(j59.a);
    }
}
