package androidx.compose.material3;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.material3.WideNavigationRailStateKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class WideNavigationRailStateKt {
    public static final boolean isExpanded(WideNavigationRailValue wideNavigationRailValue) {
        return wideNavigationRailValue == WideNavigationRailValue.Expanded;
    }

    public static final WideNavigationRailValue not(WideNavigationRailValue wideNavigationRailValue) {
        WideNavigationRailValue wideNavigationRailValue2 = WideNavigationRailValue.Collapsed;
        return wideNavigationRailValue == wideNavigationRailValue2 ? WideNavigationRailValue.Expanded : wideNavigationRailValue2;
    }

    public static final WideNavigationRailState rememberWideNavigationRailState(final WideNavigationRailValue wideNavigationRailValue, Composer composer, int i, int i2) {
        boolean z = true;
        if ((i2 & 1) != 0) {
            wideNavigationRailValue = WideNavigationRailValue.Collapsed;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1595273472, i, -1, "androidx.compose.material3.rememberWideNavigationRailState (WideNavigationRailState.kt:86)");
        }
        final FiniteAnimationSpec finiteAnimationSpecValue = MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultSpatial, composer, 6);
        Object[] objArr = new Object[0];
        Saver<WideNavigationRailState, WideNavigationRailValue> Saver = WideNavigationRailStateImpl.Companion.Saver(finiteAnimationSpecValue);
        if ((((i & 14) ^ 6) <= 4 || !composer.changed(wideNavigationRailValue.ordinal())) && (i & 6) != 4) {
            z = false;
        }
        boolean zChangedInstance = composer.changedInstance(finiteAnimationSpecValue) | z;
        Object objRememberedValue = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new ll3() { // from class: di9
                @Override // defpackage.ll3
                public final Object invoke() {
                    return WideNavigationRailStateKt.rememberWideNavigationRailState$lambda$1$lambda$0(wideNavigationRailValue, finiteAnimationSpecValue);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        WideNavigationRailState wideNavigationRailState = (WideNavigationRailState) RememberSaveableKt.m5624rememberSaveable(objArr, (Saver) Saver, (ll3) objRememberedValue, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return wideNavigationRailState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WideNavigationRailState rememberWideNavigationRailState$lambda$1$lambda$0(WideNavigationRailValue wideNavigationRailValue, FiniteAnimationSpec finiteAnimationSpec) {
        return new WideNavigationRailStateImpl(wideNavigationRailValue, finiteAnimationSpec);
    }
}
