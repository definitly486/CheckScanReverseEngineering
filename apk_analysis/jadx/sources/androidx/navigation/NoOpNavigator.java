package androidx.navigation;

import android.os.Bundle;

/* JADX INFO: loaded from: classes3.dex */
@Navigator.Name("NoOp")
public final class NoOpNavigator extends Navigator<NavDestination> {
    public NoOpNavigator() {
        super("NoOp");
    }

    @Override // androidx.navigation.Navigator
    public NavDestination createDestination() {
        return new NavDestination(this);
    }

    @Override // androidx.navigation.Navigator
    public NavDestination navigate(NavDestination navDestination, Bundle bundle, NavOptions navOptions, Navigator.Extras extras) {
        navDestination.getClass();
        return navDestination;
    }

    @Override // androidx.navigation.Navigator
    public boolean popBackStack() {
        return true;
    }
}
