package androidx.navigation;

import android.content.Context;
import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.navigation.internal.NavBackStackEntryStateImpl;
import androidx.navigation.internal.NavContext;

/* JADX INFO: loaded from: classes3.dex */
public final class NavBackStackEntryState {
    private final NavBackStackEntryStateImpl impl;

    public NavBackStackEntryState(Bundle bundle) {
        bundle.getClass();
        bundle.setClassLoader(NavBackStackEntryState.class.getClassLoader());
        this.impl = new NavBackStackEntryStateImpl(bundle);
    }

    public final Bundle getArgs() {
        return this.impl.getArgs$navigation_runtime_release();
    }

    public final int getDestinationId() {
        return this.impl.getDestinationId$navigation_runtime_release();
    }

    public final String getId() {
        return this.impl.getId$navigation_runtime_release();
    }

    public final Bundle getSavedState() {
        return this.impl.getSavedState$navigation_runtime_release();
    }

    public final NavBackStackEntry instantiate(NavContext navContext, NavDestination navDestination, Lifecycle.State state, NavControllerViewModel navControllerViewModel) {
        navContext.getClass();
        navDestination.getClass();
        state.getClass();
        Bundle args = getArgs();
        return this.impl.instantiate(navContext, navDestination, args != null ? prepareArgs(args, navContext) : null, state, navControllerViewModel);
    }

    public final Bundle prepareArgs(Bundle bundle, NavContext navContext) {
        bundle.getClass();
        navContext.getClass();
        Context context = navContext.getContext();
        bundle.setClassLoader(context != null ? context.getClassLoader() : null);
        return bundle;
    }

    public final Bundle writeToState() {
        return this.impl.writeToState$navigation_runtime_release();
    }

    public NavBackStackEntryState(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        this.impl = new NavBackStackEntryStateImpl(navBackStackEntry, navBackStackEntry.getDestination().getId());
    }
}
