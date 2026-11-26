package androidx.navigation;

import defpackage.aa4;
import defpackage.ef4;
import defpackage.j59;
import defpackage.mx2;
import defpackage.ne4;
import defpackage.nl3;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class NavDeepLinkDslBuilderKt__NavDeepLinkDslBuilderKt {
    public static final <T> NavDeepLink navDeepLink(ne4<T> ne4Var, String str, Map<ef4, NavType<?>> map, nl3<? super NavDeepLinkDslBuilder, j59> nl3Var) {
        ne4Var.getClass();
        str.getClass();
        map.getClass();
        nl3Var.getClass();
        NavDeepLinkDslBuilder navDeepLinkDslBuilder = new NavDeepLinkDslBuilder(str, ne4Var, map);
        nl3Var.invoke(navDeepLinkDslBuilder);
        return navDeepLinkDslBuilder.build$navigation_common_release();
    }

    public static NavDeepLink navDeepLink$default(String str, Map map, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            map = mx2.b;
        }
        if ((i & 4) != 0) {
            nl3Var = new nl3<NavDeepLinkDslBuilder, j59>() { // from class: androidx.navigation.NavDeepLinkDslBuilderKt__NavDeepLinkDslBuilderKt.navDeepLink.1
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(NavDeepLinkDslBuilder navDeepLinkDslBuilder) {
                    invoke2(navDeepLinkDslBuilder);
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(NavDeepLinkDslBuilder navDeepLinkDslBuilder) {
                    navDeepLinkDslBuilder.getClass();
                }
            };
        }
        str.getClass();
        map.getClass();
        nl3Var.getClass();
        aa4.i();
        throw null;
    }

    public static final NavDeepLink navDeepLink(nl3<? super NavDeepLinkDslBuilder, j59> nl3Var) {
        nl3Var.getClass();
        NavDeepLinkDslBuilder navDeepLinkDslBuilder = new NavDeepLinkDslBuilder();
        nl3Var.invoke(navDeepLinkDslBuilder);
        return navDeepLinkDslBuilder.build$navigation_common_release();
    }

    public static final <T> NavDeepLink navDeepLink(ne4<T> ne4Var, String str, nl3<? super NavDeepLinkDslBuilder, j59> nl3Var) {
        ne4Var.getClass();
        str.getClass();
        nl3Var.getClass();
        return navDeepLink$default(ne4Var, str, null, nl3Var, 4, null);
    }

    public static /* synthetic */ NavDeepLink navDeepLink$default(ne4 ne4Var, String str, Map map, nl3 nl3Var, int i, Object obj) {
        if ((i & 4) != 0) {
            map = mx2.b;
        }
        return NavDeepLinkDslBuilderKt.navDeepLink(ne4Var, str, map, nl3Var);
    }

    public static final <T> NavDeepLink navDeepLink(String str, Map<ef4, NavType<?>> map, nl3<? super NavDeepLinkDslBuilder, j59> nl3Var) {
        str.getClass();
        map.getClass();
        nl3Var.getClass();
        aa4.i();
        throw null;
    }
}
