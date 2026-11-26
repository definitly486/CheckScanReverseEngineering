package androidx.navigation;

import android.content.Intent;
import defpackage.ef4;
import defpackage.j59;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.ul2;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class NavControllerKt {
    public static final NavDeepLinkRequest NavDeepLinkRequest(Intent intent) {
        return NavControllerKt__NavController_androidKt.NavDeepLinkRequest(intent);
    }

    @ul2
    public static final NavGraph createGraph(NavController navController, int i, int i2, nl3<? super NavGraphBuilder, j59> nl3Var) {
        return NavControllerKt__NavController_androidKt.createGraph(navController, i, i2, nl3Var);
    }

    public static final NavGraph createGraph(NavController navController, ne4<?> ne4Var, ne4<?> ne4Var2, Map<ef4, NavType<?>> map, nl3<? super NavGraphBuilder, j59> nl3Var) {
        return NavControllerKt__NavControllerKt.createGraph(navController, ne4Var, ne4Var2, map, nl3Var);
    }

    public static final NavGraph createGraph(NavController navController, Object obj, ne4<?> ne4Var, Map<ef4, NavType<?>> map, nl3<? super NavGraphBuilder, j59> nl3Var) {
        return NavControllerKt__NavControllerKt.createGraph(navController, obj, ne4Var, map, nl3Var);
    }

    public static final NavGraph createGraph(NavController navController, String str, String str2, nl3<? super NavGraphBuilder, j59> nl3Var) {
        return NavControllerKt__NavControllerKt.createGraph(navController, str, str2, nl3Var);
    }
}
