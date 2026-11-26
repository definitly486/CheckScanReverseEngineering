package androidx.navigation;

import defpackage.ah;
import defpackage.ef4;
import defpackage.iq7;
import defpackage.ne4;
import defpackage.uf0;
import defpackage.ul2;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@NavDestinationDsl
public class NavGraphBuilder extends NavDestinationBuilder<NavGraph> {
    private final List<NavDestination> destinations;
    private final NavigatorProvider provider;
    private ne4<?> startDestinationClass;
    private int startDestinationId;
    private Object startDestinationObject;
    private String startDestinationRoute;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphBuilder(NavigatorProvider navigatorProvider, ne4<?> ne4Var, ne4<?> ne4Var2, Map<ef4, NavType<?>> map) {
        super(navigatorProvider.getNavigator(NavGraphNavigator.class), ne4Var2, map);
        navigatorProvider.getClass();
        ne4Var.getClass();
        map.getClass();
        this.destinations = new ArrayList();
        this.provider = navigatorProvider;
        this.startDestinationClass = ne4Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String build$lambda$1$lambda$0(NavDestination navDestination) {
        navDestination.getClass();
        String route = navDestination.getRoute();
        route.getClass();
        return route;
    }

    public final void addDestination(NavDestination navDestination) {
        navDestination.getClass();
        this.destinations.add(navDestination);
    }

    @Override // androidx.navigation.NavDestinationBuilder
    public NavGraph build() {
        NavGraph navGraph = (NavGraph) super.build();
        navGraph.addDestinations(this.destinations);
        int i = this.startDestinationId;
        if (i == 0 && this.startDestinationRoute == null && this.startDestinationClass == null && this.startDestinationObject == null) {
            if (getRoute() != null) {
                ah.f("You must set a start destination route");
                return null;
            }
            ah.f("You must set a start destination id");
            return null;
        }
        String str = this.startDestinationRoute;
        if (str != null) {
            str.getClass();
            navGraph.setStartDestination(str);
            return navGraph;
        }
        ne4<?> ne4Var = this.startDestinationClass;
        if (ne4Var != null) {
            ne4Var.getClass();
            navGraph.setStartDestination(iq7.b(ne4Var), new uf0(5));
            return navGraph;
        }
        Object obj = this.startDestinationObject;
        if (obj == null) {
            navGraph.setStartDestination(i);
            return navGraph;
        }
        obj.getClass();
        navGraph.setStartDestination(obj);
        return navGraph;
    }

    public final <D extends NavDestination> void destination(NavDestinationBuilder<? extends D> navDestinationBuilder) {
        navDestinationBuilder.getClass();
        this.destinations.add(navDestinationBuilder.build());
    }

    public final NavigatorProvider getProvider() {
        return this.provider;
    }

    public final void unaryPlus(NavDestination navDestination) {
        navDestination.getClass();
        addDestination(navDestination);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphBuilder(NavigatorProvider navigatorProvider, String str, String str2) {
        super(navigatorProvider.getNavigator(NavGraphNavigator.class), str2);
        navigatorProvider.getClass();
        str.getClass();
        this.destinations = new ArrayList();
        this.provider = navigatorProvider;
        this.startDestinationRoute = str;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @ul2
    public NavGraphBuilder(NavigatorProvider navigatorProvider, int i, int i2) {
        super(navigatorProvider.getNavigator(NavGraphNavigator.class), i);
        navigatorProvider.getClass();
        this.destinations = new ArrayList();
        this.provider = navigatorProvider;
        this.startDestinationId = i2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphBuilder(NavigatorProvider navigatorProvider, Object obj, ne4<?> ne4Var, Map<ef4, NavType<?>> map) {
        super(navigatorProvider.getNavigator(NavGraphNavigator.class), ne4Var, map);
        navigatorProvider.getClass();
        obj.getClass();
        map.getClass();
        this.destinations = new ArrayList();
        this.provider = navigatorProvider;
        this.startDestinationObject = obj;
    }
}
