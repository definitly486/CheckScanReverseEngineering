package androidx.lifecycle;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateWriter;
import defpackage.b36;
import defpackage.cl4;
import defpackage.df;
import defpackage.fh8;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateHandlesProvider implements SavedStateRegistry.SavedStateProvider {
    private boolean restored;
    private Bundle restoredState;
    private final SavedStateRegistry savedStateRegistry;
    private final cl4 viewModel$delegate;

    public SavedStateHandlesProvider(SavedStateRegistry savedStateRegistry, ViewModelStoreOwner viewModelStoreOwner) {
        savedStateRegistry.getClass();
        viewModelStoreOwner.getClass();
        this.savedStateRegistry = savedStateRegistry;
        this.viewModel$delegate = new fh8(new df(viewModelStoreOwner, 1));
    }

    private final SavedStateHandlesVM getViewModel() {
        return (SavedStateHandlesVM) this.viewModel$delegate.getValue();
    }

    public final Bundle consumeRestoredStateForKey(String str) {
        str.getClass();
        performRestore();
        Bundle bundle = this.restoredState;
        if (bundle == null || !SavedStateReader.m9371containsimpl(SavedStateReader.m9370constructorimpl(bundle), str)) {
            return null;
        }
        Bundle bundleM9432getSavedStateOrNullimpl = SavedStateReader.m9432getSavedStateOrNullimpl(SavedStateReader.m9370constructorimpl(bundle), str);
        if (bundleM9432getSavedStateOrNullimpl == null) {
            b36[] b36VarArr = new b36[0];
            bundleM9432getSavedStateOrNullimpl = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
            SavedStateWriter.m9456constructorimpl(bundleM9432getSavedStateOrNullimpl);
        }
        SavedStateWriter.m9492removeimpl(SavedStateWriter.m9456constructorimpl(bundle), str);
        if (SavedStateReader.m9448isEmptyimpl(SavedStateReader.m9370constructorimpl(bundle))) {
            this.restoredState = null;
        }
        return bundleM9432getSavedStateOrNullimpl;
    }

    public final void performRestore() {
        if (this.restored) {
            return;
        }
        Bundle bundleConsumeRestoredStateForKey = this.savedStateRegistry.consumeRestoredStateForKey(SavedStateHandleSupport.SAVED_STATE_KEY);
        b36[] b36VarArr = new b36[0];
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        Bundle bundle = this.restoredState;
        if (bundle != null) {
            SavedStateWriter.m9460putAllimpl(bundleM9456constructorimpl, bundle);
        }
        if (bundleConsumeRestoredStateForKey != null) {
            SavedStateWriter.m9460putAllimpl(bundleM9456constructorimpl, bundleConsumeRestoredStateForKey);
        }
        this.restoredState = bundleBundleOf;
        this.restored = true;
        getViewModel();
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public Bundle saveState() {
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(new b36[0], 0));
        Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        Bundle bundle = this.restoredState;
        if (bundle != null) {
            SavedStateWriter.m9460putAllimpl(bundleM9456constructorimpl, bundle);
        }
        for (Map.Entry<String, SavedStateHandle> entry : getViewModel().getHandles().entrySet()) {
            String key = entry.getKey();
            Bundle bundleSaveState = entry.getValue().savedStateProvider().saveState();
            if (!SavedStateReader.m9448isEmptyimpl(SavedStateReader.m9370constructorimpl(bundleSaveState))) {
                SavedStateWriter.m9483putSavedStateimpl(bundleM9456constructorimpl, key, bundleSaveState);
            }
        }
        this.restored = false;
        return bundleBundleOf;
    }
}
