package defpackage;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.viewbinding.ViewBinding;

/* JADX INFO: loaded from: classes.dex */
public final class nl4 implements DefaultLifecycleObserver {
    public final /* synthetic */ ol4<ViewBinding> b;

    public nl4(ol4<ViewBinding> ol4Var) {
        this.b = ol4Var;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
        this.b.c = null;
    }
}
