package androidx.savedstate.internal;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.SavedStateWriter;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import defpackage.aa4;
import defpackage.ah;
import defpackage.b36;
import defpackage.gc7;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.vh;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateRegistryImpl {
    private static final Companion Companion = new Companion(null);
    private static final String SAVED_COMPONENTS_KEY = "androidx.lifecycle.BundlableSavedStateRegistry.key";
    private boolean attached;
    private boolean isAllowingSavingState;
    private boolean isRestored;
    private final Map<String, SavedStateRegistry.SavedStateProvider> keyToProviders;
    private final SynchronizedObject lock;
    private final ll3<j59> onAttach;
    private final SavedStateRegistryOwner owner;
    private Bundle restoredState;

    public SavedStateRegistryImpl(SavedStateRegistryOwner savedStateRegistryOwner, ll3<j59> ll3Var) {
        savedStateRegistryOwner.getClass();
        ll3Var.getClass();
        this.owner = savedStateRegistryOwner;
        this.onAttach = ll3Var;
        this.lock = new SynchronizedObject();
        this.keyToProviders = new LinkedHashMap();
        this.isAllowingSavingState = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void performAttach$lambda$12(SavedStateRegistryImpl savedStateRegistryImpl, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        lifecycleOwner.getClass();
        event.getClass();
        if (event == Lifecycle.Event.ON_START) {
            savedStateRegistryImpl.isAllowingSavingState = true;
        } else if (event == Lifecycle.Event.ON_STOP) {
            savedStateRegistryImpl.isAllowingSavingState = false;
        }
    }

    public final Bundle consumeRestoredStateForKey(String str) {
        str.getClass();
        if (!this.isRestored) {
            ah.f("You can 'consumeRestoredStateForKey' only after the corresponding component has moved to the 'CREATED' state");
            return null;
        }
        Bundle bundle = this.restoredState;
        if (bundle == null) {
            return null;
        }
        Bundle bundleM9370constructorimpl = SavedStateReader.m9370constructorimpl(bundle);
        Bundle bundleM9427getSavedStateimpl = SavedStateReader.m9371containsimpl(bundleM9370constructorimpl, str) ? SavedStateReader.m9427getSavedStateimpl(bundleM9370constructorimpl, str) : null;
        SavedStateWriter.m9492removeimpl(SavedStateWriter.m9456constructorimpl(bundle), str);
        if (SavedStateReader.m9448isEmptyimpl(SavedStateReader.m9370constructorimpl(bundle))) {
            this.restoredState = null;
        }
        return bundleM9427getSavedStateimpl;
    }

    public final ll3<j59> getOnAttach$savedstate() {
        return this.onAttach;
    }

    public final SavedStateRegistry.SavedStateProvider getSavedStateProvider(String str) {
        SavedStateRegistry.SavedStateProvider savedStateProvider;
        str.getClass();
        synchronized (this.lock) {
            Iterator it = this.keyToProviders.entrySet().iterator();
            do {
                savedStateProvider = null;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str2 = (String) entry.getKey();
                SavedStateRegistry.SavedStateProvider savedStateProvider2 = (SavedStateRegistry.SavedStateProvider) entry.getValue();
                if (aa4.e(str2, str)) {
                    savedStateProvider = savedStateProvider2;
                }
            } while (savedStateProvider == null);
        }
        return savedStateProvider;
    }

    public final boolean isAllowingSavingState$savedstate() {
        return this.isAllowingSavingState;
    }

    public final boolean isRestored() {
        return this.isRestored;
    }

    public final void performAttach() {
        if (this.owner.getLifecycle().getCurrentState() != Lifecycle.State.INITIALIZED) {
            ah.f("Restarter must be created only during owner's initialization stage");
        } else {
            if (this.attached) {
                ah.f("SavedStateRegistry was already attached.");
                return;
            }
            this.onAttach.invoke();
            this.owner.getLifecycle().addObserver(new LifecycleEventObserver() { // from class: fc7
                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    SavedStateRegistryImpl.performAttach$lambda$12(this.b, lifecycleOwner, event);
                }
            });
            this.attached = true;
        }
    }

    public final void performRestore$savedstate(Bundle bundle) {
        if (!this.attached) {
            performAttach();
        }
        if (this.owner.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            vh.e(this.owner.getLifecycle().getCurrentState(), "performRestore cannot be called when owner is ");
            return;
        }
        if (this.isRestored) {
            ah.f("SavedStateRegistry was already restored.");
            return;
        }
        Bundle bundleM9427getSavedStateimpl = null;
        if (bundle != null) {
            Bundle bundleM9370constructorimpl = SavedStateReader.m9370constructorimpl(bundle);
            if (SavedStateReader.m9371containsimpl(bundleM9370constructorimpl, SAVED_COMPONENTS_KEY)) {
                bundleM9427getSavedStateimpl = SavedStateReader.m9427getSavedStateimpl(bundleM9370constructorimpl, SAVED_COMPONENTS_KEY);
            }
        }
        this.restoredState = bundleM9427getSavedStateimpl;
        this.isRestored = true;
    }

    public final void performSave$savedstate(Bundle bundle) {
        bundle.getClass();
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(new b36[0], 0));
        Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundleBundleOf);
        Bundle bundle2 = this.restoredState;
        if (bundle2 != null) {
            SavedStateWriter.m9460putAllimpl(bundleM9456constructorimpl, bundle2);
        }
        synchronized (this.lock) {
            try {
                for (Map.Entry entry : this.keyToProviders.entrySet()) {
                    SavedStateWriter.m9483putSavedStateimpl(bundleM9456constructorimpl, (String) entry.getKey(), ((SavedStateRegistry.SavedStateProvider) entry.getValue()).saveState());
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (SavedStateReader.m9448isEmptyimpl(SavedStateReader.m9370constructorimpl(bundleBundleOf))) {
            return;
        }
        SavedStateWriter.m9483putSavedStateimpl(SavedStateWriter.m9456constructorimpl(bundle), SAVED_COMPONENTS_KEY, bundleBundleOf);
    }

    public final void registerSavedStateProvider(String str, SavedStateRegistry.SavedStateProvider savedStateProvider) {
        str.getClass();
        savedStateProvider.getClass();
        synchronized (this.lock) {
            if (this.keyToProviders.containsKey(str)) {
                throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
            }
            this.keyToProviders.put(str, savedStateProvider);
            j59 j59Var = j59.a;
        }
    }

    public final void setAllowingSavingState$savedstate(boolean z) {
        this.isAllowingSavingState = z;
    }

    public final void unregisterSavedStateProvider(String str) {
        str.getClass();
        synchronized (this.lock) {
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ SavedStateRegistryImpl(SavedStateRegistryOwner savedStateRegistryOwner, ll3 ll3Var, int i, jh2 jh2Var) {
        this(savedStateRegistryOwner, (i & 2) != 0 ? new gc7(0) : ll3Var);
    }
}
