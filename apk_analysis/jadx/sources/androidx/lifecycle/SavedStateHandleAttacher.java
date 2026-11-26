package androidx.lifecycle;

import defpackage.vh;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateHandleAttacher implements LifecycleEventObserver {
    private final SavedStateHandlesProvider provider;

    public SavedStateHandleAttacher(SavedStateHandlesProvider savedStateHandlesProvider) {
        savedStateHandlesProvider.getClass();
        this.provider = savedStateHandlesProvider;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        lifecycleOwner.getClass();
        event.getClass();
        if (event != Lifecycle.Event.ON_CREATE) {
            vh.e(event, "Next event must be ON_CREATE, it was ");
        } else {
            lifecycleOwner.getLifecycle().removeObserver(this);
            this.provider.performRestore();
        }
    }
}
