package androidx.compose.material3;

import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.foundation.layout.WindowInsetsSides;
import androidx.compose.material3.DefaultTwoRowsTopAppBarOverride;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.media3.extractor.ts.TsExtractor;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.e02;
import defpackage.fg;
import defpackage.fk2;
import defpackage.g22;
import defpackage.is0;
import defpackage.j22;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pg0;
import defpackage.rg0;
import defpackage.sk;
import defpackage.uo;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultTwoRowsTopAppBarOverride implements TwoRowsTopAppBarOverride {
    public static final int $stable = 0;
    public static final DefaultTwoRowsTopAppBarOverride INSTANCE = new DefaultTwoRowsTopAppBarOverride();

    private DefaultTwoRowsTopAppBarOverride() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float TwoRowsTopAppBar$lambda$10$lambda$9(ll3 ll3Var) {
        return 1.0f - ((Number) ll3Var.invoke()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean TwoRowsTopAppBar$lambda$12$lambda$11(ll3 ll3Var) {
        return ((Number) ll3Var.invoke()).floatValue() < 0.5f;
    }

    private static final boolean TwoRowsTopAppBar$lambda$13(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TwoRowsTopAppBar$lambda$15$lambda$14(TwoRowsTopAppBarOverrideScope twoRowsTopAppBarOverrideScope, float f) {
        TopAppBarState state = twoRowsTopAppBarOverrideScope.getScrollBehavior().getState();
        state.setHeightOffset(state.getHeightOffset() + f);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TwoRowsTopAppBar$lambda$18$lambda$17(ll3 ll3Var, DrawScope drawScope) {
        DrawScope.m6800drawRectnJ9OG0$default(drawScope, ((Color) ll3Var.invoke()).m6242unboximpl(), 0L, 0L, 0.0f, null, null, 0, 126, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TwoRowsTopAppBar$lambda$20$lambda$19(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setTraversalGroup(semanticsPropertyReceiver, true);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float TwoRowsTopAppBar$lambda$27$lambda$26$lambda$23$lambda$22() {
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float TwoRowsTopAppBar$lambda$27$lambda$26$lambda$25$lambda$24(TwoRowsTopAppBarOverrideScope twoRowsTopAppBarOverrideScope) {
        TopAppBarState state;
        TopAppBarScrollBehavior scrollBehavior = twoRowsTopAppBarOverrideScope.getScrollBehavior();
        if (scrollBehavior == null || (state = scrollBehavior.getState()) == null) {
            return 0.0f;
        }
        return state.getHeightOffset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TwoRowsTopAppBar$lambda$28(DefaultTwoRowsTopAppBarOverride defaultTwoRowsTopAppBarOverride, TwoRowsTopAppBarOverrideScope twoRowsTopAppBarOverrideScope, int i, Composer composer, int i2) {
        defaultTwoRowsTopAppBarOverride.TwoRowsTopAppBar(twoRowsTopAppBarOverrideScope, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float TwoRowsTopAppBar$lambda$5$lambda$4(TwoRowsTopAppBarOverrideScope twoRowsTopAppBarOverrideScope) {
        TopAppBarState state;
        TopAppBarScrollBehavior scrollBehavior = twoRowsTopAppBarOverrideScope.getScrollBehavior();
        if (scrollBehavior == null || (state = scrollBehavior.getState()) == null) {
            return 0.0f;
        }
        return state.getCollapsedFraction();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float TwoRowsTopAppBar$lambda$8$lambda$7(ll3 ll3Var) {
        return AppBarKt.getTopTitleAlphaEasing().transform(((Number) ll3Var.invoke()).floatValue());
    }

    @Override // androidx.compose.material3.TwoRowsTopAppBarOverride
    public void TwoRowsTopAppBar(final TwoRowsTopAppBarOverrideScope twoRowsTopAppBarOverrideScope, Composer composer, final int i) {
        int i2;
        final TwoRowsTopAppBarOverrideScope twoRowsTopAppBarOverrideScope2;
        Composer composer2;
        Modifier modifierDraggable$default;
        Modifier modifier;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1640665680);
        int i3 = 2;
        if ((i & 6) == 0) {
            i2 = i | (composerStartRestartGroup.changed(twoRowsTopAppBarOverrideScope) ? 4 : 2);
        } else {
            i2 = i;
        }
        int i4 = 1;
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1640665680, i2, -1, "androidx.compose.material3.DefaultTwoRowsTopAppBarOverride.TwoRowsTopAppBar (AppBar.kt:2732)");
            }
            if (Float.isNaN(twoRowsTopAppBarOverrideScope.m4308getCollapsedHeightD9Ej5fM()) || (Float.floatToRawIntBits(twoRowsTopAppBarOverrideScope.m4308getCollapsedHeightD9Ej5fM()) & Integer.MAX_VALUE) >= 2139095040) {
                fg.c("The collapsedHeight is expected to be specified and finite");
                return;
            }
            if (Float.isNaN(twoRowsTopAppBarOverrideScope.m4309getExpandedHeightD9Ej5fM()) || (Float.floatToRawIntBits(twoRowsTopAppBarOverrideScope.m4309getExpandedHeightD9Ej5fM()) & Integer.MAX_VALUE) >= 2139095040) {
                fg.c("The expandedHeight is expected to be specified and finite");
                return;
            }
            if (Dp.m9041compareTo0680j_4(twoRowsTopAppBarOverrideScope.m4309getExpandedHeightD9Ej5fM(), twoRowsTopAppBarOverrideScope.m4308getCollapsedHeightD9Ej5fM()) < 0) {
                fg.c("The expandedHeight is expected to be greater or equal to the collapsedHeight");
                return;
            }
            int iMo1428roundToPx0680j_4 = ((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1428roundToPx0680j_4(twoRowsTopAppBarOverrideScope.m4310getTitleBottomPaddingD9Ej5fM());
            int i5 = i2 & 14;
            boolean z = i5 == 4;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new pg0(twoRowsTopAppBarOverrideScope, 3);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            final ll3 ll3Var = (ll3) objRememberedValue;
            boolean zChanged = (i5 == 4) | composerStartRestartGroup.changed(ll3Var);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new ll3<Color>() { // from class: androidx.compose.material3.DefaultTwoRowsTopAppBarOverride$TwoRowsTopAppBar$appBarContainerColor$1$1
                    @Override // defpackage.ll3
                    public /* bridge */ /* synthetic */ Color invoke() {
                        return Color.m6222boximpl(m3399invoke0d7_KjU());
                    }

                    /* JADX INFO: renamed from: invoke-0d7_KjU, reason: not valid java name */
                    public final long m3399invoke0d7_KjU() {
                        return twoRowsTopAppBarOverrideScope.getColors().m4280containerColorvNxB06k$material3(ll3Var.invoke().floatValue());
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            ll3 ll3Var2 = (ll3) objRememberedValue2;
            ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1333673671, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DefaultTwoRowsTopAppBarOverride$TwoRowsTopAppBar$actionsRow$1
                public final void invoke(Composer composer3, int i6) {
                    if (!composer3.shouldExecute((i6 & 3) != 2, i6 & 1)) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1333673671, i6, -1, "androidx.compose.material3.DefaultTwoRowsTopAppBarOverride.TwoRowsTopAppBar.<anonymous> (AppBar.kt:2755)");
                    }
                    Arrangement.Horizontal end = Arrangement.INSTANCE.getEnd();
                    Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                    dm3<RowScope, Composer, Integer, j59> actions = twoRowsTopAppBarOverrideScope.getActions();
                    Modifier.Companion companion = Modifier.Companion;
                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(end, centerVertically, composer3, 54);
                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                    CompositionLocalMap currentCompositionLocalMap = composer3.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer3, companion);
                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                    ll3<ComposeUiNode> constructor = companion2.getConstructor();
                    if (composer3.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composer3.startReusableNode();
                    if (composer3.getInserting()) {
                        composer3.createNode(constructor);
                    } else {
                        composer3.useNode();
                    }
                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer3);
                    bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                    actions.invoke(RowScopeInstance.INSTANCE, composer3, 6);
                    composer3.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54);
            boolean zChanged2 = composerStartRestartGroup.changed(ll3Var);
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || objRememberedValue3 == Composer.Companion.getEmpty()) {
                objRememberedValue3 = new g22(ll3Var, i4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            ll3 ll3Var3 = (ll3) objRememberedValue3;
            boolean zChanged3 = composerStartRestartGroup.changed(ll3Var);
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChanged3 || objRememberedValue4 == Composer.Companion.getEmpty()) {
                objRememberedValue4 = new sk(ll3Var, i4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            ll3 ll3Var4 = (ll3) objRememberedValue4;
            boolean zChanged4 = composerStartRestartGroup.changed(ll3Var);
            Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (zChanged4 || objRememberedValue5 == Composer.Companion.getEmpty()) {
                objRememberedValue5 = SnapshotStateKt.derivedStateOf(new rg0(ll3Var, i4));
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            State state = (State) objRememberedValue5;
            boolean z2 = !TwoRowsTopAppBar$lambda$13(state);
            if (twoRowsTopAppBarOverrideScope.getScrollBehavior() == null || twoRowsTopAppBarOverrideScope.getScrollBehavior().isPinned()) {
                composerStartRestartGroup.startReplaceGroup(-340499894);
                composerStartRestartGroup.endReplaceGroup();
                modifierDraggable$default = Modifier.Companion;
                modifier = modifierDraggable$default;
            } else {
                composerStartRestartGroup.startReplaceGroup(-341140385);
                Modifier.Companion companion = Modifier.Companion;
                Orientation orientation = Orientation.Vertical;
                boolean z3 = i5 == 4;
                Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (z3 || objRememberedValue6 == Composer.Companion.getEmpty()) {
                    objRememberedValue6 = new j22(twoRowsTopAppBarOverrideScope, i4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                DraggableState draggableStateRememberDraggableState = DraggableKt.rememberDraggableState((nl3) objRememberedValue6, composerStartRestartGroup, 0);
                boolean z4 = i5 == 4;
                Object objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                if (z4 || objRememberedValue7 == Composer.Companion.getEmpty()) {
                    objRememberedValue7 = new DefaultTwoRowsTopAppBarOverride$TwoRowsTopAppBar$appBarDragModifier$2$1(twoRowsTopAppBarOverrideScope, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                }
                modifierDraggable$default = DraggableKt.draggable$default(companion, draggableStateRememberDraggableState, orientation, false, null, false, null, (dm3) objRememberedValue7, false, TsExtractor.TS_PACKET_SIZE, null);
                composerStartRestartGroup.endReplaceGroup();
                modifier = companion;
            }
            Modifier modifierThen = twoRowsTopAppBarOverrideScope.getModifier().then(modifierDraggable$default);
            boolean zChanged5 = composerStartRestartGroup.changed(ll3Var2);
            Object objRememberedValue8 = composerStartRestartGroup.rememberedValue();
            if (zChanged5 || objRememberedValue8 == Composer.Companion.getEmpty()) {
                objRememberedValue8 = new uo(ll3Var2, i4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
            }
            Modifier modifierDrawBehind = DrawModifierKt.drawBehind(modifierThen, (nl3) objRememberedValue8);
            Object objRememberedValue9 = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion2 = Composer.Companion;
            if (objRememberedValue9 == companion2.getEmpty()) {
                objRememberedValue9 = new is0(i3);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue9);
            }
            Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(modifierDrawBehind, false, (nl3) objRememberedValue9, 1, null);
            j59 j59Var = j59.a;
            Object objRememberedValue10 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue10 == companion2.getEmpty()) {
                objRememberedValue10 = new PointerInputEventHandler() { // from class: androidx.compose.material3.DefaultTwoRowsTopAppBarOverride$TwoRowsTopAppBar$6$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                        return j59.a;
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
            }
            Modifier modifierPointerInput = SuspendingPointerInputFilterKt.pointerInput(modifierSemantics$default, j59Var, (PointerInputEventHandler) objRememberedValue10);
            Alignment.Companion companion3 = Alignment.Companion;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPointerInput);
            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion4.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            Arrangement arrangement = Arrangement.INSTANCE;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement.getTop(), companion3.getStart(), composerStartRestartGroup, 0);
            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier);
            ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor2);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
            if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
            }
            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            Modifier modifierClipToBounds = ClipKt.clipToBounds(WindowInsetsPaddingKt.windowInsetsPadding(modifier, twoRowsTopAppBarOverrideScope.getWindowInsets()));
            Object objRememberedValue11 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue11 == companion2.getEmpty()) {
                objRememberedValue11 = new fk2();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
            }
            AppBarKt.m3104TopAppBarLayoutlyUyIHI(modifierClipToBounds, (FloatProducer) objRememberedValue11, twoRowsTopAppBarOverrideScope.getColors().m4284getNavigationIconContentColor0d7_KjU(), twoRowsTopAppBarOverrideScope.getColors().m4287getTitleContentColor0d7_KjU(), twoRowsTopAppBarOverrideScope.getColors().m4286getSubtitleContentColor0d7_KjU(), twoRowsTopAppBarOverrideScope.getColors().m4282getActionIconContentColor0d7_KjU(), twoRowsTopAppBarOverrideScope.getSmallTitle(), twoRowsTopAppBarOverrideScope.getSmallTitleTextStyle(), twoRowsTopAppBarOverrideScope.getSmallSubtitle(), twoRowsTopAppBarOverrideScope.getSmallSubtitleTextStyle(), ll3Var3, arrangement.getCenter(), twoRowsTopAppBarOverrideScope.getTitleHorizontalAlignment(), 0, TwoRowsTopAppBar$lambda$13(state), twoRowsTopAppBarOverrideScope.getNavigationIcon(), composableLambdaRememberComposableLambda, twoRowsTopAppBarOverrideScope.m4308getCollapsedHeightD9Ej5fM(), composerStartRestartGroup, 0, 1575984);
            Modifier modifierAdjustHeightOffsetLimit = AppBarKt.adjustHeightOffsetLimit(ClipKt.clipToBounds(WindowInsetsPaddingKt.windowInsetsPadding(modifier, WindowInsetsKt.m2126onlybOOhFvg(twoRowsTopAppBarOverrideScope.getWindowInsets(), WindowInsetsSides.Companion.m2148getHorizontalJoeWqyM()))), twoRowsTopAppBarOverrideScope.getScrollBehavior());
            boolean z5 = i5 == 4;
            Object objRememberedValue12 = composerStartRestartGroup.rememberedValue();
            if (z5 || objRememberedValue12 == companion2.getEmpty()) {
                twoRowsTopAppBarOverrideScope2 = twoRowsTopAppBarOverrideScope;
                objRememberedValue12 = new FloatProducer() { // from class: gk2
                    @Override // androidx.compose.material3.internal.FloatProducer
                    public final float invoke() {
                        return DefaultTwoRowsTopAppBarOverride.TwoRowsTopAppBar$lambda$27$lambda$26$lambda$25$lambda$24(twoRowsTopAppBarOverrideScope2);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue12);
            } else {
                twoRowsTopAppBarOverrideScope2 = twoRowsTopAppBarOverrideScope;
            }
            FloatProducer floatProducer = (FloatProducer) objRememberedValue12;
            long jM4284getNavigationIconContentColor0d7_KjU = twoRowsTopAppBarOverrideScope2.getColors().m4284getNavigationIconContentColor0d7_KjU();
            long jM4287getTitleContentColor0d7_KjU = twoRowsTopAppBarOverrideScope2.getColors().m4287getTitleContentColor0d7_KjU();
            long jM4282getActionIconContentColor0d7_KjU = twoRowsTopAppBarOverrideScope2.getColors().m4282getActionIconContentColor0d7_KjU();
            long jM4286getSubtitleContentColor0d7_KjU = twoRowsTopAppBarOverrideScope2.getColors().m4286getSubtitleContentColor0d7_KjU();
            bm3<Composer, Integer, j59> title = twoRowsTopAppBarOverrideScope2.getTitle();
            TextStyle titleTextStyle = twoRowsTopAppBarOverrideScope2.getTitleTextStyle();
            bm3<Composer, Integer, j59> subtitle = twoRowsTopAppBarOverrideScope2.getSubtitle();
            TextStyle subtitleTextStyle = twoRowsTopAppBarOverrideScope2.getSubtitleTextStyle();
            Arrangement.Vertical bottom = arrangement.getBottom();
            Alignment.Horizontal titleHorizontalAlignment = twoRowsTopAppBarOverrideScope2.getTitleHorizontalAlignment();
            float fM9042constructorimpl = Dp.m9042constructorimpl(twoRowsTopAppBarOverrideScope2.m4309getExpandedHeightD9Ej5fM() - twoRowsTopAppBarOverrideScope2.m4308getCollapsedHeightD9Ej5fM());
            ComposableSingletons$AppBarKt composableSingletons$AppBarKt = ComposableSingletons$AppBarKt.INSTANCE;
            composer2 = composerStartRestartGroup;
            AppBarKt.m3104TopAppBarLayoutlyUyIHI(modifierAdjustHeightOffsetLimit, floatProducer, jM4284getNavigationIconContentColor0d7_KjU, jM4287getTitleContentColor0d7_KjU, jM4286getSubtitleContentColor0d7_KjU, jM4282getActionIconContentColor0d7_KjU, title, titleTextStyle, subtitle, subtitleTextStyle, ll3Var4, bottom, titleHorizontalAlignment, iMo1428roundToPx0680j_4, z2, composableSingletons$AppBarKt.m3299getLambda$2101264077$material3(), composableSingletons$AppBarKt.getLambda$37575796$material3(), fM9042constructorimpl, composer2, 0, 1769520);
            composer2.endNode();
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            twoRowsTopAppBarOverrideScope2 = twoRowsTopAppBarOverrideScope;
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hk2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DefaultTwoRowsTopAppBarOverride.TwoRowsTopAppBar$lambda$28(this.b, twoRowsTopAppBarOverrideScope2, i, (Composer) obj, iIntValue);
                }
            });
        }
    }
}
