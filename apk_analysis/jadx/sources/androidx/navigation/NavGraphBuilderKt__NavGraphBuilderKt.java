package androidx.navigation;

import defpackage.aa4;
import defpackage.ef4;
import defpackage.j59;
import defpackage.mx2;
import defpackage.ne4;
import defpackage.nl3;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class NavGraphBuilderKt__NavGraphBuilderKt {
    public static final <T> void navigation(NavGraphBuilder navGraphBuilder, ne4<T> ne4Var, ne4<?> ne4Var2, Map<ef4, NavType<?>> map, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navGraphBuilder.getClass();
        ne4Var.getClass();
        ne4Var2.getClass();
        map.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder2 = new NavGraphBuilder(navGraphBuilder.getProvider(), ne4Var2, (ne4<?>) ne4Var, map);
        nl3Var.invoke(navGraphBuilder2);
        navGraphBuilder.destination(navGraphBuilder2);
    }

    public static /* synthetic */ NavGraph navigation$default(NavigatorProvider navigatorProvider, ne4 ne4Var, ne4 ne4Var2, Map map, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            ne4Var2 = null;
        }
        if ((i & 4) != 0) {
            map = mx2.b;
        }
        navigatorProvider.getClass();
        ne4Var.getClass();
        map.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, (ne4<?>) ne4Var, (ne4<?>) ne4Var2, (Map<ef4, NavType<?>>) map);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final NavGraph navigation(NavigatorProvider navigatorProvider, ne4<?> ne4Var, ne4<?> ne4Var2, Map<ef4, NavType<?>> map, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navigatorProvider.getClass();
        ne4Var.getClass();
        map.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, ne4Var, ne4Var2, map);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final NavGraph navigation(NavigatorProvider navigatorProvider, Object obj, ne4<?> ne4Var, Map<ef4, NavType<?>> map, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navigatorProvider.getClass();
        obj.getClass();
        map.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, obj, ne4Var, map);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final void navigation(NavGraphBuilder navGraphBuilder, String str, String str2, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navGraphBuilder.getClass();
        str.getClass();
        str2.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder2 = new NavGraphBuilder(navGraphBuilder.getProvider(), str, str2);
        nl3Var.invoke(navGraphBuilder2);
        navGraphBuilder.destination(navGraphBuilder2);
    }

    public static final NavGraph navigation(NavigatorProvider navigatorProvider, String str, String str2, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navigatorProvider.getClass();
        str.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, str, str2);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final <T> void navigation(NavGraphBuilder navGraphBuilder, ne4<T> ne4Var, Object obj, Map<ef4, NavType<?>> map, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navGraphBuilder.getClass();
        ne4Var.getClass();
        obj.getClass();
        map.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder2 = new NavGraphBuilder(navGraphBuilder.getProvider(), obj, (ne4<?>) ne4Var, map);
        nl3Var.invoke(navGraphBuilder2);
        navGraphBuilder.destination(navGraphBuilder2);
    }

    public static final <T> void navigation(NavGraphBuilder navGraphBuilder, ne4<?> ne4Var, Map<ef4, NavType<?>> map, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navGraphBuilder.getClass();
        ne4Var.getClass();
        map.getClass();
        nl3Var.getClass();
        aa4.i();
        throw null;
    }

    public static /* synthetic */ NavGraph navigation$default(NavigatorProvider navigatorProvider, String str, String str2, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        navigatorProvider.getClass();
        str.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, str, str2);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final <T> void navigation(NavGraphBuilder navGraphBuilder, Object obj, Map<ef4, NavType<?>> map, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navGraphBuilder.getClass();
        obj.getClass();
        map.getClass();
        nl3Var.getClass();
        aa4.i();
        throw null;
    }

    public static /* synthetic */ NavGraph navigation$default(NavigatorProvider navigatorProvider, Object obj, ne4 ne4Var, Map map, nl3 nl3Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            ne4Var = null;
        }
        if ((i & 4) != 0) {
            map = mx2.b;
        }
        navigatorProvider.getClass();
        obj.getClass();
        map.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, obj, (ne4<?>) ne4Var, (Map<ef4, NavType<?>>) map);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static void navigation$default(NavGraphBuilder navGraphBuilder, ne4 ne4Var, Map map, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            map = mx2.b;
        }
        navGraphBuilder.getClass();
        ne4Var.getClass();
        map.getClass();
        nl3Var.getClass();
        aa4.i();
        throw null;
    }

    public static /* synthetic */ void navigation$default(NavGraphBuilder navGraphBuilder, ne4 ne4Var, ne4 ne4Var2, Map map, nl3 nl3Var, int i, Object obj) {
        if ((i & 4) != 0) {
            map = mx2.b;
        }
        NavGraphBuilderKt.navigation(navGraphBuilder, ne4Var, (ne4<?>) ne4Var2, (Map<ef4, NavType<?>>) map, (nl3<? super NavGraphBuilder, j59>) nl3Var);
    }

    public static void navigation$default(NavGraphBuilder navGraphBuilder, Object obj, Map map, nl3 nl3Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            map = mx2.b;
        }
        navGraphBuilder.getClass();
        obj.getClass();
        map.getClass();
        nl3Var.getClass();
        aa4.i();
        throw null;
    }

    public static /* synthetic */ void navigation$default(NavGraphBuilder navGraphBuilder, ne4 ne4Var, Object obj, Map map, nl3 nl3Var, int i, Object obj2) {
        if ((i & 4) != 0) {
            map = mx2.b;
        }
        NavGraphBuilderKt.navigation(navGraphBuilder, ne4Var, obj, (Map<ef4, NavType<?>>) map, (nl3<? super NavGraphBuilder, j59>) nl3Var);
    }
}
