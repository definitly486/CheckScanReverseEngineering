package androidx.navigation;

import defpackage.d31;
import defpackage.ne4;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class NavigatorProviderKt__NavigatorProvider_androidKt {
    public static final <T extends Navigator<? extends NavDestination>> T get(NavigatorProvider navigatorProvider, ne4<T> ne4Var) {
        navigatorProvider.getClass();
        ne4Var.getClass();
        return (T) navigatorProvider.getNavigator(d31.n(ne4Var));
    }
}
