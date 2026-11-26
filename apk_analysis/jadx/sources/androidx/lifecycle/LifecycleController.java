package androidx.lifecycle;

import defpackage.hk3;
import defpackage.mb4;

/* JADX INFO: loaded from: classes3.dex */
public final class LifecycleController {
    private final DispatchQueue dispatchQueue;
    private final Lifecycle lifecycle;
    private final Lifecycle.State minState;
    private final LifecycleEventObserver observer;

    public LifecycleController(Lifecycle lifecycle, Lifecycle.State state, DispatchQueue dispatchQueue, mb4 mb4Var) {
        lifecycle.getClass();
        state.getClass();
        dispatchQueue.getClass();
        mb4Var.getClass();
        this.lifecycle = lifecycle;
        this.minState = state;
        this.dispatchQueue = dispatchQueue;
        hk3 hk3Var = new hk3(1, this, mb4Var);
        this.observer = hk3Var;
        if (lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
            lifecycle.addObserver(hk3Var);
        } else {
            mb4Var.cancel(null);
            finish();
        }
    }

    private final void handleDestroy(mb4 mb4Var) {
        mb4Var.cancel(null);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void observer$lambda$0(LifecycleController lifecycleController, mb4 mb4Var, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        lifecycleOwner.getClass();
        event.getClass();
        if (lifecycleOwner.getLifecycle().getCurrentState() == Lifecycle.State.DESTROYED) {
            mb4Var.cancel(null);
            lifecycleController.finish();
            return;
        }
        int iCompareTo = lifecycleOwner.getLifecycle().getCurrentState().compareTo(lifecycleController.minState);
        DispatchQueue dispatchQueue = lifecycleController.dispatchQueue;
        if (iCompareTo < 0) {
            dispatchQueue.pause();
        } else {
            dispatchQueue.resume();
        }
    }

    public final void finish() {
        this.lifecycle.removeObserver(this.observer);
        this.dispatchQueue.finish();
    }
}
