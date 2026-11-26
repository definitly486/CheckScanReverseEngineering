package androidx.navigation;

import android.os.Bundle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator;
import defpackage.aa4;
import defpackage.ah;
import defpackage.f29;
import defpackage.fg;
import defpackage.j59;
import defpackage.mf5;
import defpackage.nl3;
import defpackage.pa3;
import defpackage.pn1;
import defpackage.ta8;
import defpackage.x07;
import defpackage.xi1;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Navigator<D extends NavDestination> {
    private final String _name;
    private NavigatorState _state;
    private boolean isAttached;

    public interface Extras {
    }

    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface Name {
        String value();
    }

    public Navigator(String str) {
        str.getClass();
        this._name = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NavBackStackEntry navigate$lambda$1(Navigator navigator, NavOptions navOptions, Extras extras, NavBackStackEntry navBackStackEntry) {
        NavDestination navDestinationNavigate;
        navBackStackEntry.getClass();
        NavDestination destination = navBackStackEntry.getDestination();
        if (destination == null) {
            destination = null;
        }
        if (destination == null || (navDestinationNavigate = navigator.navigate(destination, navBackStackEntry.getArguments(), navOptions, extras)) == null) {
            return null;
        }
        return navDestinationNavigate.equals(destination) ? navBackStackEntry : navigator.getState().createBackStackEntry(navDestinationNavigate, navDestinationNavigate.addInDefaultArgs(navBackStackEntry.getArguments()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onLaunchSingleTop$lambda$3(NavOptionsBuilder navOptionsBuilder) {
        navOptionsBuilder.getClass();
        navOptionsBuilder.setLaunchSingleTop(true);
        return j59.a;
    }

    public abstract D createDestination();

    public final String getName$navigation_common_release() {
        String str = this._name;
        if (str != null) {
            return str;
        }
        String strF = x07.a(getClass()).f();
        strF.getClass();
        return ta8.U(strF, "Navigator");
    }

    public final NavigatorState getState() {
        NavigatorState navigatorState = this._state;
        if (navigatorState != null) {
            return navigatorState;
        }
        ah.f("You cannot access the Navigator's state until the Navigator is attached");
        return null;
    }

    public final boolean isAttached() {
        return this.isAttached;
    }

    public void navigate(List<NavBackStackEntry> list, final NavOptions navOptions, final Extras extras) {
        list.getClass();
        pa3.a aVar = new pa3.a(new pa3(new f29(new pn1(list), new nl3() { // from class: yl5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Navigator.navigate$lambda$1(this.b, navOptions, extras, (NavBackStackEntry) obj);
            }
        }), false, new xi1(4)));
        while (aVar.hasNext()) {
            getState().push((NavBackStackEntry) aVar.next());
        }
    }

    public void onAttach(NavigatorState navigatorState) {
        navigatorState.getClass();
        this._state = navigatorState;
        this.isAttached = true;
    }

    public void onLaunchSingleTop(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        NavDestination destination = navBackStackEntry.getDestination();
        if (destination == null) {
            destination = null;
        }
        if (destination == null) {
            return;
        }
        navigate(destination, null, NavOptionsBuilderKt.navOptions(new mf5(2)), null);
        getState().onLaunchSingleTop(navBackStackEntry);
    }

    public void onRestoreState(Bundle bundle) {
        bundle.getClass();
    }

    public Bundle onSaveState() {
        return null;
    }

    public void popBackStack(NavBackStackEntry navBackStackEntry, boolean z) {
        navBackStackEntry.getClass();
        List<NavBackStackEntry> value = getState().getBackStack().getValue();
        if (!value.contains(navBackStackEntry)) {
            fg.d("popBackStack was called with ", navBackStackEntry, " which does not exist in back stack ", value);
            return;
        }
        ListIterator<NavBackStackEntry> listIterator = value.listIterator(value.size());
        NavBackStackEntry navBackStackEntryPrevious = null;
        while (popBackStack()) {
            navBackStackEntryPrevious = listIterator.previous();
            if (aa4.e(navBackStackEntryPrevious, navBackStackEntry)) {
                break;
            }
        }
        if (navBackStackEntryPrevious != null) {
            getState().pop(navBackStackEntryPrevious, z);
        }
    }

    public Navigator() {
        this._name = null;
    }

    public NavDestination navigate(D d, Bundle bundle, NavOptions navOptions, Extras extras) {
        d.getClass();
        return d;
    }

    public boolean popBackStack() {
        return true;
    }
}
