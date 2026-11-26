package androidx.compose.animation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.layout.ApproachLayoutModifierNode;
import androidx.compose.ui.layout.ApproachMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LookaheadScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.text.TextMeasurer;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.bm3;

/* JADX INFO: loaded from: classes.dex */
public final class BoundsAnimationModifierNode extends Modifier.Node implements ApproachLayoutModifierNode, CompositionLocalConsumerModifierNode, DrawModifierNode {
    public static final int $stable = 8;
    private boolean animateMotionFrameOfReference;
    private BoundsTransform boundsTransform;
    private Density currentDensity;
    private LayoutDirection currentLayoutDirection;
    private FontFamily.Resolver currentResolver;
    private LookaheadScope lookaheadScope;
    private bm3<? super IntSize, ? super Constraints, Constraints> onChooseMeasureConstraints;
    private TextMeasurer textMeasurer;
    private boolean directManipulationParentsDirty = true;
    private final BoundsTransformDeferredAnimation boundsAnimation = new BoundsTransformDeferredAnimation();

    public BoundsAnimationModifierNode(LookaheadScope lookaheadScope, BoundsTransform boundsTransform, bm3<? super IntSize, ? super Constraints, Constraints> bm3Var, boolean z) {
        this.lookaheadScope = lookaheadScope;
        this.boundsTransform = boundsTransform;
        this.onChooseMeasureConstraints = bm3Var;
        this.animateMotionFrameOfReference = z;
    }

    private final void updateTextMeasurer(FontFamily.Resolver resolver) {
        if (this.textMeasurer == null || !aa4.e(this.currentResolver, resolver)) {
            Density density = this.currentDensity;
            density.getClass();
            LayoutDirection layoutDirection = this.currentLayoutDirection;
            layoutDirection.getClass();
            this.textMeasurer = new TextMeasurer(resolver, density, layoutDirection, 0, 8, null);
            this.currentResolver = resolver;
        }
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode
    /* JADX INFO: renamed from: approachMeasure-3p2s80s, reason: not valid java name */
    public MeasureResult mo1078approachMeasure3p2s80s(ApproachMeasureScope approachMeasureScope, Measurable measurable, long j) {
        long jM9225toSizeozmzZPI = this.boundsAnimation.m1081getCurrentSizeNHjbRc() == InlineClassHelperKt.UnspecifiedPackedFloats ? IntSizeKt.m9225toSizeozmzZPI(approachMeasureScope.mo7680getLookaheadSizeYbymL2g()) : this.boundsAnimation.m1081getCurrentSizeNHjbRc();
        Rect value = this.boundsAnimation.getValue();
        if (value != null) {
            jM9225toSizeozmzZPI = value.m6020getSizeNHjbRc();
        }
        long jM9221roundToIntSizeuvyYCjk = IntSizeKt.m9221roundToIntSizeuvyYCjk(jM9225toSizeozmzZPI);
        long jM9001unboximpl = this.onChooseMeasureConstraints.invoke(IntSize.m9205boximpl(jM9221roundToIntSizeuvyYCjk), Constraints.m8982boximpl(j)).m9001unboximpl();
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(jM9001unboximpl);
        long jM9009constrain4WqzIAM = ConstraintsKt.m9009constrain4WqzIAM(jM9001unboximpl, jM9221roundToIntSizeuvyYCjk);
        return MeasureScope.layout$default(approachMeasureScope, (int) (jM9009constrain4WqzIAM >> 32), (int) (jM9009constrain4WqzIAM & MuxerUtil.UNSIGNED_INT_MAX_VALUE), null, new BoundsAnimationModifierNode$approachMeasure$1(this, placeableMo7702measureBRTryo0), 4, null);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) throws Throwable {
        contentDrawScope.drawContent();
        if (IsLookaheadAnimationVisualDebuggingEnabledKt.isLookaheadAnimationVisualDebuggingEnabled() && Constraints.m8993getHasFixedWidthimpl(this.onChooseMeasureConstraints.invoke(IntSize.m9205boximpl(IntSize.Companion.m9218getZeroYbymL2g()), Constraints.m8982boximpl(ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null))).m9001unboximpl())) {
            LookaheadAnimationVisualDebugConfig lookaheadAnimationVisualDebugConfig = (LookaheadAnimationVisualDebugConfig) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig());
            if (lookaheadAnimationVisualDebugConfig.isEnabled()) {
                if (this.currentDensity == null) {
                    this.currentDensity = (Density) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, androidx.compose.ui.platform.CompositionLocalsKt.getLocalDensity());
                    this.currentLayoutDirection = (LayoutDirection) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
                }
                LookaheadAnimationVisualDebugHelper lookaheadAnimationVisualDebugHelper = this.boundsAnimation.getLookaheadAnimationVisualDebugHelper();
                lookaheadAnimationVisualDebugHelper.getClass();
                long jM6242unboximpl = ((Color) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugColor())).m6242unboximpl();
                updateTextMeasurer((FontFamily.Resolver) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, androidx.compose.ui.platform.CompositionLocalsKt.getLocalFontFamilyResolver()));
                if (this.boundsAnimation.isIdle()) {
                    lookaheadAnimationVisualDebugHelper.m1126drawInactiveVisualizations3IgeMak$animation(contentDrawScope, jM6242unboximpl, lookaheadAnimationVisualDebugConfig.isShowKeyLabelEnabled(), contentDrawScope.mo1434toPx0680j_4(Dp.m9042constructorimpl(2.5f)), this.boundsAnimation.toString().substring(60), this.textMeasurer);
                    return;
                }
                long jM1082getTargetOffsetF1C5BW0 = this.boundsAnimation.m1082getTargetOffsetF1C5BW0();
                long jM1083getTargetSizeNHjbRc = this.boundsAnimation.m1083getTargetSizeNHjbRc();
                Rect value = this.boundsAnimation.getValue();
                value.getClass();
                lookaheadAnimationVisualDebugHelper.m1127drawLocalVisualizations0XenJco$animation(contentDrawScope, jM6242unboximpl, jM1082getTargetOffsetF1C5BW0, jM1083getTargetSizeNHjbRc, value, contentDrawScope.mo6805getCenterF1C5BW0(), lookaheadAnimationVisualDebugConfig.isShowKeyLabelEnabled(), contentDrawScope.mo1434toPx0680j_4(Dp.m9042constructorimpl(2.5f)), this.boundsAnimation.toString().substring(60), this.textMeasurer);
            }
        }
    }

    public final boolean getAnimateMotionFrameOfReference() {
        return this.animateMotionFrameOfReference;
    }

    public final BoundsTransform getBoundsTransform() {
        return this.boundsTransform;
    }

    public final Density getCurrentDensity() {
        return this.currentDensity;
    }

    public final LayoutDirection getCurrentLayoutDirection() {
        return this.currentLayoutDirection;
    }

    public final FontFamily.Resolver getCurrentResolver() {
        return this.currentResolver;
    }

    public final LookaheadScope getLookaheadScope() {
        return this.lookaheadScope;
    }

    public final bm3<IntSize, Constraints, Constraints> getOnChooseMeasureConstraints() {
        return this.onChooseMeasureConstraints;
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode
    /* JADX INFO: renamed from: isMeasurementApproachInProgress-ozmzZPI, reason: not valid java name */
    public boolean mo1079isMeasurementApproachInProgressozmzZPI(long j) {
        this.boundsAnimation.m1086updateTargetSizeuvyYCjk(IntSizeKt.m9225toSizeozmzZPI(j));
        return !this.boundsAnimation.isIdle();
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode
    public boolean isPlacementApproachInProgress(Placeable.PlacementScope placementScope, LayoutCoordinates layoutCoordinates) {
        if (IsLookaheadAnimationVisualDebuggingEnabledKt.isLookaheadAnimationVisualDebuggingEnabled() && this.boundsAnimation.getLookaheadAnimationVisualDebugHelper() == null) {
            this.boundsAnimation.setLookaheadAnimationVisualDebugHelper(new LookaheadAnimationVisualDebugHelper());
        }
        this.boundsAnimation.updateTargetOffsetAndAnimate(this.lookaheadScope, placementScope, getCoroutineScope(), this.directManipulationParentsDirty, this.animateMotionFrameOfReference, this.boundsTransform);
        this.directManipulationParentsDirty = this.animateMotionFrameOfReference;
        return !this.boundsAnimation.isIdle();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        this.directManipulationParentsDirty = true;
    }

    public final void setAnimateMotionFrameOfReference(boolean z) {
        this.animateMotionFrameOfReference = z;
    }

    public final void setBoundsTransform(BoundsTransform boundsTransform) {
        this.boundsTransform = boundsTransform;
    }

    public final void setCurrentDensity(Density density) {
        this.currentDensity = density;
    }

    public final void setCurrentLayoutDirection(LayoutDirection layoutDirection) {
        this.currentLayoutDirection = layoutDirection;
    }

    public final void setCurrentResolver(FontFamily.Resolver resolver) {
        this.currentResolver = resolver;
    }

    public final void setLookaheadScope(LookaheadScope lookaheadScope) {
        this.lookaheadScope = lookaheadScope;
    }

    public final void setOnChooseMeasureConstraints(bm3<? super IntSize, ? super Constraints, Constraints> bm3Var) {
        this.onChooseMeasureConstraints = bm3Var;
    }
}
