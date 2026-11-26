package androidx.compose.material3;

import android.view.View;
import androidx.compose.foundation.DarkThemeKt;
import androidx.compose.material3.WideNavigationRail_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pt3;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class WideNavigationRail_androidKt {
    public static final void ModalWideNavigationRailDialog(ll3<j59> ll3Var, final ModalWideNavigationRailProperties modalWideNavigationRailProperties, final nl3<? super Float, j59> nl3Var, final ll3<j59> ll3Var2, final RailPredictiveBackState railPredictiveBackState, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i) {
        int i2;
        boolean z;
        Object obj;
        final ll3<j59> ll3Var3 = ll3Var;
        Composer composerStartRestartGroup = composer.startRestartGroup(2015914411);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(ll3Var3) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(modalWideNavigationRailProperties) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(nl3Var) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(ll3Var2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changed(railPredictiveBackState) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 131072 : 65536;
        }
        if (composerStartRestartGroup.shouldExecute((74899 & i2) != 74898, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2015914411, i2, -1, "androidx.compose.material3.ModalWideNavigationRailDialog (WideNavigationRail.android.kt:124)");
            }
            View view = (View) composerStartRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalView());
            Density density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
            final LayoutDirection layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            CompositionContext compositionContextRememberCompositionContext = ComposablesKt.rememberCompositionContext(composerStartRestartGroup, 0);
            State stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(bm3Var, composerStartRestartGroup, (i2 >> 15) & 14);
            Object[] objArr = new Object[0];
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = new pt3(1);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            UUID uuid = (UUID) RememberSaveableKt.rememberSaveable(objArr, (ll3) objRememberedValue, composerStartRestartGroup, 48);
            boolean zIsSystemInDarkTheme = DarkThemeKt.isSystemInDarkTheme(composerStartRestartGroup, 0);
            boolean zChanged = composerStartRestartGroup.changed(view) | composerStartRestartGroup.changed(density);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue2 == companion.getEmpty()) {
                z = true;
                ll3Var3 = ll3Var;
                ModalWideNavigationRailDialogWrapper modalWideNavigationRailDialogWrapper = new ModalWideNavigationRailDialogWrapper(ll3Var3, modalWideNavigationRailProperties, view, layoutDirection, density, uuid, nl3Var, ll3Var2, railPredictiveBackState, zIsSystemInDarkTheme);
                modalWideNavigationRailDialogWrapper.setContent(compositionContextRememberCompositionContext, ComposableLambdaKt.composableLambdaInstance(-406777160, true, new WideNavigationRail_androidKt$ModalWideNavigationRailDialog$dialog$1$1$1(stateRememberUpdatedState)));
                composerStartRestartGroup.updateRememberedValue(modalWideNavigationRailDialogWrapper);
                obj = modalWideNavigationRailDialogWrapper;
            } else {
                z = true;
                obj = objRememberedValue2;
                ll3Var3 = ll3Var;
            }
            final ModalWideNavigationRailDialogWrapper modalWideNavigationRailDialogWrapper2 = (ModalWideNavigationRailDialogWrapper) obj;
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(modalWideNavigationRailDialogWrapper2);
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue3 == companion.getEmpty()) {
                objRememberedValue3 = new nl3() { // from class: androidx.compose.material3.q5
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return WideNavigationRail_androidKt.ModalWideNavigationRailDialog$lambda$7$lambda$6(modalWideNavigationRailDialogWrapper2, (DisposableEffectScope) obj2);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            EffectsKt.DisposableEffect(modalWideNavigationRailDialogWrapper2, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue3, composerStartRestartGroup, 0);
            boolean zChangedInstance2 = composerStartRestartGroup.changedInstance(modalWideNavigationRailDialogWrapper2) | ((i2 & 14) == 4 ? z : false) | ((i2 & 112) == 32 ? z : false) | composerStartRestartGroup.changed(layoutDirection.ordinal());
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance2 || objRememberedValue4 == companion.getEmpty()) {
                objRememberedValue4 = new ll3() { // from class: androidx.compose.material3.r5
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return WideNavigationRail_androidKt.ModalWideNavigationRailDialog$lambda$9$lambda$8(modalWideNavigationRailDialogWrapper2, ll3Var3, modalWideNavigationRailProperties, layoutDirection);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            EffectsKt.SideEffect((ll3) objRememberedValue4, composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ei9
                @Override // defpackage.bm3
                public final Object invoke(Object obj2, Object obj3) {
                    int iIntValue = ((Integer) obj3).intValue();
                    return WideNavigationRail_androidKt.ModalWideNavigationRailDialog$lambda$10(ll3Var3, modalWideNavigationRailProperties, nl3Var, ll3Var2, railPredictiveBackState, bm3Var, i, (Composer) obj2, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final bm3<Composer, Integer, j59> ModalWideNavigationRailDialog$lambda$0(State<? extends bm3<? super Composer, ? super Integer, j59>> state) {
        return (bm3) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalWideNavigationRailDialog$lambda$10(ll3 ll3Var, ModalWideNavigationRailProperties modalWideNavigationRailProperties, nl3 nl3Var, ll3 ll3Var2, RailPredictiveBackState railPredictiveBackState, bm3 bm3Var, int i, Composer composer, int i2) {
        ModalWideNavigationRailDialog(ll3Var, modalWideNavigationRailProperties, nl3Var, ll3Var2, railPredictiveBackState, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult ModalWideNavigationRailDialog$lambda$7$lambda$6(final ModalWideNavigationRailDialogWrapper modalWideNavigationRailDialogWrapper, DisposableEffectScope disposableEffectScope) {
        modalWideNavigationRailDialogWrapper.show();
        return new DisposableEffectResult() { // from class: androidx.compose.material3.WideNavigationRail_androidKt$ModalWideNavigationRailDialog$lambda$7$lambda$6$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                modalWideNavigationRailDialogWrapper.dismiss();
                modalWideNavigationRailDialogWrapper.disposeComposition();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalWideNavigationRailDialog$lambda$9$lambda$8(ModalWideNavigationRailDialogWrapper modalWideNavigationRailDialogWrapper, ll3 ll3Var, ModalWideNavigationRailProperties modalWideNavigationRailProperties, LayoutDirection layoutDirection) {
        modalWideNavigationRailDialogWrapper.updateParameters(ll3Var, modalWideNavigationRailProperties, layoutDirection);
        return j59.a;
    }

    public static final ModalWideNavigationRailProperties createDefaultModalWideNavigationRailProperties() {
        return new ModalWideNavigationRailProperties(false, 1, null);
    }
}
