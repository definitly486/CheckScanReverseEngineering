package androidx.navigation;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class NavigatorProviderKt__NavigatorProviderKt {
    public static final <T extends Navigator<? extends NavDestination>> T get(NavigatorProvider navigatorProvider, String str) {
        navigatorProvider.getClass();
        str.getClass();
        return (T) navigatorProvider.getNavigator(str);
    }

    public static final void plusAssign(NavigatorProvider navigatorProvider, Navigator<? extends NavDestination> navigator) {
        navigatorProvider.getClass();
        navigator.getClass();
        navigatorProvider.addNavigator(navigator);
    }

    public static final Navigator<? extends NavDestination> set(NavigatorProvider navigatorProvider, String str, Navigator<? extends NavDestination> navigator) {
        navigatorProvider.getClass();
        str.getClass();
        navigator.getClass();
        return navigatorProvider.addNavigator(str, navigator);
    }
}
