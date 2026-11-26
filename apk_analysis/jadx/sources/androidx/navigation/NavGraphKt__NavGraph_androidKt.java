package androidx.navigation;

import defpackage.y83;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class NavGraphKt__NavGraph_androidKt {
    public static final boolean contains(NavGraph navGraph, int i) {
        navGraph.getClass();
        return navGraph.findNode(i) != null;
    }

    public static final NavDestination get(NavGraph navGraph, int i) {
        navGraph.getClass();
        NavDestination navDestinationFindNode = navGraph.findNode(i);
        if (navDestinationFindNode != null) {
            return navDestinationFindNode;
        }
        y83.f(i, "No destination for ", " was found in ", navGraph);
        return null;
    }
}
