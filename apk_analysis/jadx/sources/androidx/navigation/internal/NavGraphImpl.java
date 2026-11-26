package androidx.navigation.internal;

import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt;
import androidx.navigation.NavArgument;
import androidx.navigation.NavDeepLinkRequest;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.serialization.RouteSerializerKt;
import defpackage.aa4;
import defpackage.ah;
import defpackage.df4;
import defpackage.dp7;
import defpackage.fg;
import defpackage.h2;
import defpackage.i2;
import defpackage.iq7;
import defpackage.lx1;
import defpackage.m05;
import defpackage.n7;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.pf;
import defpackage.qn1;
import defpackage.ra8;
import defpackage.ta8;
import defpackage.wg;
import defpackage.ws2;
import defpackage.x07;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class NavGraphImpl {
    private final NavGraph graph;
    private final SparseArrayCompat<NavDestination> nodes;
    private int startDestId;
    private String startDestIdName;
    private String startDestinationRoute;

    public NavGraphImpl(NavGraph navGraph) {
        navGraph.getClass();
        this.graph = navGraph;
        this.nodes = new SparseArrayCompat<>(0, 1, null);
    }

    public static /* synthetic */ NavDestination findNodeComprehensive$navigation_common_release$default(NavGraphImpl navGraphImpl, int i, NavDestination navDestination, boolean z, NavDestination navDestination2, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            navDestination2 = null;
        }
        return navGraphImpl.findNodeComprehensive$navigation_common_release(i, navDestination, z, navDestination2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setStartDestination$lambda$12(NavDestination navDestination) {
        navDestination.getClass();
        String route = navDestination.getRoute();
        route.getClass();
        return route;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String setStartDestination$lambda$14(Object obj, NavDestination navDestination) {
        navDestination.getClass();
        Map<String, NavArgument> arguments = navDestination.getArguments();
        LinkedHashMap linkedHashMap = new LinkedHashMap(m05.b(arguments.size()));
        Iterator<T> it = arguments.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), ((NavArgument) entry.getValue()).getType());
        }
        return RouteSerializerKt.generateRouteWithArgs(obj, linkedHashMap);
    }

    public final void addAll$navigation_common_release(NavGraph navGraph) {
        navGraph.getClass();
        Iterator<NavDestination> it = navGraph.iterator();
        while (it.hasNext()) {
            NavDestination next = it.next();
            it.remove();
            addDestination$navigation_common_release(next);
        }
    }

    public final void addDestination$navigation_common_release(NavDestination navDestination) {
        navDestination.getClass();
        int id = navDestination.getId();
        String route = navDestination.getRoute();
        if (id == 0 && route == null) {
            fg.c("Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML.");
            return;
        }
        if (this.graph.getRoute() != null && aa4.e(route, this.graph.getRoute())) {
            StringBuilder sb = new StringBuilder("Destination ");
            sb.append(navDestination);
            i2.e(sb, " cannot have the same route as graph ", this.graph);
            return;
        }
        if (id == this.graph.getId()) {
            StringBuilder sb2 = new StringBuilder("Destination ");
            sb2.append(navDestination);
            i2.e(sb2, " cannot have the same id as graph ", this.graph);
            return;
        }
        NavDestination navDestination2 = this.nodes.get(id);
        if (navDestination2 == navDestination) {
            return;
        }
        if (navDestination.getParent() != null) {
            ah.f("Destination already has a parent set. Call NavGraph.remove() to remove the previous parent.");
            return;
        }
        if (navDestination2 != null) {
            navDestination2.setParent(null);
        }
        navDestination.setParent(this.graph);
        this.nodes.put(navDestination.getId(), navDestination);
    }

    public final void addDestinations$navigation_common_release(Collection<? extends NavDestination> collection) {
        collection.getClass();
        for (NavDestination navDestination : collection) {
            if (navDestination != null) {
                addDestination$navigation_common_release(navDestination);
            }
        }
    }

    public final void clear$navigation_common_release() {
        Iterator<NavDestination> itIterator$navigation_common_release = iterator$navigation_common_release();
        while (itIterator$navigation_common_release.hasNext()) {
            itIterator$navigation_common_release.next();
            itIterator$navigation_common_release.remove();
        }
    }

    public final NavDestination findNode$navigation_common_release(String str, boolean z) {
        Object next;
        NavDestination navDestination;
        str.getClass();
        Iterator it = ((lx1) dp7.f(SparseArrayKt.valueIterator(this.nodes))).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            navDestination = (NavDestination) next;
            if (ra8.v(navDestination.getRoute(), str, false)) {
                break;
            }
        } while (navDestination.matchRoute(str) == null);
        NavDestination navDestination2 = (NavDestination) next;
        if (navDestination2 != null) {
            return navDestination2;
        }
        if (!z || this.graph.getParent() == null) {
            return null;
        }
        NavGraph parent = this.graph.getParent();
        parent.getClass();
        return parent.findNode(str);
    }

    public final NavDestination findNodeComprehensive$navigation_common_release(int i, NavDestination navDestination, boolean z, NavDestination navDestination2) {
        NavDestination navDestination3 = this.nodes.get(i);
        if (navDestination2 != null) {
            if (aa4.e(navDestination3, navDestination2) && aa4.e(navDestination3.getParent(), navDestination2.getParent())) {
                return navDestination3;
            }
            navDestination3 = null;
        } else if (navDestination3 != null) {
            return navDestination3;
        }
        if (z) {
            Iterator it = ((lx1) dp7.f(SparseArrayKt.valueIterator(this.nodes))).iterator();
            while (true) {
                if (!it.hasNext()) {
                    navDestination3 = null;
                    break;
                }
                NavDestination navDestination4 = (NavDestination) it.next();
                NavDestination navDestinationFindNodeComprehensive = (!(navDestination4 instanceof NavGraph) || navDestination4.equals(navDestination)) ? null : ((NavGraph) navDestination4).findNodeComprehensive(i, this.graph, true, navDestination2);
                if (navDestinationFindNodeComprehensive != null) {
                    navDestination3 = navDestinationFindNodeComprehensive;
                    break;
                }
            }
        }
        if (navDestination3 != null) {
            return navDestination3;
        }
        if (this.graph.getParent() == null || aa4.e(this.graph.getParent(), navDestination)) {
            return null;
        }
        NavGraph parent = this.graph.getParent();
        parent.getClass();
        return parent.findNodeComprehensive(i, this.graph, z, navDestination2);
    }

    public final String getDisplayName$navigation_common_release(String str) {
        str.getClass();
        return this.graph.getId() != 0 ? str : "the root navigation";
    }

    public final NavGraph getGraph() {
        return this.graph;
    }

    public final SparseArrayCompat<NavDestination> getNodes$navigation_common_release() {
        return this.nodes;
    }

    public final String getStartDestDisplayName$navigation_common_release() {
        String strValueOf = this.startDestIdName;
        if (strValueOf == null) {
            strValueOf = this.startDestinationRoute;
            if (strValueOf == null) {
                strValueOf = String.valueOf(this.startDestId);
            }
            this.startDestIdName = strValueOf;
        }
        strValueOf.getClass();
        return strValueOf;
    }

    public final int getStartDestId$navigation_common_release() {
        return this.startDestId;
    }

    public final String getStartDestIdName$navigation_common_release() {
        return this.startDestIdName;
    }

    public final int getStartDestinationId$navigation_common_release() {
        return this.startDestId;
    }

    public final String getStartDestinationRoute$navigation_common_release() {
        return this.startDestinationRoute;
    }

    public final Iterator<NavDestination> iterator$navigation_common_release() {
        return new NavGraphImpl$iterator$1(this);
    }

    public final NavDestination.DeepLinkMatch matchDeepLink$navigation_common_release(NavDestination.DeepLinkMatch deepLinkMatch, NavDeepLinkRequest navDeepLinkRequest) {
        navDeepLinkRequest.getClass();
        return matchDeepLinkComprehensive$navigation_common_release(deepLinkMatch, navDeepLinkRequest, true, false, this.graph);
    }

    public final NavDestination.DeepLinkMatch matchDeepLinkComprehensive$navigation_common_release(NavDestination.DeepLinkMatch deepLinkMatch, NavDeepLinkRequest navDeepLinkRequest, boolean z, boolean z2, NavDestination navDestination) {
        NavDestination.DeepLinkMatch deepLinkMatch2;
        navDeepLinkRequest.getClass();
        navDestination.getClass();
        NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLinkComprehensive = null;
        if (z) {
            NavGraph navGraph = this.graph;
            ArrayList arrayList = new ArrayList();
            for (NavDestination navDestination2 : navGraph) {
                NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLink = !aa4.e(navDestination2, navDestination) ? navDestination2.matchDeepLink(navDeepLinkRequest) : null;
                if (deepLinkMatchMatchDeepLink != null) {
                    arrayList.add(deepLinkMatchMatchDeepLink);
                }
            }
            deepLinkMatch2 = (NavDestination.DeepLinkMatch) qn1.d0(arrayList);
        } else {
            deepLinkMatch2 = null;
        }
        NavGraph parent = this.graph.getParent();
        if (parent != null && z2 && !parent.equals(navDestination)) {
            deepLinkMatchMatchDeepLinkComprehensive = parent.matchDeepLinkComprehensive(navDeepLinkRequest, z, true, this.graph);
        }
        return (NavDestination.DeepLinkMatch) qn1.d0(yr.G(new NavDestination.DeepLinkMatch[]{deepLinkMatch, deepLinkMatch2, deepLinkMatchMatchDeepLinkComprehensive}));
    }

    public final NavDestination.DeepLinkMatch matchRouteComprehensive$navigation_common_release(String str, boolean z, boolean z2, NavDestination navDestination) {
        NavDestination.DeepLinkMatch deepLinkMatch;
        str.getClass();
        navDestination.getClass();
        NavDestination.DeepLinkMatch deepLinkMatchMatchRoute = this.graph.matchRoute(str);
        NavDestination.DeepLinkMatch deepLinkMatchMatchRouteComprehensive = null;
        if (z) {
            NavGraph navGraph = this.graph;
            ArrayList arrayList = new ArrayList();
            for (NavDestination navDestination2 : navGraph) {
                NavDestination.DeepLinkMatch deepLinkMatchMatchRouteComprehensive2 = aa4.e(navDestination2, navDestination) ? null : navDestination2 instanceof NavGraph ? ((NavGraph) navDestination2).matchRouteComprehensive(str, true, false, this.graph) : navDestination2.matchRoute(str);
                if (deepLinkMatchMatchRouteComprehensive2 != null) {
                    arrayList.add(deepLinkMatchMatchRouteComprehensive2);
                }
            }
            deepLinkMatch = (NavDestination.DeepLinkMatch) qn1.d0(arrayList);
        } else {
            deepLinkMatch = null;
        }
        NavGraph parent = this.graph.getParent();
        if (parent != null && z2 && !parent.equals(navDestination)) {
            deepLinkMatchMatchRouteComprehensive = parent.matchRouteComprehensive(str, z, true, this.graph);
        }
        return (NavDestination.DeepLinkMatch) qn1.d0(yr.G(new NavDestination.DeepLinkMatch[]{deepLinkMatchMatchRoute, deepLinkMatch, deepLinkMatchMatchRouteComprehensive}));
    }

    public final void remove$navigation_common_release(NavDestination navDestination) {
        navDestination.getClass();
        int iIndexOfKey = this.nodes.indexOfKey(navDestination.getId());
        if (iIndexOfKey >= 0) {
            this.nodes.valueAt(iIndexOfKey).setParent(null);
            this.nodes.removeAt(iIndexOfKey);
        }
    }

    public final void setStartDestId$navigation_common_release(int i) {
        this.startDestId = i;
    }

    public final void setStartDestIdName$navigation_common_release(String str) {
        this.startDestIdName = str;
    }

    public final <T> void setStartDestination$navigation_common_release(df4<T> df4Var, nl3<? super NavDestination, String> nl3Var) {
        df4Var.getClass();
        nl3Var.getClass();
        int iGenerateHashCode = RouteSerializerKt.generateHashCode(df4Var);
        NavDestination navDestinationFindNode$navigation_common_release = findNode$navigation_common_release(iGenerateHashCode);
        if (navDestinationFindNode$navigation_common_release == null) {
            wg.c(df4Var.getDescriptor().h(), "Cannot find startDestination ", " from NavGraph. Ensure the starting NavDestination was added with route from KClass.");
        } else {
            setStartDestinationRoute$navigation_common_release(nl3Var.invoke(navDestinationFindNode$navigation_common_release));
            this.startDestId = iGenerateHashCode;
        }
    }

    public final void setStartDestinationId$navigation_common_release(int i) {
        if (i == this.graph.getId()) {
            h2.c(this.graph, n7.c(i, "Start destination ", " cannot use the same id as the graph "));
        } else {
            if (this.startDestinationRoute != null) {
                setStartDestinationRoute$navigation_common_release(null);
            }
            this.startDestId = i;
            this.startDestIdName = null;
        }
    }

    public final void setStartDestinationRoute$navigation_common_release(String str) {
        int iHashCode;
        if (str == null) {
            iHashCode = 0;
        } else if (str.equals(this.graph.getRoute())) {
            h2.c(this.graph, n7.d("Start destination ", str, " cannot use the same route as the graph "));
            return;
        } else {
            if (ta8.M(str)) {
                fg.c("Cannot have an empty start destination route");
                return;
            }
            iHashCode = NavDestination.Companion.createRoute(str).hashCode();
        }
        this.startDestId = iHashCode;
        this.startDestinationRoute = str;
    }

    public final void addDestinations$navigation_common_release(NavDestination... navDestinationArr) {
        navDestinationArr.getClass();
        for (NavDestination navDestination : navDestinationArr) {
            addDestination$navigation_common_release(navDestination);
        }
    }

    public final void setStartDestination$navigation_common_release(int i) {
        setStartDestinationId$navigation_common_release(i);
    }

    public final void setStartDestination$navigation_common_release(String str) {
        str.getClass();
        setStartDestinationRoute$navigation_common_release(str);
    }

    public final <T> void setStartDestination$navigation_common_release(T t) {
        t.getClass();
        setStartDestination$navigation_common_release(iq7.b(x07.a(t.getClass())), new ws2(t, 1));
    }

    public final <T> void setStartDestination$navigation_common_release(ne4<T> ne4Var) {
        ne4Var.getClass();
        setStartDestination$navigation_common_release(iq7.b(ne4Var), new pf(4));
    }

    public final NavDestination findNode$navigation_common_release(int i) {
        return findNodeComprehensive$navigation_common_release$default(this, i, this.graph, false, null, 8, null);
    }

    public final NavDestination findNode$navigation_common_release(String str) {
        if (str == null || ta8.M(str)) {
            return null;
        }
        return findNode$navigation_common_release(str, true);
    }

    public final <T> NavDestination findNode$navigation_common_release(T t) {
        if (t != null) {
            return findNode$navigation_common_release(RouteSerializerKt.generateHashCode(iq7.b(x07.a(t.getClass()))));
        }
        return null;
    }

    public final NavDestination findNode$navigation_common_release(ne4<?> ne4Var) {
        ne4Var.getClass();
        return findNode$navigation_common_release(RouteSerializerKt.generateHashCode(iq7.b(ne4Var)));
    }
}
