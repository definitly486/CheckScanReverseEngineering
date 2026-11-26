package androidx.compose.runtime.saveable;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.LifecycleRegistry;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.SavedStateWriter;
import defpackage.b36;
import defpackage.ll3;
import defpackage.ze;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class SaveableStateRegistryWrapper implements SaveableStateRegistry, SavedStateRegistryOwner {
    public static final int $stable = 8;
    private final /* synthetic */ SaveableStateRegistry $$delegate_0;
    private SavedStateRegistryController _controller;
    private LifecycleRegistry _lifecycle;

    public SaveableStateRegistryWrapper(SaveableStateRegistry saveableStateRegistry) {
        this.$$delegate_0 = saveableStateRegistry;
        Object objConsumeRestored = consumeRestored("androidx.savedstate.SavedStateRegistry");
        Bundle bundle = objConsumeRestored instanceof Bundle ? (Bundle) objConsumeRestored : null;
        if (bundle != null) {
            getOrInitController(bundle);
        }
        registerProvider("androidx.savedstate.SavedStateRegistry", new ze(this, 5));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object _init_$lambda$0(SaveableStateRegistryWrapper saveableStateRegistryWrapper) {
        SavedStateRegistryController savedStateRegistryController = saveableStateRegistryWrapper._controller;
        if (savedStateRegistryController == null) {
            return null;
        }
        b36[] b36VarArr = new b36[0];
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        savedStateRegistryController.performSave(bundleBundleOf);
        if (SavedStateReader.m9448isEmptyimpl(SavedStateReader.m9370constructorimpl(bundleBundleOf))) {
            return null;
        }
        return bundleBundleOf;
    }

    private final SavedStateRegistryController getController() {
        return getOrInitController(null);
    }

    private final SavedStateRegistryController getOrInitController(Bundle bundle) {
        SavedStateRegistryController savedStateRegistryController = this._controller;
        if (savedStateRegistryController != null) {
            return savedStateRegistryController;
        }
        SavedStateRegistryController savedStateRegistryControllerCreate = SavedStateRegistryController.Companion.create(this);
        this._controller = savedStateRegistryControllerCreate;
        savedStateRegistryControllerCreate.performRestore(bundle);
        return savedStateRegistryControllerCreate;
    }

    private final LifecycleRegistry getOrInitLifecycle() {
        LifecycleRegistry lifecycleRegistry = this._lifecycle;
        if (lifecycleRegistry != null) {
            return lifecycleRegistry;
        }
        LifecycleRegistry lifecycleRegistryCreateUnsafe = LifecycleRegistry.Companion.createUnsafe(this);
        this._lifecycle = lifecycleRegistryCreateUnsafe;
        return lifecycleRegistryCreateUnsafe;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public boolean canBeSaved(Object obj) {
        return this.$$delegate_0.canBeSaved(obj);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public Object consumeRestored(String str) {
        return this.$$delegate_0.consumeRestored(str);
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public SavedStateRegistry getSavedStateRegistry() {
        return getController().getSavedStateRegistry();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public Map<String, List<Object>> performSave() {
        return this.$$delegate_0.performSave();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public SaveableStateRegistry.Entry registerProvider(String str, ll3<? extends Object> ll3Var) {
        return this.$$delegate_0.registerProvider(str, ll3Var);
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public LifecycleRegistry getLifecycle() {
        return getOrInitLifecycle();
    }
}
