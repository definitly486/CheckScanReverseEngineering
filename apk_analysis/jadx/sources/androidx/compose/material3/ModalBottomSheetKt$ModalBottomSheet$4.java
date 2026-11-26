package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
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
public final class ModalBottomSheetKt$ModalBottomSheet$4 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ ll3<j59> $animateToDismiss;
    final /* synthetic */ long $containerColor;
    final /* synthetic */ dm3<ColumnScope, Composer, Integer, j59> $content;
    final /* synthetic */ long $contentColor;
    final /* synthetic */ bm3<Composer, Integer, WindowInsets> $contentWindowInsets;
    final /* synthetic */ bm3<Composer, Integer, j59> $dragHandle;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ Animatable<Float, AnimationVector1D> $predictiveBackProgress;
    final /* synthetic */ ModalBottomSheetProperties $properties;
    final /* synthetic */ y22 $scope;
    final /* synthetic */ long $scrimColor;
    final /* synthetic */ nl3<Float, j59> $settleToDismiss;
    final /* synthetic */ Shape $shape;
    final /* synthetic */ boolean $sheetGesturesEnabled;
    final /* synthetic */ float $sheetMaxWidth;
    final /* synthetic */ SheetState $sheetState;
    final /* synthetic */ float $tonalElevation;

    /* JADX WARN: Multi-variable type inference failed */
    public ModalBottomSheetKt$ModalBottomSheet$4(long j, ll3<j59> ll3Var, SheetState sheetState, ModalBottomSheetProperties modalBottomSheetProperties, Animatable<Float, AnimationVector1D> animatable, y22 y22Var, nl3<? super Float, j59> nl3Var, Modifier modifier, float f, boolean z, Shape shape, long j2, long j3, float f2, bm3<? super Composer, ? super Integer, j59> bm3Var, bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var2, dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var) {
        this.$scrimColor = j;
        this.$animateToDismiss = ll3Var;
        this.$sheetState = sheetState;
        this.$properties = modalBottomSheetProperties;
        this.$predictiveBackProgress = animatable;
        this.$scope = y22Var;
        this.$settleToDismiss = nl3Var;
        this.$modifier = modifier;
        this.$sheetMaxWidth = f;
        this.$sheetGesturesEnabled = z;
        this.$shape = shape;
        this.$containerColor = j2;
        this.$contentColor = j3;
        this.$tonalElevation = f2;
        this.$dragHandle = bm3Var;
        this.$contentWindowInsets = bm3Var2;
        this.$content = dm3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$1$lambda$0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setTraversalGroup(semanticsPropertyReceiver, true);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:31:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:34:0x012b  */
    /* JADX WARN: Code duplicated, block: B:38:? A[RETURN, SYNTHETIC] */
    public final void invoke(Composer composer, int i) {
        ComposeUiNode.Companion companion;
        boolean z;
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1010026864, i, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:185)");
        }
        Modifier modifierImePadding = WindowInsetsPadding_androidKt.imePadding(SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, null));
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new d2();
            composer.updateRememberedValue(objRememberedValue);
        }
        Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(modifierImePadding, false, (nl3) objRememberedValue, 1, null);
        long j = this.$scrimColor;
        ll3<j59> ll3Var = this.$animateToDismiss;
        SheetState sheetState = this.$sheetState;
        ModalBottomSheetProperties modalBottomSheetProperties = this.$properties;
        Animatable<Float, AnimationVector1D> animatable = this.$predictiveBackProgress;
        y22 y22Var = this.$scope;
        nl3<Float, j59> nl3Var = this.$settleToDismiss;
        Modifier modifier = this.$modifier;
        float f = this.$sheetMaxWidth;
        boolean z2 = this.$sheetGesturesEnabled;
        Shape shape = this.$shape;
        long j2 = this.$containerColor;
        long j3 = this.$contentColor;
        float f2 = this.$tonalElevation;
        bm3<Composer, Integer, j59> bm3Var = this.$dragHandle;
        bm3<Composer, Integer, WindowInsets> bm3Var2 = this.$contentWindowInsets;
        dm3<ColumnScope, Composer, Integer, j59> dm3Var = this.$content;
        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierSemantics$default);
        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
        ll3<ComposeUiNode> constructor = companion2.getConstructor();
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
        bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
        if (!composerM5355constructorimpl.getInserting()) {
            companion = companion2;
            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            if (sheetState.getTargetValue() != SheetValue.Hidden) {
                z = true;
            } else {
                z = false;
            }
            ModalBottomSheetKt.m3626ScrimKTwxG1Y(j, ll3Var, z, modalBottomSheetProperties.shouldDismissOnClickOutside(), composer, 0);
            ModalBottomSheetKt.m3625ModalBottomSheetContent7e2Q(boxScopeInstance, animatable, y22Var, ll3Var, nl3Var, modifier, sheetState, f, z2, shape, j2, j3, f2, bm3Var, bm3Var2, dm3Var, composer, (Animatable.$stable << 3) | 6, 0, 0);
            composer.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        companion = companion2;
        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
        BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
        if (sheetState.getTargetValue() != SheetValue.Hidden) {
            z = true;
        } else {
            z = false;
        }
        ModalBottomSheetKt.m3626ScrimKTwxG1Y(j, ll3Var, z, modalBottomSheetProperties.shouldDismissOnClickOutside(), composer, 0);
        ModalBottomSheetKt.m3625ModalBottomSheetContent7e2Q(boxScopeInstance2, animatable, y22Var, ll3Var, nl3Var, modifier, sheetState, f, z2, shape, j2, j3, f2, bm3Var, bm3Var2, dm3Var, composer, (Animatable.$stable << 3) | 6, 0, 0);
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
