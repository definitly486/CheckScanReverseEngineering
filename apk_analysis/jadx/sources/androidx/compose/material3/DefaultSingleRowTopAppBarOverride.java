package androidx.compose.material3;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.material3.DefaultSingleRowTopAppBarOverride;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
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
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.media3.extractor.ts.TsExtractor;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.e02;
import defpackage.fg;
import defpackage.fg1;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.si2;
import defpackage.ti2;
import defpackage.vi2;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultSingleRowTopAppBarOverride implements SingleRowTopAppBarOverride {
    public static final int $stable = 0;
    public static final DefaultSingleRowTopAppBarOverride INSTANCE = new DefaultSingleRowTopAppBarOverride();

    private DefaultSingleRowTopAppBarOverride() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float SingleRowTopAppBar$lambda$15$lambda$12$lambda$11(SingleRowTopAppBarOverrideScope singleRowTopAppBarOverrideScope) {
        TopAppBarState state;
        TopAppBarScrollBehavior scrollBehavior = singleRowTopAppBarOverrideScope.getScrollBehavior();
        if (scrollBehavior == null || (state = scrollBehavior.getState()) == null) {
            return 0.0f;
        }
        return state.getHeightOffset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float SingleRowTopAppBar$lambda$15$lambda$14$lambda$13() {
        return 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SingleRowTopAppBar$lambda$16(DefaultSingleRowTopAppBarOverride defaultSingleRowTopAppBarOverride, SingleRowTopAppBarOverrideScope singleRowTopAppBarOverrideScope, int i, Composer composer, int i2) {
        defaultSingleRowTopAppBarOverride.SingleRowTopAppBar(singleRowTopAppBarOverrideScope, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    private static final long SingleRowTopAppBar$lambda$2(State<Color> state) {
        return state.getValue().m6242unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SingleRowTopAppBar$lambda$4$lambda$3(SingleRowTopAppBarOverrideScope singleRowTopAppBarOverrideScope, float f) {
        TopAppBarState state = singleRowTopAppBarOverrideScope.getScrollBehavior().getState();
        state.setHeightOffset(state.getHeightOffset() + f);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SingleRowTopAppBar$lambda$7$lambda$6(State state, DrawScope drawScope) {
        long jM6242unboximpl = ((Color) state.getValue()).m6242unboximpl();
        if (!Color.m6233equalsimpl0(jM6242unboximpl, Color.Companion.m6268getUnspecified0d7_KjU())) {
            DrawScope.m6800drawRectnJ9OG0$default(drawScope, jM6242unboximpl, 0L, 0L, 0.0f, null, null, 0, 126, null);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SingleRowTopAppBar$lambda$9$lambda$8(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setTraversalGroup(semanticsPropertyReceiver, true);
        return j59.a;
    }

    @Override // androidx.compose.material3.SingleRowTopAppBarOverride
    public void SingleRowTopAppBar(final SingleRowTopAppBarOverrideScope singleRowTopAppBarOverrideScope, Composer composer, final int i) {
        int i2;
        Modifier modifierDraggable$default;
        Modifier modifier;
        Composer composerStartRestartGroup = composer.startRestartGroup(2137486921);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(singleRowTopAppBarOverrideScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = 1;
        int i4 = 0;
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2137486921, i2, -1, "androidx.compose.material3.DefaultSingleRowTopAppBarOverride.SingleRowTopAppBar (AppBar.kt:2510)");
            }
            if (Float.isNaN(singleRowTopAppBarOverrideScope.m3868getExpandedHeightD9Ej5fM()) || (Float.floatToRawIntBits(singleRowTopAppBarOverrideScope.m3868getExpandedHeightD9Ej5fM()) & Integer.MAX_VALUE) >= 2139095040) {
                fg.c("The expandedHeight is expected to be specified and finite");
                return;
            }
            boolean zChanged = composerStartRestartGroup.changed(singleRowTopAppBarOverrideScope.getColors()) | composerStartRestartGroup.changed(singleRowTopAppBarOverrideScope.getScrollBehavior());
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = SnapshotStateKt.derivedStateOf(new ll3<Color>() { // from class: androidx.compose.material3.DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$targetColor$2$1
                    @Override // defpackage.ll3
                    public /* bridge */ /* synthetic */ Color invoke() {
                        return Color.m6222boximpl(m3397invoke0d7_KjU());
                    }

                    /* JADX INFO: renamed from: invoke-0d7_KjU, reason: not valid java name */
                    public final long m3397invoke0d7_KjU() {
                        TopAppBarState state;
                        TopAppBarScrollBehavior scrollBehavior = singleRowTopAppBarOverrideScope.getScrollBehavior();
                        return singleRowTopAppBarOverrideScope.getColors().m4280containerColorvNxB06k$material3(((scrollBehavior == null || (state = scrollBehavior.getState()) == null) ? 0.0f : state.getOverlappedFraction()) > 0.01f ? 1.0f : 0.0f);
                    }
                });
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            State<Color> stateM1161animateColorAsStateeuL9pac = SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(SingleRowTopAppBar$lambda$2((State) objRememberedValue), MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composerStartRestartGroup, 6), null, null, composerStartRestartGroup, 0, 12);
            ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1658896622, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$actionsRow$1
                public final void invoke(Composer composer2, int i5) {
                    if (!composer2.shouldExecute((i5 & 3) != 2, i5 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1658896622, i5, -1, "androidx.compose.material3.DefaultSingleRowTopAppBarOverride.SingleRowTopAppBar.<anonymous> (AppBar.kt:2537)");
                    }
                    Arrangement.Horizontal end = Arrangement.INSTANCE.getEnd();
                    Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                    dm3<RowScope, Composer, Integer, j59> actions = singleRowTopAppBarOverrideScope.getActions();
                    Modifier.Companion companion = Modifier.Companion;
                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(end, centerVertically, composer2, 54);
                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                    CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, companion);
                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                    ll3<ComposeUiNode> constructor = companion2.getConstructor();
                    if (composer2.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composer2.startReusableNode();
                    if (composer2.getInserting()) {
                        composer2.createNode(constructor);
                    } else {
                        composer2.useNode();
                    }
                    Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                    bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                    actions.invoke(RowScopeInstance.INSTANCE, composer2, 6);
                    composer2.endNode();
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
            if (singleRowTopAppBarOverrideScope.getScrollBehavior() == null || singleRowTopAppBarOverrideScope.getScrollBehavior().isPinned()) {
                composerStartRestartGroup.startReplaceGroup(690108113);
                composerStartRestartGroup.endReplaceGroup();
                modifierDraggable$default = Modifier.Companion;
                modifier = modifierDraggable$default;
            } else {
                composerStartRestartGroup.startReplaceGroup(689467622);
                Modifier.Companion companion = Modifier.Companion;
                Orientation orientation = Orientation.Vertical;
                int i5 = i2 & 14;
                boolean z = i5 == 4;
                Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z || objRememberedValue2 == Composer.Companion.getEmpty()) {
                    objRememberedValue2 = new fg1(singleRowTopAppBarOverrideScope, i3);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                DraggableState draggableStateRememberDraggableState = DraggableKt.rememberDraggableState((nl3) objRememberedValue2, composerStartRestartGroup, 0);
                boolean z2 = i5 == 4;
                Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z2 || objRememberedValue3 == Composer.Companion.getEmpty()) {
                    objRememberedValue3 = new DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$appBarDragModifier$2$1(singleRowTopAppBarOverrideScope, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                modifierDraggable$default = DraggableKt.draggable$default(companion, draggableStateRememberDraggableState, orientation, false, null, false, null, (dm3) objRememberedValue3, false, TsExtractor.TS_PACKET_SIZE, null);
                composerStartRestartGroup.endReplaceGroup();
                modifier = companion;
            }
            Modifier modifierThen = singleRowTopAppBarOverrideScope.getModifier().then(modifierDraggable$default);
            boolean zChanged2 = composerStartRestartGroup.changed(stateM1161animateColorAsStateeuL9pac);
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || objRememberedValue4 == Composer.Companion.getEmpty()) {
                objRememberedValue4 = new si2(stateM1161animateColorAsStateeuL9pac, i4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            Modifier modifierDrawBehind = DrawModifierKt.drawBehind(modifierThen, (nl3) objRememberedValue4);
            Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion2 = Composer.Companion;
            if (objRememberedValue5 == companion2.getEmpty()) {
                objRememberedValue5 = new ti2(i4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(modifierDrawBehind, false, (nl3) objRememberedValue5, 1, null);
            j59 j59Var = j59.a;
            Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue6 == companion2.getEmpty()) {
                objRememberedValue6 = new PointerInputEventHandler() { // from class: androidx.compose.material3.DefaultSingleRowTopAppBarOverride$SingleRowTopAppBar$4$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                        return j59.a;
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            }
            Modifier modifierPointerInput = SuspendingPointerInputFilterKt.pointerInput(modifierSemantics$default, j59Var, (PointerInputEventHandler) objRememberedValue6);
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPointerInput);
            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion3.getConstructor();
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
            bm3 bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            Modifier modifierAdjustHeightOffsetLimit = AppBarKt.adjustHeightOffsetLimit(ClipKt.clipToBounds(WindowInsetsPaddingKt.windowInsetsPadding(modifier, singleRowTopAppBarOverrideScope.getWindowInsets())), singleRowTopAppBarOverrideScope.getScrollBehavior());
            i3 = (i2 & 14) != 4 ? 0 : 1;
            Object objRememberedValue7 = composerStartRestartGroup.rememberedValue();
            if (i3 != 0 || objRememberedValue7 == companion2.getEmpty()) {
                objRememberedValue7 = new FloatProducer() { // from class: ui2
                    @Override // androidx.compose.material3.internal.FloatProducer
                    public final float invoke() {
                        return DefaultSingleRowTopAppBarOverride.SingleRowTopAppBar$lambda$15$lambda$12$lambda$11(singleRowTopAppBarOverrideScope);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
            }
            FloatProducer floatProducer = (FloatProducer) objRememberedValue7;
            long jM4284getNavigationIconContentColor0d7_KjU = singleRowTopAppBarOverrideScope.getColors().m4284getNavigationIconContentColor0d7_KjU();
            long jM4287getTitleContentColor0d7_KjU = singleRowTopAppBarOverrideScope.getColors().m4287getTitleContentColor0d7_KjU();
            long jM4282getActionIconContentColor0d7_KjU = singleRowTopAppBarOverrideScope.getColors().m4282getActionIconContentColor0d7_KjU();
            long jM4286getSubtitleContentColor0d7_KjU = singleRowTopAppBarOverrideScope.getColors().m4286getSubtitleContentColor0d7_KjU();
            bm3<Composer, Integer, j59> title = singleRowTopAppBarOverrideScope.getTitle();
            TextStyle titleTextStyle = singleRowTopAppBarOverrideScope.getTitleTextStyle();
            bm3<Composer, Integer, j59> subtitle = singleRowTopAppBarOverrideScope.getSubtitle();
            TextStyle subtitleTextStyle = singleRowTopAppBarOverrideScope.getSubtitleTextStyle();
            Arrangement.HorizontalOrVertical center = Arrangement.INSTANCE.getCenter();
            Alignment.Horizontal titleHorizontalAlignment = singleRowTopAppBarOverrideScope.getTitleHorizontalAlignment();
            bm3<Composer, Integer, j59> navigationIcon = singleRowTopAppBarOverrideScope.getNavigationIcon();
            float fM3868getExpandedHeightD9Ej5fM = singleRowTopAppBarOverrideScope.m3868getExpandedHeightD9Ej5fM();
            Object objRememberedValue8 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue8 == companion2.getEmpty()) {
                objRememberedValue8 = new vi2(i4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue8);
            }
            AppBarKt.m3104TopAppBarLayoutlyUyIHI(modifierAdjustHeightOffsetLimit, floatProducer, jM4284getNavigationIconContentColor0d7_KjU, jM4287getTitleContentColor0d7_KjU, jM4286getSubtitleContentColor0d7_KjU, jM4282getActionIconContentColor0d7_KjU, title, titleTextStyle, subtitle, subtitleTextStyle, (ll3) objRememberedValue8, center, titleHorizontalAlignment, 0, false, navigationIcon, composableLambdaRememberComposableLambda, fM3868getExpandedHeightD9Ej5fM, composerStartRestartGroup, 0, 1600566);
            composerStartRestartGroup = composerStartRestartGroup;
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: wi2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DefaultSingleRowTopAppBarOverride.SingleRowTopAppBar$lambda$16(this.b, singleRowTopAppBarOverrideScope, i, (Composer) obj, iIntValue);
                }
            });
        }
    }
}
