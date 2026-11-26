package defpackage;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleController;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentNavigator;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class hk3 implements LifecycleEventObserver {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ hk3(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                FragmentNavigator.fragmentViewObserver$lambda$3$lambda$2((FragmentNavigator) obj2, (NavBackStackEntry) obj, lifecycleOwner, event);
                break;
            default:
                LifecycleController.observer$lambda$0((LifecycleController) obj2, (mb4) obj, lifecycleOwner, event);
                break;
        }
    }
}
