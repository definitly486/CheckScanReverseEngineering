package androidx.compose.material3;

import androidx.compose.material3.CustomAppBarItem;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class CustomAppBarItem implements AppBarItem {
    public static final int $stable = 0;
    private final bm3<Composer, Integer, j59> appbarContent;
    private final dm3<AppBarMenuState, Composer, Integer, j59> menuContent;

    /* JADX WARN: Multi-variable type inference failed */
    public CustomAppBarItem(bm3<? super Composer, ? super Integer, j59> bm3Var, dm3<? super AppBarMenuState, ? super Composer, ? super Integer, j59> dm3Var) {
        this.appbarContent = bm3Var;
        this.menuContent = dm3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 AppbarContent$lambda$0(CustomAppBarItem customAppBarItem, int i, Composer composer, int i2) {
        customAppBarItem.AppbarContent(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 MenuContent$lambda$1(CustomAppBarItem customAppBarItem, AppBarMenuState appBarMenuState, int i, Composer composer, int i2) {
        customAppBarItem.MenuContent(appBarMenuState, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    @Override // androidx.compose.material3.AppBarItem
    public void AppbarContent(Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1121775917);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(this) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1121775917, i2, -1, "androidx.compose.material3.CustomAppBarItem.AppbarContent (AppBarDsl.kt:228)");
            }
            this.appbarContent.invoke(composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: x62
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return CustomAppBarItem.AppbarContent$lambda$0(this.b, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    @Override // androidx.compose.material3.AppBarItem
    public void MenuContent(final AppBarMenuState appBarMenuState, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1853735176);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(appBarMenuState) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(this) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1853735176, i2, -1, "androidx.compose.material3.CustomAppBarItem.MenuContent (AppBarDsl.kt:233)");
            }
            this.menuContent.invoke(appBarMenuState, composerStartRestartGroup, Integer.valueOf(i2 & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y62
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return CustomAppBarItem.MenuContent$lambda$1(this.b, appBarMenuState, i, (Composer) obj, iIntValue);
                }
            });
        }
    }
}
