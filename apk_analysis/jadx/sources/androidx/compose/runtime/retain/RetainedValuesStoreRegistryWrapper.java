package androidx.compose.runtime.retain;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public final class RetainedValuesStoreRegistryWrapper implements RetainObserver {
    private final RetainedValuesStoreRegistry retainedValuesStoreRegistry = new RetainedValuesStoreRegistry();

    public final RetainedValuesStoreRegistry getRetainedValuesStoreRegistry() {
        return this.retainedValuesStoreRegistry;
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
        this.retainedValuesStoreRegistry.dispose();
    }

    @Override // androidx.compose.runtime.retain.RetainObserver
    public void onUnused() {
        this.retainedValuesStoreRegistry.dispose();
    }
}
