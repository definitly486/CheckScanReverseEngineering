package androidx.navigation;

import android.content.Intent;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class NavControllerKt__NavController_androidKt {
    public static final NavDeepLinkRequest NavDeepLinkRequest(Intent intent) {
        intent.getClass();
        return new NavDeepLinkRequest(intent.getData(), intent.getAction(), intent.getType());
    }

    @ul2
    public static final NavGraph createGraph(NavController navController, int i, int i2, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navController.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navController.getNavigatorProvider(), i, i2);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph createGraph$default(NavController navController, int i, int i2, nl3 nl3Var, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        navController.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navController.getNavigatorProvider(), i, i2);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }
}
