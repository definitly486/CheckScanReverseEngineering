package defpackage;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.viewbinding.ViewBinding;

/* JADX INFO: loaded from: classes.dex */
public final class fl4 implements DefaultLifecycleObserver {
    public final /* synthetic */ gl4<ViewBinding> b;

    public fl4(gl4<ViewBinding> gl4Var) {
        this.b = gl4Var;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
        this.b.c = null;
    }
}
