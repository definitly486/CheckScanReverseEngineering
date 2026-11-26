package defpackage;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.OnLifecycleEvent;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class tp4 implements yo4, LifecycleObserver {
    public final HashSet b = new HashSet();
    public final Lifecycle c;

    public tp4(Lifecycle lifecycle) {
        this.c = lifecycle;
        lifecycle.addObserver(this);
    }

    @Override // defpackage.yo4
    public final void a(up4 up4Var) {
        this.b.add(up4Var);
        Lifecycle lifecycle = this.c;
        if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
            up4Var.onDestroy();
        } else if (lifecycle.getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            up4Var.onStart();
        } else {
            up4Var.onStop();
        }
    }

    @Override // defpackage.yo4
    public final void b(up4 up4Var) {
        this.b.remove(up4Var);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy(LifecycleOwner lifecycleOwner) {
        Iterator it = eb9.e(this.b).iterator();
        while (it.hasNext()) {
            ((up4) it.next()).onDestroy();
        }
        lifecycleOwner.getLifecycle().removeObserver(this);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public void onStart(LifecycleOwner lifecycleOwner) {
        Iterator it = eb9.e(this.b).iterator();
        while (it.hasNext()) {
            ((up4) it.next()).onStart();
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop(LifecycleOwner lifecycleOwner) {
        Iterator it = eb9.e(this.b).iterator();
        while (it.hasNext()) {
            ((up4) it.next()).onStop();
        }
    }
}
