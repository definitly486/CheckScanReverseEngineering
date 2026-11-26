package androidx.navigation.ui;

import androidx.customview.widget.Openable;
import androidx.navigation.NavController;

/* JADX INFO: loaded from: classes3.dex */
public final class NavControllerKt {
    public static final boolean navigateUp(NavController navController, Openable openable) {
        navController.getClass();
        return NavigationUI.navigateUp(navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(AppBarConfigurationKt.AnonymousClass1.INSTANCE)).build());
    }

    public static final boolean navigateUp(NavController navController, AppBarConfiguration appBarConfiguration) {
        navController.getClass();
        appBarConfiguration.getClass();
        return NavigationUI.navigateUp(navController, appBarConfiguration);
    }
}
