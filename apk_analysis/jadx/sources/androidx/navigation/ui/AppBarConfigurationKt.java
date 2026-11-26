package androidx.navigation.ui;

import android.view.Menu;
import androidx.customview.widget.Openable;
import androidx.navigation.NavGraph;
import defpackage.ll3;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class AppBarConfigurationKt {
    public static final AppBarConfiguration AppBarConfiguration(NavGraph navGraph, Openable openable, ll3<Boolean> ll3Var) {
        navGraph.getClass();
        ll3Var.getClass();
        return new AppBarConfiguration.Builder(navGraph).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(ll3Var)).build();
    }

    public static /* synthetic */ AppBarConfiguration AppBarConfiguration$default(NavGraph navGraph, Openable openable, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            openable = null;
        }
        if ((i & 4) != 0) {
            ll3Var = AnonymousClass1.INSTANCE;
        }
        navGraph.getClass();
        ll3Var.getClass();
        return new AppBarConfiguration.Builder(navGraph).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(ll3Var)).build();
    }

    /* JADX INFO: renamed from: androidx.navigation.ui.AppBarConfigurationKt$AppBarConfiguration$1, reason: invalid class name */
    public static final class AnonymousClass1 implements ll3<Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // defpackage.ll3
        public final Boolean invoke() {
            return Boolean.FALSE;
        }
    }

    public static final AppBarConfiguration AppBarConfiguration(Menu menu, Openable openable, ll3<Boolean> ll3Var) {
        menu.getClass();
        ll3Var.getClass();
        return new AppBarConfiguration.Builder(menu).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(ll3Var)).build();
    }

    public static final AppBarConfiguration AppBarConfiguration(Set<Integer> set, Openable openable, ll3<Boolean> ll3Var) {
        set.getClass();
        ll3Var.getClass();
        return new AppBarConfiguration.Builder(set).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(ll3Var)).build();
    }

    public static /* synthetic */ AppBarConfiguration AppBarConfiguration$default(Menu menu, Openable openable, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            openable = null;
        }
        if ((i & 4) != 0) {
            ll3Var = new ll3<Boolean>() { // from class: androidx.navigation.ui.AppBarConfigurationKt.AppBarConfiguration.2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // defpackage.ll3
                public final Boolean invoke() {
                    return Boolean.FALSE;
                }
            };
        }
        menu.getClass();
        ll3Var.getClass();
        return new AppBarConfiguration.Builder(menu).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(ll3Var)).build();
    }

    public static /* synthetic */ AppBarConfiguration AppBarConfiguration$default(Set set, Openable openable, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            openable = null;
        }
        if ((i & 4) != 0) {
            ll3Var = new ll3<Boolean>() { // from class: androidx.navigation.ui.AppBarConfigurationKt.AppBarConfiguration.3
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // defpackage.ll3
                public final Boolean invoke() {
                    return Boolean.FALSE;
                }
            };
        }
        set.getClass();
        ll3Var.getClass();
        return new AppBarConfiguration.Builder((Set<Integer>) set).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(ll3Var)).build();
    }
}
