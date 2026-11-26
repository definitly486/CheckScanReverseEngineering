package androidx.navigation;

import defpackage.ef4;
import defpackage.j59;
import defpackage.mx2;
import defpackage.ne4;
import defpackage.nl3;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class NavControllerKt__NavControllerKt {
    public static final NavGraph createGraph(NavController navController, ne4<?> ne4Var, ne4<?> ne4Var2, Map<ef4, NavType<?>> map, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navController.getClass();
        ne4Var.getClass();
        map.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navController.getNavigatorProvider(), ne4Var, ne4Var2, map);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph createGraph$default(NavController navController, ne4 ne4Var, ne4 ne4Var2, Map map, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            ne4Var2 = null;
        }
        if ((i & 4) != 0) {
            map = mx2.b;
        }
        navController.getClass();
        ne4Var.getClass();
        map.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navController.getNavigatorProvider(), (ne4<?>) ne4Var, (ne4<?>) ne4Var2, (Map<ef4, NavType<?>>) map);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final NavGraph createGraph(NavController navController, String str, String str2, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navController.getClass();
        str.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navController.getNavigatorProvider(), str, str2);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final NavGraph createGraph(NavController navController, Object obj, ne4<?> ne4Var, Map<ef4, NavType<?>> map, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navController.getClass();
        obj.getClass();
        map.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navController.getNavigatorProvider(), obj, ne4Var, map);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph createGraph$default(NavController navController, String str, String str2, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        navController.getClass();
        str.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navController.getNavigatorProvider(), str, str2);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph createGraph$default(NavController navController, Object obj, ne4 ne4Var, Map map, nl3 nl3Var, int i, Object obj2) {
        if ((i & 2) != 0) {
            ne4Var = null;
        }
        if ((i & 4) != 0) {
            map = mx2.b;
        }
        navController.getClass();
        obj.getClass();
        map.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navController.getNavigatorProvider(), obj, (ne4<?>) ne4Var, (Map<ef4, NavType<?>>) map);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }
}
