package androidx.navigation;

import androidx.navigation.NavDestination;
import androidx.navigation.serialization.RouteSerializerKt;
import defpackage.aa4;
import defpackage.df4;
import defpackage.ef4;
import defpackage.iq7;
import defpackage.j59;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.ul2;
import defpackage.wg;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@NavDestinationDsl
public class NavDestinationBuilder<D extends NavDestination> {
    private Map<Integer, NavAction> actions;
    private Map<String, NavArgument> arguments;
    private List<NavDeepLink> deepLinks;
    private final int id;
    private CharSequence label;
    private final Navigator<? extends D> navigator;
    private final String route;
    private Map<ef4, ? extends NavType<?>> typeMap;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDestinationBuilder(Navigator<? extends D> navigator, ne4<?> ne4Var, Map<ef4, NavType<?>> map) {
        this(navigator, ne4Var != null ? RouteSerializerKt.generateHashCode(iq7.b(ne4Var)) : -1, ne4Var != null ? RouteSerializerKt.generateRoutePattern$default(iq7.b(ne4Var), map, null, 2, null) : null);
        navigator.getClass();
        map.getClass();
        if (ne4Var != null) {
            for (NamedNavArgument namedNavArgument : RouteSerializerKt.generateNavArguments(iq7.b(ne4Var), map)) {
                this.arguments.put(namedNavArgument.getName(), namedNavArgument.getArgument());
            }
        }
        this.typeMap = map;
    }

    @ul2
    public final void action(int i, nl3<? super NavActionBuilder, j59> nl3Var) {
        nl3Var.getClass();
        Map<Integer, NavAction> map = this.actions;
        Integer numValueOf = Integer.valueOf(i);
        NavActionBuilder navActionBuilder = new NavActionBuilder();
        nl3Var.invoke(navActionBuilder);
        map.put(numValueOf, navActionBuilder.build$navigation_common_release());
    }

    public final void argument(String str, nl3<? super NavArgumentBuilder, j59> nl3Var) {
        str.getClass();
        nl3Var.getClass();
        Map<String, NavArgument> map = this.arguments;
        NavArgumentBuilder navArgumentBuilder = new NavArgumentBuilder();
        nl3Var.invoke(navArgumentBuilder);
        map.put(str, navArgumentBuilder.build());
    }

    public D build() {
        D d = (D) instantiateDestination();
        d.setLabel(this.label);
        for (Map.Entry<String, NavArgument> entry : this.arguments.entrySet()) {
            d.addArgument(entry.getKey(), entry.getValue());
        }
        Iterator<T> it = this.deepLinks.iterator();
        while (it.hasNext()) {
            d.addDeepLink((NavDeepLink) it.next());
        }
        for (Map.Entry<Integer, NavAction> entry2 : this.actions.entrySet()) {
            d.putAction(entry2.getKey().intValue(), entry2.getValue());
        }
        String str = this.route;
        if (str != null) {
            d.setRoute(str);
        }
        int i = this.id;
        if (i != -1) {
            d.setId(i);
        }
        return d;
    }

    public final <T> void deepLink(ne4<T> ne4Var, String str, nl3<? super NavDeepLinkDslBuilder, j59> nl3Var) {
        ne4Var.getClass();
        str.getClass();
        nl3Var.getClass();
        if (this.typeMap == null) {
            wg.c(ne4Var, "Cannot add deeplink from KClass [", "]. Use the NavDestinationBuilder constructor that takes a KClass with the same arguments.");
            return;
        }
        df4 df4VarB = iq7.b(ne4Var);
        Map<ef4, ? extends NavType<?>> map = this.typeMap;
        if (map == null) {
            aa4.j("typeMap");
            throw null;
        }
        for (NamedNavArgument namedNavArgument : RouteSerializerKt.generateNavArguments(df4VarB, map)) {
            NavArgument navArgument = this.arguments.get(namedNavArgument.getName());
            if (navArgument == null || !aa4.e(navArgument.getType(), namedNavArgument.getArgument().getType())) {
                StringBuilder sb = new StringBuilder("Cannot add deeplink from KClass [");
                sb.append(ne4Var);
                String name = namedNavArgument.getName();
                sb.append("]. DeepLink contains unknown argument [");
                sb.append(name);
                sb.append("]. Ensure deeplink arguments matches the destination's route from KClass");
                throw new IllegalArgumentException(sb.toString().toString());
            }
        }
        Map<ef4, ? extends NavType<?>> map2 = this.typeMap;
        if (map2 == null) {
            aa4.j("typeMap");
            throw null;
        }
        deepLink(NavDeepLinkDslBuilderKt.navDeepLink(ne4Var, str, map2, nl3Var));
    }

    public final <T> void deepLinkSafeArgs(String str) {
        str.getClass();
        aa4.i();
        throw null;
    }

    public final int getId() {
        return this.id;
    }

    public final CharSequence getLabel() {
        return this.label;
    }

    public final Navigator<? extends D> getNavigator() {
        return this.navigator;
    }

    public final String getRoute() {
        return this.route;
    }

    public D instantiateDestination() {
        return (D) this.navigator.createDestination();
    }

    public final void setLabel(CharSequence charSequence) {
        this.label = charSequence;
    }

    /* JADX INFO: renamed from: androidx.navigation.NavDestinationBuilder$deepLink$1, reason: invalid class name */
    public static final class AnonymousClass1 implements nl3<NavDeepLinkDslBuilder, j59> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(NavDeepLinkDslBuilder navDeepLinkDslBuilder) {
            invoke2(navDeepLinkDslBuilder);
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(NavDeepLinkDslBuilder navDeepLinkDslBuilder) {
            navDeepLinkDslBuilder.getClass();
        }
    }

    public final void argument(String str, NavArgument navArgument) {
        str.getClass();
        navArgument.getClass();
        this.arguments.put(str, navArgument);
    }

    public NavDestinationBuilder(Navigator<? extends D> navigator, int i, String str) {
        navigator.getClass();
        this.navigator = navigator;
        this.id = i;
        this.route = str;
        this.arguments = new LinkedHashMap();
        this.deepLinks = new ArrayList();
        this.actions = new LinkedHashMap();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ul2
    public NavDestinationBuilder(Navigator<? extends D> navigator, int i) {
        this(navigator, i, (String) null);
        navigator.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDestinationBuilder(Navigator<? extends D> navigator, String str) {
        this(navigator, -1, str);
        navigator.getClass();
    }

    public final void deepLink(nl3<? super NavDeepLinkDslBuilder, j59> nl3Var) {
        nl3Var.getClass();
        List<NavDeepLink> list = this.deepLinks;
        NavDeepLinkDslBuilder navDeepLinkDslBuilder = new NavDeepLinkDslBuilder();
        nl3Var.invoke(navDeepLinkDslBuilder);
        list.add(navDeepLinkDslBuilder.build$navigation_common_release());
    }

    public final void deepLink(String str) {
        str.getClass();
        this.deepLinks.add(new NavDeepLink(str));
    }

    public final void deepLink(NavDeepLink navDeepLink) {
        navDeepLink.getClass();
        this.deepLinks.add(navDeepLink);
    }

    public final <T> void deepLink(String str, nl3<? super NavDeepLinkDslBuilder, j59> nl3Var) {
        str.getClass();
        nl3Var.getClass();
        aa4.i();
        throw null;
    }
}
