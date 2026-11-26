package androidx.savedstate;

import android.os.Bundle;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import defpackage.ah;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateRegistry {
    private final SavedStateRegistryImpl impl;
    private Recreator.SavedStateProvider recreatorProvider;

    public interface AutoRecreated {
        void onRecreated(SavedStateRegistryOwner savedStateRegistryOwner);
    }

    public interface SavedStateProvider {
        Bundle saveState();
    }

    public SavedStateRegistry(SavedStateRegistryImpl savedStateRegistryImpl) {
        savedStateRegistryImpl.getClass();
        this.impl = savedStateRegistryImpl;
    }

    public final Bundle consumeRestoredStateForKey(String str) {
        str.getClass();
        return this.impl.consumeRestoredStateForKey(str);
    }

    public final SavedStateProvider getSavedStateProvider(String str) {
        str.getClass();
        return this.impl.getSavedStateProvider(str);
    }

    public final boolean isRestored() {
        return this.impl.isRestored();
    }

    public final void registerSavedStateProvider(String str, SavedStateProvider savedStateProvider) {
        str.getClass();
        savedStateProvider.getClass();
        this.impl.registerSavedStateProvider(str, savedStateProvider);
    }

    public final void runOnNextRecreation(Class<? extends AutoRecreated> cls) {
        cls.getClass();
        if (!this.impl.isAllowingSavingState$savedstate()) {
            ah.f("Can not perform this action after onSaveInstanceState");
            return;
        }
        Recreator.SavedStateProvider savedStateProvider = this.recreatorProvider;
        if (savedStateProvider == null) {
            savedStateProvider = new Recreator.SavedStateProvider(this);
        }
        this.recreatorProvider = savedStateProvider;
        try {
            cls.getDeclaredConstructor(null);
            Recreator.SavedStateProvider savedStateProvider2 = this.recreatorProvider;
            if (savedStateProvider2 != null) {
                savedStateProvider2.add(cls.getName());
            }
        } catch (NoSuchMethodException e) {
            throw new IllegalArgumentException("Class " + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
        }
    }

    public final void unregisterSavedStateProvider(String str) {
        str.getClass();
        this.impl.unregisterSavedStateProvider(str);
    }
}
