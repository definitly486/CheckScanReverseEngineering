package androidx.navigation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt;
import androidx.navigation.internal.NavContext;
import androidx.navigation.internal.NavGraphImpl;
import defpackage.aa4;
import defpackage.ag;
import defpackage.df4;
import defpackage.dp7;
import defpackage.j59;
import defpackage.jh2;
import defpackage.lx1;
import defpackage.n1;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.re4;
import defpackage.rg5;
import defpackage.ul2;
import defpackage.us2;
import defpackage.x07;
import defpackage.zo7;
import defpackage.zr6;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class NavGraph extends NavDestination implements Iterable<NavDestination>, re4 {
    public static final Companion Companion = new Companion(null);
    private final NavGraphImpl impl;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraph(Navigator<? extends NavGraph> navigator) {
        super(navigator);
        navigator.getClass();
        this.impl = new NavGraphImpl(this);
    }

    public static /* synthetic */ NavDestination findNodeComprehensive$default(NavGraph navGraph, int i, NavDestination navDestination, boolean z, NavDestination navDestination2, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: findNodeComprehensive");
            return null;
        }
        if ((i2 & 8) != 0) {
            navDestination2 = null;
        }
        return navGraph.findNodeComprehensive(i, navDestination, z, navDestination2);
    }

    public static final NavDestination findStartDestination(NavGraph navGraph) {
        return Companion.findStartDestination(navGraph);
    }

    private static Object getNodes$delegate(NavGraph navGraph) {
        zr6 zr6Var = new zr6(navGraph.impl, NavGraphImpl.class, "nodes", "getNodes$navigation_common_release()Landroidx/collection/SparseArrayCompat;", 0);
        x07.a.getClass();
        return zr6Var;
    }

    private static Object getStartDestDisplayName$delegate(NavGraph navGraph) {
        zr6 zr6Var = new zr6(navGraph.impl, NavGraphImpl.class, "startDestDisplayName", "getStartDestDisplayName$navigation_common_release()Ljava/lang/String;", 0);
        x07.a.getClass();
        return zr6Var;
    }

    private static Object getStartDestinationId$delegate(NavGraph navGraph) {
        rg5 rg5Var = new rg5(navGraph.impl, NavGraphImpl.class, "startDestinationId", "getStartDestinationId$navigation_common_release()I", 0);
        x07.a.getClass();
        return rg5Var;
    }

    private static Object getStartDestinationRoute$delegate(NavGraph navGraph) {
        rg5 rg5Var = new rg5(navGraph.impl, NavGraphImpl.class, "startDestinationRoute", "getStartDestinationRoute$navigation_common_release()Ljava/lang/String;", 0);
        x07.a.getClass();
        return rg5Var;
    }

    private final void setStartDestinationId(int i) {
        this.impl.setStartDestinationId$navigation_common_release(i);
    }

    private final void setStartDestinationRoute(String str) {
        this.impl.setStartDestinationRoute$navigation_common_release(str);
    }

    public final void addAll(NavGraph navGraph) {
        navGraph.getClass();
        this.impl.addAll$navigation_common_release(navGraph);
    }

    public final void addDestination(NavDestination navDestination) {
        navDestination.getClass();
        this.impl.addDestination$navigation_common_release(navDestination);
    }

    public final void addDestinations(NavDestination... navDestinationArr) {
        navDestinationArr.getClass();
        this.impl.addDestinations$navigation_common_release((NavDestination[]) Arrays.copyOf(navDestinationArr, navDestinationArr.length));
    }

    public final void clear() {
        this.impl.clear$navigation_common_release();
    }

    @Override // androidx.navigation.NavDestination
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NavGraph) || !super.equals(obj)) {
            return false;
        }
        NavGraph navGraph = (NavGraph) obj;
        if (getNodes().size() != navGraph.getNodes().size() || getStartDestinationId() != navGraph.getStartDestinationId()) {
            return false;
        }
        for (NavDestination navDestination : (lx1) dp7.f(SparseArrayKt.valueIterator(getNodes()))) {
            if (!navDestination.equals(navGraph.getNodes().get(navDestination.getId()))) {
                return false;
            }
        }
        return true;
    }

    public final NavDestination findNode(ne4<?> ne4Var) {
        ne4Var.getClass();
        return this.impl.findNode$navigation_common_release(ne4Var);
    }

    public final NavDestination findNodeComprehensive(int i, NavDestination navDestination, boolean z, NavDestination navDestination2) {
        return this.impl.findNodeComprehensive$navigation_common_release(i, navDestination, z, navDestination2);
    }

    @Override // androidx.navigation.NavDestination
    public String getDisplayName() {
        return this.impl.getDisplayName$navigation_common_release(super.getDisplayName());
    }

    public final SparseArrayCompat<NavDestination> getNodes() {
        return this.impl.getNodes$navigation_common_release();
    }

    public final String getStartDestDisplayName() {
        return this.impl.getStartDestDisplayName$navigation_common_release();
    }

    @ul2
    public final int getStartDestination() {
        return this.impl.getStartDestinationId$navigation_common_release();
    }

    public final int getStartDestinationId() {
        return this.impl.getStartDestinationId$navigation_common_release();
    }

    public final String getStartDestinationRoute() {
        return this.impl.getStartDestinationRoute$navigation_common_release();
    }

    @Override // androidx.navigation.NavDestination
    public int hashCode() {
        int startDestinationId = getStartDestinationId();
        SparseArrayCompat<NavDestination> nodes = getNodes();
        int size = nodes.size();
        for (int i = 0; i < size; i++) {
            startDestinationId = (((startDestinationId * 31) + nodes.keyAt(i)) * 31) + nodes.valueAt(i).hashCode();
        }
        return startDestinationId;
    }

    @Override // java.lang.Iterable
    public final Iterator<NavDestination> iterator() {
        return this.impl.iterator$navigation_common_release();
    }

    @Override // androidx.navigation.NavDestination
    public NavDestination.DeepLinkMatch matchDeepLink(NavDeepLinkRequest navDeepLinkRequest) {
        navDeepLinkRequest.getClass();
        return this.impl.matchDeepLink$navigation_common_release(super.matchDeepLink(navDeepLinkRequest), navDeepLinkRequest);
    }

    public final NavDestination.DeepLinkMatch matchDeepLinkComprehensive(NavDeepLinkRequest navDeepLinkRequest, boolean z, boolean z2, NavDestination navDestination) {
        navDeepLinkRequest.getClass();
        navDestination.getClass();
        return this.impl.matchDeepLinkComprehensive$navigation_common_release(super.matchDeepLink(navDeepLinkRequest), navDeepLinkRequest, z, z2, navDestination);
    }

    public final NavDestination.DeepLinkMatch matchRouteComprehensive(String str, boolean z, boolean z2, NavDestination navDestination) {
        str.getClass();
        navDestination.getClass();
        return this.impl.matchRouteComprehensive$navigation_common_release(str, z, z2, navDestination);
    }

    @Override // androidx.navigation.NavDestination
    public void onInflate(Context context, AttributeSet attributeSet) {
        context.getClass();
        attributeSet.getClass();
        super.onInflate(context, attributeSet);
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attributeSet, androidx.navigation.common.R.styleable.NavGraphNavigator);
        typedArrayObtainAttributes.getClass();
        setStartDestinationId(typedArrayObtainAttributes.getResourceId(androidx.navigation.common.R.styleable.NavGraphNavigator_startDestination, 0));
        this.impl.setStartDestIdName$navigation_common_release(NavDestination.Companion.getDisplayName(new NavContext(context), this.impl.getStartDestId$navigation_common_release()));
        j59 j59Var = j59.a;
        typedArrayObtainAttributes.recycle();
    }

    public final void remove(NavDestination navDestination) {
        navDestination.getClass();
        this.impl.remove$navigation_common_release(navDestination);
    }

    public final <T> void setStartDestination(df4<T> df4Var, nl3<? super NavDestination, String> nl3Var) {
        df4Var.getClass();
        nl3Var.getClass();
        this.impl.setStartDestination$navigation_common_release(df4Var, nl3Var);
    }

    @Override // androidx.navigation.NavDestination
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        NavDestination navDestinationFindNode = findNode(getStartDestinationRoute());
        if (navDestinationFindNode == null) {
            navDestinationFindNode = findNode(getStartDestinationId());
        }
        sb.append(" startDestination=");
        if (navDestinationFindNode != null) {
            sb.append("{");
            sb.append(navDestinationFindNode.toString());
            sb.append("}");
        } else if (getStartDestinationRoute() != null) {
            sb.append(getStartDestinationRoute());
        } else {
            String startDestIdName$navigation_common_release = this.impl.getStartDestIdName$navigation_common_release();
            NavGraphImpl navGraphImpl = this.impl;
            if (startDestIdName$navigation_common_release != null) {
                sb.append(navGraphImpl.getStartDestIdName$navigation_common_release());
            } else {
                sb.append("0x" + Integer.toHexString(navGraphImpl.getStartDestId$navigation_common_release()));
            }
        }
        return sb.toString();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final NavDestination childHierarchy$lambda$0(NavDestination navDestination) {
            navDestination.getClass();
            if (!(navDestination instanceof NavGraph)) {
                return null;
            }
            NavGraph navGraph = (NavGraph) navDestination;
            return navGraph.findNode(navGraph.getStartDestinationId());
        }

        public final zo7<NavDestination> childHierarchy(NavGraph navGraph) {
            navGraph.getClass();
            return dp7.h(new us2(3), navGraph);
        }

        public final NavDestination findStartDestination(NavGraph navGraph) {
            navGraph.getClass();
            zo7<NavDestination> zo7VarChildHierarchy = childHierarchy(navGraph);
            zo7VarChildHierarchy.getClass();
            Iterator<NavDestination> it = zo7VarChildHierarchy.iterator();
            if (!it.hasNext()) {
                ag.g("Sequence is empty.");
                return null;
            }
            NavDestination next = it.next();
            while (it.hasNext()) {
                next = it.next();
            }
            return next;
        }

        private Companion() {
        }
    }

    public final NavDestination findNode(String str) {
        return this.impl.findNode$navigation_common_release(str);
    }

    public final NavDestination findNode(int i) {
        return this.impl.findNode$navigation_common_release(i);
    }

    public final <T> NavDestination findNode(T t) {
        return this.impl.findNode$navigation_common_release(t);
    }

    public final void setStartDestination(String str) {
        str.getClass();
        this.impl.setStartDestination$navigation_common_release(str);
    }

    public final NavDestination findNode(String str, boolean z) {
        str.getClass();
        return this.impl.findNode$navigation_common_release(str, z);
    }

    public final <T> void setStartDestination() {
        aa4.i();
        throw null;
    }

    public final <T> NavDestination findNode() {
        aa4.i();
        throw null;
    }

    public final /* synthetic */ void setStartDestination(ne4 ne4Var) {
        ne4Var.getClass();
        this.impl.setStartDestination$navigation_common_release(ne4Var);
    }

    public final /* synthetic */ void setStartDestination(Object obj) {
        obj.getClass();
        this.impl.setStartDestination$navigation_common_release(obj);
    }

    public final void addDestinations(Collection<? extends NavDestination> collection) {
        collection.getClass();
        this.impl.addDestinations$navigation_common_release(collection);
    }

    public final void setStartDestination(int i) {
        this.impl.setStartDestination$navigation_common_release(i);
    }
}
