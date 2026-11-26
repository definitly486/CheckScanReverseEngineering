package androidx.navigation;

import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.navigation.internal.NavContext;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import com.tapjoy.TJAdUnitConstants;
import defpackage.aa4;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.jh2;
import defpackage.w21;
import defpackage.x07;
import defpackage.zr6;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public final class NavBackStackEntry implements LifecycleOwner, ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner {
    public static final Companion Companion = new Companion(null);
    private final NavContext context;
    private NavDestination destination;
    private Lifecycle.State hostLifecycleState;
    private final String id;
    private final Bundle immutableArgs;
    private final NavBackStackEntryImpl impl;
    private final Bundle savedState;
    private final cl4 savedStateHandle$delegate;
    private final NavViewModelStoreProvider viewModelStoreProvider;

    private NavBackStackEntry(NavContext navContext, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2) {
        this.context = navContext;
        this.destination = navDestination;
        this.immutableArgs = bundle;
        this.hostLifecycleState = state;
        this.viewModelStoreProvider = navViewModelStoreProvider;
        this.id = str;
        this.savedState = bundle2;
        this.impl = new NavBackStackEntryImpl(this);
        this.savedStateHandle$delegate = new fh8(new w21(this, 3));
    }

    private static Object getArguments$delegate(NavBackStackEntry navBackStackEntry) {
        zr6 zr6Var = new zr6(navBackStackEntry.impl, NavBackStackEntryImpl.class, TJAdUnitConstants.String.ARGUMENTS, "getArguments$navigation_common_release()Landroid/os/Bundle;", 0);
        x07.a.getClass();
        return zr6Var;
    }

    private static Object getDefaultViewModelProviderFactory$delegate(NavBackStackEntry navBackStackEntry) {
        zr6 zr6Var = new zr6(navBackStackEntry.impl, NavBackStackEntryImpl.class, "defaultViewModelProviderFactory", "getDefaultViewModelProviderFactory$navigation_common_release()Landroidx/lifecycle/ViewModelProvider$Factory;", 0);
        x07.a.getClass();
        return zr6Var;
    }

    private static Object getLifecycle$delegate(NavBackStackEntry navBackStackEntry) {
        zr6 zr6Var = new zr6(navBackStackEntry.impl, NavBackStackEntryImpl.class, "lifecycle", "getLifecycle$navigation_common_release()Landroidx/lifecycle/LifecycleRegistry;", 0);
        x07.a.getClass();
        return zr6Var;
    }

    private static Object getSavedStateRegistry$delegate(NavBackStackEntry navBackStackEntry) {
        zr6 zr6Var = new zr6(navBackStackEntry.impl, NavBackStackEntryImpl.class, "savedStateRegistry", "getSavedStateRegistry$navigation_common_release()Landroidx/savedstate/SavedStateRegistry;", 0);
        x07.a.getClass();
        return zr6Var;
    }

    private static Object getViewModelStore$delegate(NavBackStackEntry navBackStackEntry) {
        zr6 zr6Var = new zr6(navBackStackEntry.impl, NavBackStackEntryImpl.class, "viewModelStore", "getViewModelStore$navigation_common_release()Landroidx/lifecycle/ViewModelStore;", 0);
        x07.a.getClass();
        return zr6Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SavedStateHandle savedStateHandle_delegate$lambda$0(NavBackStackEntry navBackStackEntry) {
        return navBackStackEntry.impl.getSavedStateHandle$navigation_common_release();
    }

    public boolean equals(Object obj) {
        Set<String> setKeySet;
        if (obj != null && (obj instanceof NavBackStackEntry)) {
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
            if (aa4.e(this.id, navBackStackEntry.id) && aa4.e(this.destination, navBackStackEntry.destination) && aa4.e(getLifecycle(), navBackStackEntry.getLifecycle()) && aa4.e(getSavedStateRegistry(), navBackStackEntry.getSavedStateRegistry())) {
                if (aa4.e(this.immutableArgs, navBackStackEntry.immutableArgs)) {
                    return true;
                }
                Bundle bundle = this.immutableArgs;
                if (bundle != null && (setKeySet = bundle.keySet()) != null) {
                    Set<String> set = setKeySet;
                    if ((set instanceof Collection) && set.isEmpty()) {
                        return true;
                    }
                    for (String str : set) {
                        Object obj2 = this.immutableArgs.get(str);
                        Bundle bundle2 = navBackStackEntry.immutableArgs;
                        if (!aa4.e(obj2, bundle2 != null ? bundle2.get(str) : null)) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final Bundle getArguments() {
        return this.impl.getArguments$navigation_common_release();
    }

    public final NavContext getContext$navigation_common_release() {
        return this.context;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public CreationExtras getDefaultViewModelCreationExtras() {
        MutableCreationExtras defaultViewModelCreationExtras$navigation_common_release = this.impl.getDefaultViewModelCreationExtras$navigation_common_release();
        NavContext navContext = this.context;
        Object application = navContext != null ? navContext.getApplication() : null;
        Application application2 = application instanceof Application ? (Application) application : null;
        if (application2 != null) {
            defaultViewModelCreationExtras$navigation_common_release.set(ViewModelProvider.AndroidViewModelFactory.APPLICATION_KEY, application2);
        }
        return defaultViewModelCreationExtras$navigation_common_release;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return this.impl.getDefaultViewModelProviderFactory$navigation_common_release();
    }

    public final NavDestination getDestination() {
        return this.destination;
    }

    public final Lifecycle.State getHostLifecycleState$navigation_common_release() {
        return this.hostLifecycleState;
    }

    public final String getId() {
        return this.id;
    }

    public final Bundle getImmutableArgs$navigation_common_release() {
        return this.immutableArgs;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public Lifecycle getLifecycle() {
        return this.impl.getLifecycle$navigation_common_release();
    }

    public final Lifecycle.State getMaxLifecycle() {
        return this.impl.getMaxLifecycle$navigation_common_release();
    }

    public final Bundle getSavedState$navigation_common_release() {
        return this.savedState;
    }

    public final SavedStateHandle getSavedStateHandle() {
        return (SavedStateHandle) this.savedStateHandle$delegate.getValue();
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public SavedStateRegistry getSavedStateRegistry() {
        return this.impl.getSavedStateRegistry$navigation_common_release();
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public ViewModelStore getViewModelStore() {
        return this.impl.getViewModelStore$navigation_common_release();
    }

    public final NavViewModelStoreProvider getViewModelStoreProvider$navigation_common_release() {
        return this.viewModelStoreProvider;
    }

    public final void handleLifecycleEvent(Lifecycle.Event event) {
        event.getClass();
        this.impl.handleLifecycleEvent$navigation_common_release(event);
    }

    public int hashCode() {
        Set<String> setKeySet;
        int iHashCode = this.destination.hashCode() + (this.id.hashCode() * 31);
        Bundle bundle = this.immutableArgs;
        if (bundle != null && (setKeySet = bundle.keySet()) != null) {
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                int i = iHashCode * 31;
                Object obj = this.immutableArgs.get((String) it.next());
                iHashCode = i + (obj != null ? obj.hashCode() : 0);
            }
        }
        return getSavedStateRegistry().hashCode() + ((getLifecycle().hashCode() + (iHashCode * 31)) * 31);
    }

    public final void saveState(Bundle bundle) {
        bundle.getClass();
        this.impl.saveState$navigation_common_release(bundle);
    }

    public final void setDestination(NavDestination navDestination) {
        navDestination.getClass();
        this.destination = navDestination;
    }

    public final void setHostLifecycleState$navigation_common_release(Lifecycle.State state) {
        state.getClass();
        this.hostLifecycleState = state;
    }

    public final void setMaxLifecycle(Lifecycle.State state) {
        state.getClass();
        this.impl.setMaxLifecycle$navigation_common_release(state);
    }

    public String toString() {
        return this.impl.toString();
    }

    public final void updateState() {
        this.impl.updateState$navigation_common_release();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ NavBackStackEntry create$default(Companion companion, NavContext navContext, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2, int i, Object obj) {
            if ((i & 4) != 0) {
                bundle = null;
            }
            if ((i & 8) != 0) {
                state = Lifecycle.State.CREATED;
            }
            if ((i & 16) != 0) {
                navViewModelStoreProvider = null;
            }
            if ((i & 32) != 0) {
                str = companion.randomUUID$navigation_common_release();
            }
            if ((i & 64) != 0) {
                bundle2 = null;
            }
            return companion.create(navContext, navDestination, bundle, state, navViewModelStoreProvider, str, bundle2);
        }

        public final NavBackStackEntry create(NavContext navContext, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2) {
            navDestination.getClass();
            state.getClass();
            str.getClass();
            return new NavBackStackEntry(navContext, navDestination, bundle, state, navViewModelStoreProvider, str, bundle2, null);
        }

        public final String randomUUID$navigation_common_release() {
            String string = UUID.randomUUID().toString();
            string.getClass();
            return string;
        }

        private Companion() {
        }
    }

    public /* synthetic */ NavBackStackEntry(NavContext navContext, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2, jh2 jh2Var) {
        this(navContext, navDestination, bundle, state, navViewModelStoreProvider, str, bundle2);
    }

    public /* synthetic */ NavBackStackEntry(NavContext navContext, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavViewModelStoreProvider navViewModelStoreProvider, String str, Bundle bundle2, int i, jh2 jh2Var) {
        this(navContext, navDestination, (i & 4) != 0 ? null : bundle, (i & 8) != 0 ? Lifecycle.State.CREATED : state, (i & 16) != 0 ? null : navViewModelStoreProvider, (i & 32) != 0 ? Companion.randomUUID$navigation_common_release() : str, (i & 64) != 0 ? null : bundle2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavBackStackEntry(NavBackStackEntry navBackStackEntry, Bundle bundle) {
        this(navBackStackEntry.context, navBackStackEntry.destination, bundle, navBackStackEntry.hostLifecycleState, navBackStackEntry.viewModelStoreProvider, navBackStackEntry.id, navBackStackEntry.savedState);
        navBackStackEntry.getClass();
        this.impl.setHostLifecycleState$navigation_common_release(navBackStackEntry.hostLifecycleState);
        this.impl.setMaxLifecycle$navigation_common_release(navBackStackEntry.getMaxLifecycle());
    }

    public /* synthetic */ NavBackStackEntry(NavBackStackEntry navBackStackEntry, Bundle bundle, int i, jh2 jh2Var) {
        this(navBackStackEntry, (i & 2) != 0 ? navBackStackEntry.getArguments() : bundle);
    }
}
