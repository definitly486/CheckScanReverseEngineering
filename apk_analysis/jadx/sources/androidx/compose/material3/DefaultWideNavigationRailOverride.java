package androidx.compose.material3;

import androidx.compose.material3.DefaultWideNavigationRailOverride;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import defpackage.bm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultWideNavigationRailOverride implements WideNavigationRailOverride {
    public static final int $stable = 0;
    public static final DefaultWideNavigationRailOverride INSTANCE = new DefaultWideNavigationRailOverride();

    private DefaultWideNavigationRailOverride() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 WideNavigationRail$lambda$0(DefaultWideNavigationRailOverride defaultWideNavigationRailOverride, WideNavigationRailOverrideScope wideNavigationRailOverrideScope, int i, Composer composer, int i2) {
        defaultWideNavigationRailOverride.WideNavigationRail(wideNavigationRailOverrideScope, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    @Override // androidx.compose.material3.WideNavigationRailOverride
    public void WideNavigationRail(final WideNavigationRailOverrideScope wideNavigationRailOverrideScope, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1829525426);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(wideNavigationRailOverrideScope) : composerStartRestartGroup.changedInstance(wideNavigationRailOverrideScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1829525426, i2, -1, "androidx.compose.material3.DefaultWideNavigationRailOverride.WideNavigationRail (WideNavigationRail.kt:192)");
            }
            WideNavigationRailKt.WideNavigationRailLayout(wideNavigationRailOverrideScope.getModifier(), false, WideNavigationRailStateKt.isExpanded(wideNavigationRailOverrideScope.getState().getTargetValue()), wideNavigationRailOverrideScope.getColors(), wideNavigationRailOverrideScope.getShape(), wideNavigationRailOverrideScope.getHeader(), wideNavigationRailOverrideScope.getWindowInsets(), wideNavigationRailOverrideScope.getArrangement(), wideNavigationRailOverrideScope.getContent(), composerStartRestartGroup, 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jk2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DefaultWideNavigationRailOverride.WideNavigationRail$lambda$0(this.b, wideNavigationRailOverrideScope, i, (Composer) obj, iIntValue);
                }
            });
        }
    }
}
