package androidx.navigation;

import defpackage.aa4;
import defpackage.c9;
import defpackage.ne4;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class NavGraphKt__NavGraphKt {
    public static final boolean contains(NavGraph navGraph, String str) {
        navGraph.getClass();
        str.getClass();
        return navGraph.findNode(str) != null;
    }

    public static final NavDestination get(NavGraph navGraph, String str) {
        navGraph.getClass();
        str.getClass();
        NavDestination navDestinationFindNode = navGraph.findNode(str);
        if (navDestinationFindNode != null) {
            return navDestinationFindNode;
        }
        c9.h("No destination for ", str, " was found in ", navGraph);
        return null;
    }

    public static final void minusAssign(NavGraph navGraph, NavDestination navDestination) {
        navGraph.getClass();
        navDestination.getClass();
        navGraph.remove(navDestination);
    }

    public static final void plusAssign(NavGraph navGraph, NavDestination navDestination) {
        navGraph.getClass();
        navDestination.getClass();
        navGraph.addDestination(navDestination);
    }

    public static final void plusAssign(NavGraph navGraph, NavGraph navGraph2) {
        navGraph.getClass();
        navGraph2.getClass();
        navGraph.addAll(navGraph2);
    }

    public static final <T> boolean contains(NavGraph navGraph, ne4<T> ne4Var) {
        navGraph.getClass();
        ne4Var.getClass();
        aa4.i();
        throw null;
    }

    public static final <T> boolean contains(NavGraph navGraph, T t) {
        navGraph.getClass();
        t.getClass();
        return navGraph.findNode(t) != null;
    }

    public static final <T> NavDestination get(NavGraph navGraph, ne4<T> ne4Var) {
        navGraph.getClass();
        ne4Var.getClass();
        aa4.i();
        throw null;
    }

    public static final <T> NavDestination get(NavGraph navGraph, T t) {
        navGraph.getClass();
        t.getClass();
        NavDestination navDestinationFindNode = navGraph.findNode(t);
        if (navDestinationFindNode != null) {
            return navDestinationFindNode;
        }
        c9.h("No destination for ", t, " was found in ", navGraph);
        return null;
    }
}
