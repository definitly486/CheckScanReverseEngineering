package androidx.navigation;

import defpackage.ef4;
import defpackage.j59;
import defpackage.mx2;
import defpackage.ne4;
import defpackage.nl3;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class NavHostKt__NavHostKt {
    public static final NavGraph createGraph(NavHost navHost, ne4<?> ne4Var, ne4<?> ne4Var2, Map<ef4, NavType<?>> map, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navHost.getClass();
        ne4Var.getClass();
        map.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHost.getNavController().getNavigatorProvider(), ne4Var, ne4Var2, map);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph createGraph$default(NavHost navHost, ne4 ne4Var, ne4 ne4Var2, Map map, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            ne4Var2 = null;
        }
        if ((i & 4) != 0) {
            map = mx2.b;
        }
        navHost.getClass();
        ne4Var.getClass();
        map.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHost.getNavController().getNavigatorProvider(), (ne4<?>) ne4Var, (ne4<?>) ne4Var2, (Map<ef4, NavType<?>>) map);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final NavGraph createGraph(NavHost navHost, String str, String str2, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navHost.getClass();
        str.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHost.getNavController().getNavigatorProvider(), str, str2);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final NavGraph createGraph(NavHost navHost, Object obj, ne4<?> ne4Var, Map<ef4, NavType<?>> map, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navHost.getClass();
        obj.getClass();
        map.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHost.getNavController().getNavigatorProvider(), obj, ne4Var, map);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph createGraph$default(NavHost navHost, String str, String str2, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        navHost.getClass();
        str.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHost.getNavController().getNavigatorProvider(), str, str2);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph createGraph$default(NavHost navHost, Object obj, ne4 ne4Var, Map map, nl3 nl3Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            ne4Var = null;
        }
        if ((i & 4) != 0) {
            map = mx2.b;
        }
        navHost.getClass();
        obj.getClass();
        map.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHost.getNavController().getNavigatorProvider(), obj, (ne4<?>) ne4Var, (Map<ef4, NavType<?>>) map);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }
}
