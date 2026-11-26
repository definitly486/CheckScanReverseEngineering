package androidx.compose.ui.platform;

import androidx.compose.runtime.retain.ManagedRetainedValuesStore;
import androidx.compose.runtime.retain.RetainedValuesStore;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class LifecycleRetainedValuesStore implements RetainedValuesStore {
    public static final int $stable = ManagedRetainedValuesStore.$stable;
    private final ManagedRetainedValuesStore delegate;

    public /* synthetic */ LifecycleRetainedValuesStore(ManagedRetainedValuesStore managedRetainedValuesStore, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new ManagedRetainedValuesStore() : managedRetainedValuesStore);
    }

    @Override // androidx.compose.runtime.retain.RetainedValuesStore
    public Object consumeExitedValueOrDefault(Object obj, Object obj2) {
        return this.delegate.consumeExitedValueOrDefault(obj, obj2);
    }

    public final void dispose() {
        this.delegate.dispose();
    }

    public final void endLifecycleTransition() {
        this.delegate.onContentEnteredComposition();
    }

    public final ManagedRetainedValuesStore getDelegate() {
        return this.delegate;
    }

    public final boolean isRetainingExitedValues() {
        return this.delegate.isRetainingExitedValues();
    }

    @Override // androidx.compose.runtime.retain.RetainedValuesStore
    public void onContentEnteredComposition() {
    }

    @Override // androidx.compose.runtime.retain.RetainedValuesStore
    public void onContentExitComposition() {
    }

    @Override // androidx.compose.runtime.retain.RetainedValuesStore
    public void saveExitingValue(Object obj, Object obj2) {
        this.delegate.saveExitingValue(obj, obj2);
    }

    public final void startLifecycleTransition() {
        this.delegate.onContentExitComposition();
    }

    public LifecycleRetainedValuesStore(ManagedRetainedValuesStore managedRetainedValuesStore) {
        this.delegate = managedRetainedValuesStore;
        managedRetainedValuesStore.onContentEnteredComposition();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LifecycleRetainedValuesStore() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
