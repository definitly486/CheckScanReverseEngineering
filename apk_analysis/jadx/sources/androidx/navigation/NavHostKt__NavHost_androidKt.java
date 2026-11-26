package androidx.navigation;

import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class NavHostKt__NavHost_androidKt {
    @ul2
    public static final NavGraph createGraph(NavHost navHost, int i, int i2, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navHost.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHost.getNavController().getNavigatorProvider(), i, i2);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph createGraph$default(NavHost navHost, int i, int i2, nl3 nl3Var, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        navHost.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHost.getNavController().getNavigatorProvider(), i, i2);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }
}
