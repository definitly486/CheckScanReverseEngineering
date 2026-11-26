package androidx.compose.animation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import defpackage.aa4;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
final class SharedTransitionScopeRootModifierNode extends Modifier.Node implements LayoutModifierNode, ObserverModifierNode, DrawModifierNode, CompositionLocalConsumerModifierNode {
    private SharedTransitionScopeImpl sharedScope;

    public SharedTransitionScopeRootModifierNode(SharedTransitionScopeImpl sharedTransitionScopeImpl) {
        this.sharedScope = sharedTransitionScopeImpl;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        if (!IsLookaheadAnimationVisualDebuggingEnabledKt.isLookaheadAnimationVisualDebuggingEnabled()) {
            this.sharedScope.drawInOverlay$animation(contentDrawScope);
            return;
        }
        LookaheadAnimationVisualDebugConfig lookaheadAnimationVisualDebugConfig = (LookaheadAnimationVisualDebugConfig) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig());
        if (lookaheadAnimationVisualDebugConfig.isEnabled() && this.sharedScope.isTransitionActive()) {
            LookaheadAnimationVisualDebugHelper lookaheadAnimationVisualDebugHelper$animation = this.sharedScope.getLookaheadAnimationVisualDebugHelper$animation();
            lookaheadAnimationVisualDebugHelper$animation.getClass();
            lookaheadAnimationVisualDebugHelper$animation.m1129drawOverlay4WTKRHQ$animation(contentDrawScope, lookaheadAnimationVisualDebugConfig.m1120getOverlayColor0d7_KjU());
        }
        this.sharedScope.drawInOverlay$animation(contentDrawScope);
        if (lookaheadAnimationVisualDebugConfig.isEnabled() && this.sharedScope.isTransitionActive()) {
            LookaheadAnimationVisualDebugHelper lookaheadAnimationVisualDebugHelper$animation2 = this.sharedScope.getLookaheadAnimationVisualDebugHelper$animation();
            lookaheadAnimationVisualDebugHelper$animation2.getClass();
            lookaheadAnimationVisualDebugHelper$animation2.drawGlobalVisualizations$animation(contentDrawScope);
        }
    }

    public final SharedTransitionScopeImpl getSharedScope() {
        return this.sharedScope;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new SharedTransitionScopeRootModifierNode$measure$1(measureScope, this, placeableMo7702measureBRTryo0), 4, null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        super.onAttach();
        ObserverModifierNodeKt.observeReads(this, this.sharedScope.getObserveAnimatingBlock$animation());
        this.sharedScope.setInvalidateOverlay(new AnonymousClass1());
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        this.sharedScope.setInvalidateOverlay(null);
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() {
        this.sharedScope.updateTransitionActiveness$animation();
        ObserverModifierNodeKt.observeReads(this, this.sharedScope.getObserveAnimatingBlock$animation());
    }

    public final void setSharedScope(SharedTransitionScopeImpl sharedTransitionScopeImpl) {
        if (!aa4.e(sharedTransitionScopeImpl, this.sharedScope)) {
            ObserverModifierNodeKt.observeReads(this, sharedTransitionScopeImpl.getObserveAnimatingBlock$animation());
        }
        this.sharedScope = sharedTransitionScopeImpl;
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedTransitionScopeRootModifierNode$onAttach$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<j59> {
        public AnonymousClass1() {
            super(0);
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ j59 invoke() {
            invoke2();
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            DrawModifierNodeKt.invalidateDraw(SharedTransitionScopeRootModifierNode.this);
        }
    }
}
