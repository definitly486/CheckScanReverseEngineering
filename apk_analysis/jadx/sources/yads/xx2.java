package yads;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;

/* JADX INFO: loaded from: classes3.dex */
public final class xx2 extends Lifecycle {
    public final Lifecycle.State a = Lifecycle.State.STARTED;

    @Override // androidx.lifecycle.Lifecycle
    public final void addObserver(LifecycleObserver lifecycleObserver) {
    }

    @Override // androidx.lifecycle.Lifecycle
    public final Lifecycle.State getCurrentState() {
        return this.a;
    }

    @Override // androidx.lifecycle.Lifecycle
    public final void removeObserver(LifecycleObserver lifecycleObserver) {
    }
}
