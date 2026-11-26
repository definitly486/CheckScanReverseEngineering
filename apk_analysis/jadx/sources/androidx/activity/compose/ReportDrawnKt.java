package androidx.activity.compose;

import androidx.activity.FullyDrawnReporter;
import androidx.activity.FullyDrawnReporterOwner;
import androidx.activity.compose.ReportDrawnKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import defpackage.bc;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.n27;
import defpackage.nl3;
import defpackage.q27;

/* JADX INFO: loaded from: classes.dex */
public final class ReportDrawnKt {
    public static final void ReportDrawn(Composer composer, final int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(-1357012904);
        if (composerStartRestartGroup.shouldExecute(i != 0, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1357012904, i, -1, "androidx.activity.compose.ReportDrawn (ReportDrawn.kt:135)");
            }
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new bc(2);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            ReportDrawnWhen((ll3) objRememberedValue, composerStartRestartGroup, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: p27
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ReportDrawnKt.ReportDrawn$lambda$1(i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ReportDrawn$lambda$0$0() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ReportDrawn$lambda$1(int i, Composer composer, int i2) {
        ReportDrawn(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    public static final void ReportDrawnAfter(final nl3<? super e02<? super j59>, ? extends Object> nl3Var, Composer composer, final int i) {
        int i2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        bm3<? super Composer, ? super Integer, j59> q27Var;
        FullyDrawnReporter fullyDrawnReporter;
        Composer composerStartRestartGroup = composer.startRestartGroup(945311272);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(nl3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = 0;
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(945311272, i2, -1, "androidx.activity.compose.ReportDrawnAfter (ReportDrawn.kt:148)");
            }
            FullyDrawnReporterOwner current = LocalFullyDrawnReporterOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
            if (current == null || (fullyDrawnReporter = current.getFullyDrawnReporter()) == null) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup == null) {
                    return;
                } else {
                    q27Var = new q27(nl3Var, i, i3);
                }
            } else {
                boolean zChangedInstance = composerStartRestartGroup.changedInstance(fullyDrawnReporter) | composerStartRestartGroup.changedInstance(nl3Var);
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new ReportDrawnKt$ReportDrawnAfter$1$1(fullyDrawnReporter, nl3Var, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                EffectsKt.LaunchedEffect(nl3Var, fullyDrawnReporter, (bm3) objRememberedValue, composerStartRestartGroup, i2 & 14);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            scopeUpdateScopeEndRestartGroup.updateScope(q27Var);
        }
        composerStartRestartGroup.skipToGroupEnd();
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            q27Var = new bm3() { // from class: r27
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ReportDrawnKt.ReportDrawnAfter$lambda$2(nl3Var, i, (Composer) obj, iIntValue);
                }
            };
            scopeUpdateScopeEndRestartGroup.updateScope(q27Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ReportDrawnAfter$lambda$0(nl3 nl3Var, int i, Composer composer, int i2) {
        ReportDrawnAfter(nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ReportDrawnAfter$lambda$2(nl3 nl3Var, int i, Composer composer, int i2) {
        ReportDrawnAfter(nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    public static final void ReportDrawnWhen(final ll3<Boolean> ll3Var, Composer composer, final int i) {
        int i2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        bm3<? super Composer, ? super Integer, j59> bm3Var;
        FullyDrawnReporter fullyDrawnReporter;
        Composer composerStartRestartGroup = composer.startRestartGroup(-2047119994);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(ll3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = 0;
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2047119994, i2, -1, "androidx.activity.compose.ReportDrawnWhen (ReportDrawn.kt:116)");
            }
            FullyDrawnReporterOwner current = LocalFullyDrawnReporterOwner.INSTANCE.getCurrent(composerStartRestartGroup, 6);
            if (current == null || (fullyDrawnReporter = current.getFullyDrawnReporter()) == null) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup == null) {
                    return;
                } else {
                    bm3Var = new bm3() { // from class: m27
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ReportDrawnKt.ReportDrawnWhen$lambda$0(ll3Var, i, (Composer) obj, iIntValue);
                        }
                    };
                }
            } else {
                boolean zChangedInstance = composerStartRestartGroup.changedInstance(fullyDrawnReporter) | ((i2 & 14) == 4);
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new n27(i3, fullyDrawnReporter, ll3Var);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                EffectsKt.DisposableEffect(fullyDrawnReporter, ll3Var, (nl3) objRememberedValue, composerStartRestartGroup, (i2 << 3) & 112);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            scopeUpdateScopeEndRestartGroup.updateScope(bm3Var);
        }
        composerStartRestartGroup.skipToGroupEnd();
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            bm3Var = new bm3() { // from class: o27
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ReportDrawnKt.ReportDrawnWhen$lambda$2(ll3Var, i, (Composer) obj, iIntValue);
                }
            };
            scopeUpdateScopeEndRestartGroup.updateScope(bm3Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ReportDrawnWhen$lambda$0(ll3 ll3Var, int i, Composer composer, int i2) {
        ReportDrawnWhen(ll3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult ReportDrawnWhen$lambda$1$0(FullyDrawnReporter fullyDrawnReporter, ll3 ll3Var, DisposableEffectScope disposableEffectScope) {
        if (fullyDrawnReporter.isFullyDrawnReported()) {
            return new DisposableEffectResult() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawnWhen$lambda$1$0$$inlined$onDispose$1
                @Override // androidx.compose.runtime.DisposableEffectResult
                public void dispose() {
                }
            };
        }
        final ReportDrawnComposition reportDrawnComposition = new ReportDrawnComposition(fullyDrawnReporter, ll3Var);
        return new DisposableEffectResult() { // from class: androidx.activity.compose.ReportDrawnKt$ReportDrawnWhen$lambda$1$0$$inlined$onDispose$2
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                reportDrawnComposition.removeReporter();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ReportDrawnWhen$lambda$2(ll3 ll3Var, int i, Composer composer, int i2) {
        ReportDrawnWhen(ll3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }
}
