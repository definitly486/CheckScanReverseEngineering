package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
public final class ModalBottomSheetKt$ModalBottomSheetContent$7 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ ll3<j59> $animateToDismiss;
    final /* synthetic */ dm3<ColumnScope, Composer, Integer, j59> $content;
    final /* synthetic */ bm3<Composer, Integer, WindowInsets> $contentWindowInsets;
    final /* synthetic */ bm3<Composer, Integer, j59> $dragHandle;
    final /* synthetic */ Animatable<Float, AnimationVector1D> $predictiveBackProgress;
    final /* synthetic */ y22 $scope;
    final /* synthetic */ boolean $sheetGesturesEnabled;
    final /* synthetic */ SheetState $sheetState;

    /* JADX WARN: Multi-variable type inference failed */
    public ModalBottomSheetKt$ModalBottomSheetContent$7(bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var, Animatable<Float, AnimationVector1D> animatable, SheetState sheetState, bm3<? super Composer, ? super Integer, j59> bm3Var2, dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var, ll3<j59> ll3Var, y22 y22Var, boolean z) {
        this.$contentWindowInsets = bm3Var;
        this.$predictiveBackProgress = animatable;
        this.$sheetState = sheetState;
        this.$dragHandle = bm3Var2;
        this.$content = dm3Var;
        this.$animateToDismiss = ll3Var;
        this.$scope = y22Var;
        this.$sheetGesturesEnabled = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$1$lambda$0(Animatable animatable, GraphicsLayerScope graphicsLayerScope) {
        float fFloatValue = ((Number) animatable.getValue()).floatValue();
        float fCalculatePredictiveBackScaleX = ModalBottomSheetKt.calculatePredictiveBackScaleX(graphicsLayerScope, fFloatValue);
        float fCalculatePredictiveBackScaleY = ModalBottomSheetKt.calculatePredictiveBackScaleY(graphicsLayerScope, fFloatValue);
        graphicsLayerScope.setScaleY(fCalculatePredictiveBackScaleY == 0.0f ? 1.0f : fCalculatePredictiveBackScaleX / fCalculatePredictiveBackScaleY);
        graphicsLayerScope.mo6433setTransformOrigin__ExYCQ(ModalBottomSheetKt.PredictiveBackChildTransformOrigin);
        return j59.a;
    }

    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(728743275, i, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:359)");
        }
        Modifier modifierWindowInsetsPadding = WindowInsetsPaddingKt.windowInsetsPadding(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, null), this.$contentWindowInsets.invoke(composer, 0));
        boolean zChangedInstance = composer.changedInstance(this.$predictiveBackProgress);
        final Animatable<Float, AnimationVector1D> animatable = this.$predictiveBackProgress;
        Object objRememberedValue = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new nl3() { // from class: androidx.compose.material3.e2
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return ModalBottomSheetKt$ModalBottomSheetContent$7.invoke$lambda$1$lambda$0(animatable, (GraphicsLayerScope) obj);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        Modifier modifierVerticalScaleDown = BottomSheetScaffoldKt.verticalScaleDown(GraphicsLayerModifierKt.graphicsLayer(modifierWindowInsetsPadding, (nl3) objRememberedValue), this.$sheetState);
        bm3<Composer, Integer, j59> bm3Var = this.$dragHandle;
        dm3<ColumnScope, Composer, Integer, j59> dm3Var = this.$content;
        SheetState sheetState = this.$sheetState;
        ll3<j59> ll3Var = this.$animateToDismiss;
        y22 y22Var = this.$scope;
        boolean z = this.$sheetGesturesEnabled;
        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer, 0);
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierVerticalScaleDown);
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        ll3<ComposeUiNode> constructor = companion.getConstructor();
        if (composer.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor);
        } else {
            composer.useNode();
        }
        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer);
        bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
        }
        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
        if (bm3Var != null) {
            composer.startReplaceGroup(1352934765);
            Strings.Companion companion2 = Strings.Companion;
            SheetDefaultsKt.DragHandleWithTooltip(columnScopeInstance, ComposableLambdaKt.rememberComposableLambda(2000500644, true, new ModalBottomSheetKt$ModalBottomSheetContent$7$2$1(sheetState, ll3Var, y22Var, z, Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_dismiss_description), composer, 0), Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_expand_description), composer, 0), Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_collapse_description), composer, 0), bm3Var), composer, 54), composer, 54);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(1356009965);
            composer.endReplaceGroup();
        }
        dm3Var.invoke(columnScopeInstance, composer, 6);
        composer.endNode();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
        invoke(composer, num.intValue());
        return j59.a;
    }
}
