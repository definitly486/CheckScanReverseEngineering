package androidx.compose.material3.internal;

import androidx.compose.material3.internal.BasicEdgeToEdgeDialogKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class BasicEdgeToEdgeDialogKt {
    public static final void PredictiveBackStateHandler(final PredictiveBackState predictiveBackState, boolean z, final ll3<j59> ll3Var, Composer composer, final int i, final int i2) {
        int i3;
        Composer composerStartRestartGroup = composer.startRestartGroup(698755635);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = ((i & 8) == 0 ? composerStartRestartGroup.changed(predictiveBackState) : composerStartRestartGroup.changedInstance(predictiveBackState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i4 = i2 & 2;
        if (i4 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i2 & 4) != 0) {
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(ll3Var) ? 256 : 128;
        }
        boolean z2 = true;
        if (composerStartRestartGroup.shouldExecute((i3 & 147) != 146, i3 & 1)) {
            if (i4 != 0) {
                z = true;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(698755635, i3, -1, "androidx.compose.material3.internal.PredictiveBackStateHandler (BasicEdgeToEdgeDialog.kt:90)");
            }
            State stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(ll3Var, composerStartRestartGroup, (i3 >> 6) & 14);
            composerStartRestartGroup.startMovableGroup(1489276985, predictiveBackState);
            predictiveBackState.getClass();
            boolean z3 = z && !(((PredictiveBackStateImpl) predictiveBackState).getValue() instanceof BackEventProgress.Completed);
            if ((i3 & 14) != 4 && ((i3 & 8) == 0 || !composerStartRestartGroup.changedInstance(predictiveBackState))) {
                z2 = false;
            }
            boolean zChanged = composerStartRestartGroup.changed(stateRememberUpdatedState) | z2;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new BasicEdgeToEdgeDialogKt$PredictiveBackStateHandler$1$1(predictiveBackState, stateRememberUpdatedState, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            BackHandler_androidKt.PredictiveBackHandler(z3, (bm3) objRememberedValue, composerStartRestartGroup, 0, 0);
            composerStartRestartGroup.endMovableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        final boolean z4 = z;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: qe0
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return BasicEdgeToEdgeDialogKt.PredictiveBackStateHandler$lambda$3(predictiveBackState, z4, ll3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ll3<j59> PredictiveBackStateHandler$lambda$1(State<? extends ll3<j59>> state) {
        return state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 PredictiveBackStateHandler$lambda$3(PredictiveBackState predictiveBackState, boolean z, ll3 ll3Var, int i, int i2, Composer composer, int i3) {
        PredictiveBackStateHandler(predictiveBackState, z, ll3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    public static final PredictiveBackState rememberPredictiveBackState(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1883443352, i, -1, "androidx.compose.material3.internal.rememberPredictiveBackState (BasicEdgeToEdgeDialog.kt:77)");
        }
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new PredictiveBackStateImpl();
            composer.updateRememberedValue(objRememberedValue);
        }
        PredictiveBackStateImpl predictiveBackStateImpl = (PredictiveBackStateImpl) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return predictiveBackStateImpl;
    }
}
