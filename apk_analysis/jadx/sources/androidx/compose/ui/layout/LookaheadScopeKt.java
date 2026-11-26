package androidx.compose.ui.layout;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.eg;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class LookaheadScopeKt {
    private static final bm3<Placeable.PlacementScope, LayoutCoordinates, Boolean> defaultPlacementApproachInProgress = LookaheadScopeKt$defaultPlacementApproachInProgress$1.INSTANCE;

    /* JADX WARN: Multi-variable type inference failed */
    public static final void LookaheadScope(dm3<? super LookaheadScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(441837433);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(dm3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = 1;
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(441837433, i2, -1, "androidx.compose.ui.layout.LookaheadScope (LookaheadScope.kt:49)");
            }
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = new LookaheadScopeImpl(null, i3, 0 == true ? 1 : 0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            LookaheadScopeImpl lookaheadScopeImpl = (LookaheadScopeImpl) objRememberedValue;
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = LookaheadScopeKt$LookaheadScope$1$1.INSTANCE;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            ll3 ll3Var = (ll3) objRememberedValue2;
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(ll3Var);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            Updater.m5360initimpl(composerM5355constructorimpl, LookaheadScopeKt$LookaheadScope$2$1.INSTANCE);
            Updater.m5363setimpl(composerM5355constructorimpl, lookaheadScopeImpl, LookaheadScopeKt$LookaheadScope$2$2.INSTANCE);
            dm3Var.invoke(lookaheadScopeImpl, composerStartRestartGroup, Integer.valueOf((i2 << 3) & 112));
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new AnonymousClass4(dm3Var, i));
        }
    }

    public static final Modifier approachLayout(Modifier modifier, nl3<? super IntSize, Boolean> nl3Var, bm3<? super Placeable.PlacementScope, ? super LayoutCoordinates, Boolean> bm3Var, dm3<? super ApproachMeasureScope, ? super Measurable, ? super Constraints, ? extends MeasureResult> dm3Var) {
        return modifier.then(new ApproachLayoutElement(dm3Var, nl3Var, bm3Var));
    }

    public static /* synthetic */ Modifier approachLayout$default(Modifier modifier, nl3 nl3Var, bm3 bm3Var, dm3 dm3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            bm3Var = defaultPlacementApproachInProgress;
        }
        return approachLayout(modifier, nl3Var, bm3Var, dm3Var);
    }

    /* JADX INFO: renamed from: localLookaheadPositionOf-Fgt4K4Q, reason: not valid java name */
    public static final long m7733localLookaheadPositionOfFgt4K4Q(LookaheadScope lookaheadScope, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2, long j, boolean z) {
        LayoutCoordinates lookaheadCoordinates = lookaheadScope.toLookaheadCoordinates(layoutCoordinates);
        LayoutCoordinates lookaheadCoordinates2 = lookaheadScope.toLookaheadCoordinates(layoutCoordinates2);
        if (lookaheadCoordinates instanceof LookaheadLayoutCoordinates) {
            return ((LookaheadLayoutCoordinates) lookaheadCoordinates).mo7712localPositionOfS_NoaFU(lookaheadCoordinates2, j, z);
        }
        return lookaheadCoordinates2 instanceof LookaheadLayoutCoordinates ? Offset.m5979constructorimpl(((LookaheadLayoutCoordinates) lookaheadCoordinates2).mo7712localPositionOfS_NoaFU(lookaheadCoordinates, j, z) ^ (-9223372034707292160L)) : lookaheadCoordinates.mo7712localPositionOfS_NoaFU(lookaheadCoordinates, j, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final LayoutCoordinates lookaheadScopeCoordinates(LookaheadScope lookaheadScope, LayoutCoordinates layoutCoordinates) {
        if (layoutCoordinates instanceof LookaheadCapablePlaceable) {
            return lookaheadScope.getLookaheadScopeCoordinates(((LookaheadCapablePlaceable) layoutCoordinates).getPlacementScope());
        }
        eg.d(layoutCoordinates, "Invalid LayoutCoordinates: ");
        return null;
    }

    /* JADX INFO: renamed from: androidx.compose.ui.layout.LookaheadScopeKt$LookaheadScope$4, reason: invalid class name */
    public static final class AnonymousClass4 extends gh4 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ int $$changed;
        final /* synthetic */ dm3<LookaheadScope, Composer, Integer, j59> $content;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass4(dm3<? super LookaheadScope, ? super Composer, ? super Integer, j59> dm3Var, int i) {
            super(2);
            this.$content = dm3Var;
            this.$$changed = i;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            LookaheadScopeKt.LookaheadScope(this.$content, composer, RecomposeScopeImplKt.updateChangedFlags(this.$$changed | 1));
        }
    }
}
