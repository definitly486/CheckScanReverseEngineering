package androidx.navigation.internal;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactoryBuilder;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavViewModelStoreProvider;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateWriter;
import defpackage.ah;
import defpackage.b36;
import defpackage.cl4;
import defpackage.er2;
import defpackage.et0;
import defpackage.fh8;
import defpackage.tt4;
import defpackage.x07;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class NavBackStackEntryImpl {
    private final NavContext context;
    private final cl4 defaultFactory$delegate;
    private final ViewModelProvider.Factory defaultViewModelProviderFactory;
    private NavDestination destination;
    private final NavBackStackEntry entry;
    private Lifecycle.State hostLifecycleState;
    private final String id;
    private final Bundle immutableArgs;
    private final LifecycleRegistry lifecycle;
    private Lifecycle.State maxLifecycle;
    private final cl4 navResultSavedStateFactory$delegate;
    private final Bundle savedState;
    private boolean savedStateRegistryAttached;
    private final SavedStateRegistryController savedStateRegistryController;
    private final NavViewModelStoreProvider viewModelStoreProvider;

    public static final class SavedStateViewModel extends ViewModel {
        private final SavedStateHandle handle;

        public SavedStateViewModel(SavedStateHandle savedStateHandle) {
            savedStateHandle.getClass();
            this.handle = savedStateHandle;
        }

        public final SavedStateHandle getHandle() {
            return this.handle;
        }
    }

    public NavBackStackEntryImpl(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        this.entry = navBackStackEntry;
        this.context = navBackStackEntry.getContext$navigation_common_release();
        this.destination = navBackStackEntry.getDestination();
        this.immutableArgs = navBackStackEntry.getImmutableArgs$navigation_common_release();
        this.hostLifecycleState = navBackStackEntry.getHostLifecycleState$navigation_common_release();
        this.viewModelStoreProvider = navBackStackEntry.getViewModelStoreProvider$navigation_common_release();
        this.id = navBackStackEntry.getId();
        this.savedState = navBackStackEntry.getSavedState$navigation_common_release();
        this.savedStateRegistryController = SavedStateRegistryController.Companion.create(navBackStackEntry);
        int i = 1;
        this.defaultFactory$delegate = new fh8(new tt4(i));
        this.lifecycle = new LifecycleRegistry(navBackStackEntry);
        this.maxLifecycle = Lifecycle.State.INITIALIZED;
        this.defaultViewModelProviderFactory = getDefaultFactory$navigation_common_release();
        this.navResultSavedStateFactory$delegate = new fh8(new er2(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SavedStateViewModelFactory defaultFactory_delegate$lambda$0() {
        return new SavedStateViewModelFactory();
    }

    private final ViewModelProvider.Factory getNavResultSavedStateFactory() {
        return (ViewModelProvider.Factory) this.navResultSavedStateFactory$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider.Factory navResultSavedStateFactory_delegate$lambda$10() {
        InitializerViewModelFactoryBuilder initializerViewModelFactoryBuilder = new InitializerViewModelFactoryBuilder();
        initializerViewModelFactoryBuilder.addInitializer(x07.a(SavedStateViewModel.class), new et0(2));
        return initializerViewModelFactoryBuilder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SavedStateViewModel navResultSavedStateFactory_delegate$lambda$10$lambda$9$lambda$8(CreationExtras creationExtras) {
        creationExtras.getClass();
        return new SavedStateViewModel(SavedStateHandleSupport.createSavedStateHandle(creationExtras));
    }

    public final Bundle getArguments$navigation_common_release() {
        if (this.immutableArgs == null) {
            return null;
        }
        b36[] b36VarArr = new b36[0];
        Bundle bundleBundleOf = BundleKt.bundleOf((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
        SavedStateWriter.m9460putAllimpl(SavedStateWriter.m9456constructorimpl(bundleBundleOf), this.immutableArgs);
        return bundleBundleOf;
    }

    public final NavContext getContext$navigation_common_release() {
        return this.context;
    }

    public final SavedStateViewModelFactory getDefaultFactory$navigation_common_release() {
        return (SavedStateViewModelFactory) this.defaultFactory$delegate.getValue();
    }

    public final MutableCreationExtras getDefaultViewModelCreationExtras$navigation_common_release() {
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(null, 1, null);
        mutableCreationExtras.set(SavedStateHandleSupport.SAVED_STATE_REGISTRY_OWNER_KEY, this.entry);
        mutableCreationExtras.set(SavedStateHandleSupport.VIEW_MODEL_STORE_OWNER_KEY, this.entry);
        Bundle arguments$navigation_common_release = getArguments$navigation_common_release();
        if (arguments$navigation_common_release != null) {
            mutableCreationExtras.set(SavedStateHandleSupport.DEFAULT_ARGS_KEY, arguments$navigation_common_release);
        }
        return mutableCreationExtras;
    }

    public final ViewModelProvider.Factory getDefaultViewModelProviderFactory$navigation_common_release() {
        return this.defaultViewModelProviderFactory;
    }

    public final NavDestination getDestination$navigation_common_release() {
        return this.destination;
    }

    public final NavBackStackEntry getEntry() {
        return this.entry;
    }

    public final Lifecycle.State getHostLifecycleState$navigation_common_release() {
        return this.hostLifecycleState;
    }

    public final String getId$navigation_common_release() {
        return this.id;
    }

    public final Bundle getImmutableArgs$navigation_common_release() {
        return this.immutableArgs;
    }

    public final LifecycleRegistry getLifecycle$navigation_common_release() {
        return this.lifecycle;
    }

    public final Lifecycle.State getMaxLifecycle$navigation_common_release() {
        return this.maxLifecycle;
    }

    public final Bundle getSavedState$navigation_common_release() {
        return this.savedState;
    }

    public final SavedStateHandle getSavedStateHandle$navigation_common_release() {
        if (!this.savedStateRegistryAttached) {
            ah.f("You cannot access the NavBackStackEntry's SavedStateHandle until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).");
            return null;
        }
        if (this.lifecycle.getCurrentState() != Lifecycle.State.DESTROYED) {
            return ((SavedStateViewModel) ViewModelProvider.Companion.create$default(ViewModelProvider.Companion, this.entry, getNavResultSavedStateFactory(), (CreationExtras) null, 4, (Object) null).get(x07.a(SavedStateViewModel.class))).getHandle();
        }
        ah.f("You cannot access the NavBackStackEntry's SavedStateHandle after the NavBackStackEntry is destroyed.");
        return null;
    }

    public final SavedStateRegistry getSavedStateRegistry$navigation_common_release() {
        return this.savedStateRegistryController.getSavedStateRegistry();
    }

    public final boolean getSavedStateRegistryAttached$navigation_common_release() {
        return this.savedStateRegistryAttached;
    }

    public final SavedStateRegistryController getSavedStateRegistryController$navigation_common_release() {
        return this.savedStateRegistryController;
    }

    public final ViewModelStore getViewModelStore$navigation_common_release() {
        if (!this.savedStateRegistryAttached) {
            ah.f("You cannot access the NavBackStackEntry's ViewModels until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).");
            return null;
        }
        if (this.lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
            ah.f("You cannot access the NavBackStackEntry's ViewModels after the NavBackStackEntry is destroyed.");
            return null;
        }
        NavViewModelStoreProvider navViewModelStoreProvider = this.viewModelStoreProvider;
        if (navViewModelStoreProvider != null) {
            return navViewModelStoreProvider.getViewModelStore(this.id);
        }
        ah.f("You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph.");
        return null;
    }

    public final NavViewModelStoreProvider getViewModelStoreProvider$navigation_common_release() {
        return this.viewModelStoreProvider;
    }

    public final void handleLifecycleEvent$navigation_common_release(Lifecycle.Event event) {
        event.getClass();
        this.entry.setHostLifecycleState$navigation_common_release(event.getTargetState());
        this.hostLifecycleState = event.getTargetState();
        updateState$navigation_common_release();
    }

    public final void saveState$navigation_common_release(Bundle bundle) {
        bundle.getClass();
        this.savedStateRegistryController.performSave(bundle);
    }

    public final void setDestination$navigation_common_release(NavDestination navDestination) {
        navDestination.getClass();
        this.destination = navDestination;
    }

    public final void setHostLifecycleState$navigation_common_release(Lifecycle.State state) {
        state.getClass();
        this.hostLifecycleState = state;
    }

    public final void setMaxLifecycle$navigation_common_release(Lifecycle.State state) {
        state.getClass();
        this.maxLifecycle = state;
        updateState$navigation_common_release();
    }

    public final void setSavedStateRegistryAttached$navigation_common_release(boolean z) {
        this.savedStateRegistryAttached = z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(x07.a(this.entry.getClass()).f());
        sb.append("(" + this.id + ')');
        sb.append(" destination=");
        sb.append(this.destination);
        return sb.toString();
    }

    public final void updateState$navigation_common_release() {
        if (!this.savedStateRegistryAttached) {
            this.savedStateRegistryController.performAttach();
            this.savedStateRegistryAttached = true;
            if (this.viewModelStoreProvider != null) {
                SavedStateHandleSupport.enableSavedStateHandles(this.entry);
            }
            this.savedStateRegistryController.performRestore(this.savedState);
        }
        int iOrdinal = this.hostLifecycleState.ordinal();
        int iOrdinal2 = this.maxLifecycle.ordinal();
        LifecycleRegistry lifecycleRegistry = this.lifecycle;
        if (iOrdinal < iOrdinal2) {
            lifecycleRegistry.setCurrentState(this.hostLifecycleState);
        } else {
            lifecycleRegistry.setCurrentState(this.maxLifecycle);
        }
    }
}
