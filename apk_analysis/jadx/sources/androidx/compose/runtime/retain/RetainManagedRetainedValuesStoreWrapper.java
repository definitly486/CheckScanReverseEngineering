package androidx.compose.runtime.retain;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public final class RetainManagedRetainedValuesStoreWrapper implements RetainObserver {
    private final ManagedRetainedValuesStore retainedValuesStore = new ManagedRetainedValuesStore();

    public final ManagedRetainedValuesStore getRetainedValuesStore() {
        return this.retainedValuesStore;
    }

    @Override // androidx.compose.runtime.retain.RetainObserver
    public void onEnteredComposition() {
    }

    @Override // androidx.compose.runtime.retain.RetainObserver
    public void onExitedComposition() {
    }

    @Override // androidx.compose.runtime.retain.RetainObserver
    public void onRetained() {
    }

    @Override // androidx.compose.runtime.retain.RetainObserver
    public void onRetired() {
        this.retainedValuesStore.dispose();
    }

    @Override // androidx.compose.runtime.retain.RetainObserver
    public void onUnused() {
        this.retainedValuesStore.dispose();
    }
}
