package androidx.compose.material3;

import androidx.compose.material3.ToggleableAppBarItem;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.og0;

/* JADX INFO: loaded from: classes2.dex */
public final class ToggleableAppBarItem implements AppBarItem {
    public static final int $stable = 0;
    private final boolean checked;
    private final boolean enabled;
    private final bm3<Composer, Integer, j59> icon;
    private final String label;
    private final nl3<Boolean, j59> onCheckedChange;

    /* JADX WARN: Multi-variable type inference failed */
    public ToggleableAppBarItem(boolean z, nl3<? super Boolean, j59> nl3Var, bm3<? super Composer, ? super Integer, j59> bm3Var, boolean z2, String str) {
        this.checked = z;
        this.onCheckedChange = nl3Var;
        this.icon = bm3Var;
        this.enabled = z2;
        this.label = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 AppbarContent$lambda$0(ToggleableAppBarItem toggleableAppBarItem, int i, Composer composer, int i2) {
        toggleableAppBarItem.AppbarContent(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 MenuContent$lambda$2$lambda$1(ToggleableAppBarItem toggleableAppBarItem, AppBarMenuState appBarMenuState) {
        toggleableAppBarItem.onCheckedChange.invoke(Boolean.valueOf(!toggleableAppBarItem.checked));
        appBarMenuState.dismiss();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 MenuContent$lambda$3(ToggleableAppBarItem toggleableAppBarItem, AppBarMenuState appBarMenuState, int i, Composer composer, int i2) {
        toggleableAppBarItem.MenuContent(appBarMenuState, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    @Override // androidx.compose.material3.AppBarItem
    public void AppbarContent(Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-53051696);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(this) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-53051696, i2, -1, "androidx.compose.material3.ToggleableAppBarItem.AppbarContent (AppBarDsl.kt:193)");
            }
            TooltipKt.TooltipBox(TooltipDefaults.INSTANCE.m4264rememberTooltipPositionProviderHu5FAss(TooltipAnchorPosition.Companion.m4251getAbovelOKsHw4(), 0.0f, composerStartRestartGroup, 390, 2), ComposableLambdaKt.rememberComposableLambda(-1965247803, true, new dm3<TooltipScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.ToggleableAppBarItem.AppbarContent.1
                public final void invoke(TooltipScope tooltipScope, Composer composer2, int i3) {
                    int i4;
                    if ((i3 & 6) == 0) {
                        i4 = i3 | ((i3 & 8) == 0 ? composer2.changed(tooltipScope) : composer2.changedInstance(tooltipScope) ? 4 : 2);
                    } else {
                        i4 = i3;
                    }
                    if (!composer2.shouldExecute((i4 & 19) != 18, i4 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1965247803, i4, -1, "androidx.compose.material3.ToggleableAppBarItem.AppbarContent.<anonymous> (AppBarDsl.kt:198)");
                    }
                    final ToggleableAppBarItem toggleableAppBarItem = ToggleableAppBarItem.this;
                    TooltipKt.m4267PlainTooltipgv3ox5I(tooltipScope, null, null, 0.0f, null, 0L, 0L, 0.0f, 0.0f, ComposableLambdaKt.rememberComposableLambda(2059984663, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ToggleableAppBarItem.AppbarContent.1.1
                        public final void invoke(Composer composer3, int i5) {
                            if (!composer3.shouldExecute((i5 & 3) != 2, i5 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(2059984663, i5, -1, "androidx.compose.material3.ToggleableAppBarItem.AppbarContent.<anonymous>.<anonymous> (AppBarDsl.kt:198)");
                            }
                            TextKt.m4085TextNvy7gAk(toggleableAppBarItem.label, null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer3, 0, 0, 262142);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composer2, 54), composer2, (i4 & 14) | 805306368, 255);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ j59 invoke(TooltipScope tooltipScope, Composer composer2, Integer num) {
                    invoke(tooltipScope, composer2, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), TooltipKt.rememberTooltipState(false, false, null, composerStartRestartGroup, 0, 7), null, null, false, false, false, ComposableLambdaKt.rememberComposableLambda(694023085, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ToggleableAppBarItem.AppbarContent.2
                public final void invoke(Composer composer2, int i3) {
                    if (!composer2.shouldExecute((i3 & 3) != 2, i3 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(694023085, i3, -1, "androidx.compose.material3.ToggleableAppBarItem.AppbarContent.<anonymous> (AppBarDsl.kt:201)");
                    }
                    IconButtonKt.IconToggleButton(ToggleableAppBarItem.this.checked, ToggleableAppBarItem.this.onCheckedChange, null, ToggleableAppBarItem.this.enabled, null, null, null, ToggleableAppBarItem.this.icon, composer2, 0, 116);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 100663344, 248);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: dx8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ToggleableAppBarItem.AppbarContent$lambda$0(this.b, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    @Override // androidx.compose.material3.AppBarItem
    public void MenuContent(final AppBarMenuState appBarMenuState, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1187385573);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(appBarMenuState) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(this) ? 32 : 16;
        }
        int i3 = 1;
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1187385573, i2, -1, "androidx.compose.material3.ToggleableAppBarItem.MenuContent (AppBarDsl.kt:211)");
            }
            boolean z = false;
            boolean z2 = this.enabled;
            ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-269621941, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.ToggleableAppBarItem.MenuContent.1
                public final void invoke(Composer composer2, int i4) {
                    if (!composer2.shouldExecute((i4 & 3) != 2, i4 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-269621941, i4, -1, "androidx.compose.material3.ToggleableAppBarItem.MenuContent.<anonymous> (AppBarDsl.kt:214)");
                    }
                    TextKt.m4085TextNvy7gAk(ToggleableAppBarItem.this.label, null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262142);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54);
            boolean z3 = (i2 & 112) == 32;
            if ((i2 & 14) == 4) {
                z = true;
            }
            boolean z4 = z | z3;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z4 || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new og0(i3, this, appBarMenuState);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            AndroidMenu_androidKt.DropdownMenuItem(composableLambdaRememberComposableLambda, (ll3) objRememberedValue, null, null, null, z2, null, null, null, composerStartRestartGroup, 6, 476);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cx8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ToggleableAppBarItem.MenuContent$lambda$3(this.b, appBarMenuState, i, (Composer) obj, iIntValue);
                }
            });
        }
    }
}
