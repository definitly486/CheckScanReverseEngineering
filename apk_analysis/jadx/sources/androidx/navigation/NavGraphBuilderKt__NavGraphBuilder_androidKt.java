package androidx.navigation;

import defpackage.j59;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class NavGraphBuilderKt__NavGraphBuilder_androidKt {
    @ul2
    public static final void navigation(NavGraphBuilder navGraphBuilder, int i, int i2, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navGraphBuilder.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder2 = new NavGraphBuilder(navGraphBuilder.getProvider(), i, i2);
        nl3Var.invoke(navGraphBuilder2);
        navGraphBuilder.destination(navGraphBuilder2);
    }

    public static /* synthetic */ NavGraph navigation$default(NavigatorProvider navigatorProvider, int i, int i2, nl3 nl3Var, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        navigatorProvider.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, i, i2);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    @ul2
    public static final NavGraph navigation(NavigatorProvider navigatorProvider, int i, int i2, nl3<? super NavGraphBuilder, j59> nl3Var) {
        navigatorProvider.getClass();
        nl3Var.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, i, i2);
        nl3Var.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }
}
