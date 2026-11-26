package androidx.navigation;

import defpackage.aa4;
import defpackage.ef4;
import defpackage.j59;
import defpackage.mx2;
import defpackage.nl3;
import defpackage.ul2;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class ActivityNavigatorDestinationBuilderKt__ActivityNavigatorDestinationBuilder_androidKt {
    public static final void activity(NavGraphBuilder navGraphBuilder, String str, nl3<? super ActivityNavigatorDestinationBuilder, j59> nl3Var) {
        navGraphBuilder.getClass();
        str.getClass();
        nl3Var.getClass();
        ActivityNavigatorDestinationBuilder activityNavigatorDestinationBuilder = new ActivityNavigatorDestinationBuilder((ActivityNavigator) navGraphBuilder.getProvider().getNavigator(ActivityNavigator.class), str);
        nl3Var.invoke(activityNavigatorDestinationBuilder);
        navGraphBuilder.destination(activityNavigatorDestinationBuilder);
    }

    public static void activity$default(NavGraphBuilder navGraphBuilder, Map map, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            map = mx2.b;
        }
        navGraphBuilder.getClass();
        map.getClass();
        nl3Var.getClass();
        aa4.i();
        throw null;
    }

    @ul2
    public static final void activity(NavGraphBuilder navGraphBuilder, int i, nl3<? super ActivityNavigatorDestinationBuilder, j59> nl3Var) {
        navGraphBuilder.getClass();
        nl3Var.getClass();
        ActivityNavigatorDestinationBuilder activityNavigatorDestinationBuilder = new ActivityNavigatorDestinationBuilder((ActivityNavigator) navGraphBuilder.getProvider().getNavigator(ActivityNavigator.class), i);
        nl3Var.invoke(activityNavigatorDestinationBuilder);
        navGraphBuilder.destination(activityNavigatorDestinationBuilder);
    }

    public static final <T> void activity(NavGraphBuilder navGraphBuilder, Map<ef4, NavType<?>> map, nl3<? super ActivityNavigatorDestinationBuilder, j59> nl3Var) {
        navGraphBuilder.getClass();
        map.getClass();
        nl3Var.getClass();
        aa4.i();
        throw null;
    }
}
