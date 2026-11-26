package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import androidx.compose.ui.layout.ApproachLayoutModifierNode;
import androidx.compose.ui.layout.ApproachMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.modifier.ModifierLocalMap;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.modifier.ModifierLocalModifierNodeKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.text.TextMeasurer;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.b36;
import defpackage.eg;
import defpackage.gh4;
import defpackage.i2;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ws7;

/* JADX INFO: loaded from: classes.dex */
public final class SharedBoundsNode extends Modifier.Node implements ApproachLayoutModifierNode, DrawModifierNode, ModifierLocalModifierNode, ObserverModifierNode, BoundsProvider, CompositionLocalConsumerModifierNode {
    public static final int $stable = 8;
    private Rect boundsBeforeDetached;
    private Density currentDensity;
    private LayoutDirection currentLayoutDirection;
    private FontFamily.Resolver currentResolver;
    private boolean isPlaced;
    private GraphicsLayer layer;
    private LookaheadAnimationVisualDebugHelper lookaheadAnimationVisualDebugHelper;
    private final ModifierLocalMap providedValues;
    private SharedElementEntry sharedElementEntry;
    private TextMeasurer textMeasurer;

    public SharedBoundsNode(SharedElementEntry sharedElementEntry) {
        this.sharedElementEntry = sharedElementEntry;
        this.layer = sharedElementEntry.getLayer();
        this.providedValues = ModifierLocalModifierNodeKt.modifierLocalMapOf(new b36(SharedContentNodeKt.getModifierLocalSharedElementInternalState(), sharedElementEntry));
    }

    private final MeasureResult approachPlace(MeasureScope measureScope, Placeable placeable) {
        long jM9208constructorimpl;
        if (getSharedElement().getState$animation().getMatchIsOrHasBeenConfigured()) {
            jM9208constructorimpl = this.sharedElementEntry.getPlaceholderSize().mo1150calculateSizeJyjRU_E(requireLookaheadLayoutCoordinates().mo7710getSizeYbymL2g(), IntSize.m9208constructorimpl((((long) placeable.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) placeable.getWidth()) << 32)));
        } else {
            jM9208constructorimpl = IntSize.m9208constructorimpl((((long) placeable.getWidth()) << 32) | (((long) placeable.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        return MeasureScope.layout$default(measureScope, (int) (jM9208constructorimpl >> 32), (int) (jM9208constructorimpl & MuxerUtil.UNSIGNED_INT_MAX_VALUE), null, new AnonymousClass1(placeable), 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void approachPlaceMatchBeyondTransition(Placeable.PlacementScope placementScope, Placeable placeable, Rect rect) {
        long jM9181getZeronOccac;
        if (getBoundsAnimation().getTarget()) {
            Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
            return;
        }
        LayoutCoordinates coordinates = placementScope.getCoordinates();
        if (coordinates != null) {
            jM9181getZeronOccac = IntOffsetKt.m9187roundk4lQ0M(Offset.m5991minusMKHz9U(rect.m6022getTopLeftF1C5BW0(), getRootCoords().mo7711localPositionOfR5De75A(coordinates, Offset.Companion.m6003getZeroF1C5BW0())));
        } else {
            jM9181getZeronOccac = IntOffset.Companion.m9181getZeronOccac();
        }
        Placeable.PlacementScope.place$default(placementScope, placeable, IntOffset.m9170getXimpl(jM9181getZeronOccac), IntOffset.m9171getYimpl(jM9181getZeronOccac), 0.0f, 4, null);
    }

    private static final FiniteAnimationSpec approachPlaceMatchInTransition$lambda$0(Rect rect, Rect rect2) {
        return AnimationSpecKt.spring$default(0.0f, 0.0f, VisibilityThresholdsKt.getVisibilityThreshold(Rect.Companion), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FiniteAnimationSpec approachPlaceMatchInTransition$lambda$1(Rect rect, Rect rect2) {
        return AnimationSpecKt.spring$default(0.0f, 0.0f, VisibilityThresholdsKt.getVisibilityThreshold(Rect.Companion), 3, null);
    }

    private final void drawContentWithLookaheadAnimationDebug(ContentDrawScope contentDrawScope, GraphicsLayer graphicsLayer, Rect rect, LookaheadAnimationVisualDebugConfig lookaheadAnimationVisualDebugConfig) {
        if (this.lookaheadAnimationVisualDebugHelper == null) {
            this.lookaheadAnimationVisualDebugHelper = new LookaheadAnimationVisualDebugHelper();
        }
        if (this.currentDensity == null) {
            this.currentDensity = (Density) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, androidx.compose.ui.platform.CompositionLocalsKt.getLocalDensity());
            this.currentLayoutDirection = (LayoutDirection) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, androidx.compose.ui.platform.CompositionLocalsKt.getLocalLayoutDirection());
        }
        long jM6242unboximpl = ((Color) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugColor())).m6242unboximpl();
        float fMo1434toPx0680j_4 = contentDrawScope.mo1434toPx0680j_4(Dp.m9042constructorimpl(2.5f));
        TargetData targetData = getSharedElement().getState$animation().getTargetData();
        updateTextMeasurer((FontFamily.Resolver) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, androidx.compose.ui.platform.CompositionLocalsKt.getLocalFontFamilyResolver()));
        DrawScope.m6804recordJVtK1S4$default(contentDrawScope, graphicsLayer, 0L, new C04471(contentDrawScope, this, lookaheadAnimationVisualDebugConfig, fMo1434toPx0680j_4, targetData, rect, jM6242unboximpl), 1, null);
    }

    private final LayoutCoordinates getApproachCoordinates() {
        return DelegatableNodeKt.requireLayoutCoordinates(this);
    }

    private final BoundsAnimation getBoundsAnimation() {
        return this.sharedElementEntry.getBoundsAnimation();
    }

    private final LayoutCoordinates getRootCoords() {
        return getSharedElement().getScope().getRoot$animation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SharedElement getSharedElement() {
        return this.sharedElementEntry.getSharedElement();
    }

    private final LayoutCoordinates requireLookaheadLayoutCoordinates() {
        return this.sharedElementEntry.getSharedElement().getScope().toLookaheadCoordinates(DelegatableNodeKt.requireLayoutCoordinates(this));
    }

    private final void setLayer(GraphicsLayer graphicsLayer) {
        if (graphicsLayer == null) {
            GraphicsLayer graphicsLayer2 = this.layer;
            if (graphicsLayer2 != null) {
                DelegatableNodeKt.requireGraphicsContext(this).releaseGraphicsLayer(graphicsLayer2);
            }
        } else {
            this.sharedElementEntry.setLayer(graphicsLayer);
        }
        this.layer = graphicsLayer;
    }

    private final void setup() {
        provide(SharedContentNodeKt.getModifierLocalSharedElementInternalState(), this.sharedElementEntry);
        this.sharedElementEntry.setParentState((SharedElementEntry) getCurrent(SharedContentNodeKt.getModifierLocalSharedElementInternalState()));
        setLayer(DelegatableNodeKt.requireGraphicsContext(this).createGraphicsLayer());
        this.isPlaced = false;
        this.sharedElementEntry.setBoundsProvider(this);
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
    /* JADX INFO: renamed from: approachMeasure-3p2s80s */
    public MeasureResult mo1078approachMeasure3p2s80s(ApproachMeasureScope approachMeasureScope, Measurable measurable, long j) {
        Rect value = getBoundsAnimation().getValue();
        if (value == null) {
            value = getSharedElement().tryInitializingCurrentBounds();
        }
        if (value != null) {
            long jM9221roundToIntSizeuvyYCjk = IntSizeKt.m9221roundToIntSizeuvyYCjk(value.m6020getSizeNHjbRc());
            int i = (int) (jM9221roundToIntSizeuvyYCjk >> 32);
            int i2 = (int) (jM9221roundToIntSizeuvyYCjk & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            if (i == Integer.MAX_VALUE || i2 == Integer.MAX_VALUE) {
                StringBuilder sb = new StringBuilder("Error: Infinite width/height is invalid. animated bounds: ");
                sb.append(getBoundsAnimation().getValue());
                i2.e(sb, ", current bounds: ", getSharedElement().getState$animation().getCurrentBounds());
                return null;
            }
            Constraints.Companion companion = Constraints.Companion;
            if (i < 0) {
                i = 0;
            }
            if (i2 < 0) {
                i2 = 0;
            }
            j = companion.m9005fixedJhjzzOo(i, i2);
        }
        return approachPlace(approachMeasureScope, measurable.mo7702measureBRTryo0(j));
    }

    public final void approachPlaceMatchInTransition$animation(Placeable.PlacementScope placementScope, Placeable placeable, TargetData targetData, Rect rect) {
        FiniteAnimationSpec finiteAnimationSpec;
        long jM5997unboximpl;
        LookaheadAnimationVisualDebugHelper lookaheadAnimationVisualDebugHelper;
        LayoutCoordinates coordinates = placementScope.getCoordinates();
        if (coordinates == null) {
            Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
            return;
        }
        boolean activeMatchFound = getSharedElement().getState$animation().getActiveMatchFound();
        long jMo7711localPositionOfR5De75A = getRootCoords().mo7711localPositionOfR5De75A(coordinates, Offset.Companion.m6003getZeroF1C5BW0());
        Rect targetBounds = SharedTransitionStateMachineKt.getTargetBounds(targetData);
        boolean zIsEnabled = IsLookaheadAnimationVisualDebuggingEnabledKt.isLookaheadAnimationVisualDebuggingEnabled() ? ((LookaheadAnimationVisualDebugConfig) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig())).isEnabled() : false;
        if (activeMatchFound) {
            SpringSpec springSpecSpring$default = zIsEnabled ? AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null) : null;
            BoundsAnimation.animate$default(getBoundsAnimation(), rect, SharedTransitionStateMachineKt.getTargetBounds(targetData), null, 4, null);
            finiteAnimationSpec = springSpecSpring$default;
        } else {
            FiniteAnimationSpec finiteAnimationSpecApproachPlaceMatchInTransition$lambda$0 = zIsEnabled ? approachPlaceMatchInTransition$lambda$0(rect, targetBounds) : null;
            getBoundsAnimation().animate(rect, SharedTransitionStateMachineKt.getTargetBounds(targetData), new ws7());
            finiteAnimationSpec = finiteAnimationSpecApproachPlaceMatchInTransition$lambda$0;
        }
        if (zIsEnabled && (lookaheadAnimationVisualDebugHelper = this.lookaheadAnimationVisualDebugHelper) != null) {
            lookaheadAnimationVisualDebugHelper.getClass();
            finiteAnimationSpec.getClass();
            LookaheadAnimationVisualDebugHelper.calculatePath$animation$default(lookaheadAnimationVisualDebugHelper, finiteAnimationSpec, rect, targetBounds, null, 8, null);
        }
        Rect value = getBoundsAnimation().getValue();
        Offset offsetM5976boximpl = value != null ? Offset.m5976boximpl(SharedTransitionStateMachineKt.calculateOffsetFromDirectManipulation(targetData, value)) : null;
        if (getBoundsAnimation().getTarget() || !activeMatchFound) {
            long jM5997unboximpl2 = offsetM5976boximpl != null ? offsetM5976boximpl.m5997unboximpl() : jMo7711localPositionOfR5De75A;
            getSharedElement().getState$animation().updateBounds(offsetM5976boximpl == null ? RectKt.m6027Recttz77jQw(jMo7711localPositionOfR5De75A, IntSizeKt.m9225toSizeozmzZPI(coordinates.mo7710getSizeYbymL2g())) : RectKt.m6027Recttz77jQw(offsetM5976boximpl.m5997unboximpl(), value.m6020getSizeNHjbRc()));
            jM5997unboximpl = jM5997unboximpl2;
        } else {
            jM5997unboximpl = offsetM5976boximpl != null ? offsetM5976boximpl.m5997unboximpl() : rect.m6022getTopLeftF1C5BW0();
        }
        long jM5991minusMKHz9U = Offset.m5991minusMKHz9U(jM5997unboximpl, jMo7711localPositionOfR5De75A);
        Placeable.PlacementScope.place$default(placementScope, placeable, Math.round(Float.intBitsToFloat((int) (jM5991minusMKHz9U >> 32))), Math.round(Float.intBitsToFloat((int) (jM5991minusMKHz9U & MuxerUtil.UNSIGNED_INT_MAX_VALUE))), 0.0f, 4, null);
    }

    @Override // androidx.compose.animation.BoundsProvider
    public Rect calculateAlternativeTargetBounds(Rect rect) {
        return this.sharedElementEntry.calculateTargetBounds(rect);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        ContentDrawScope contentDrawScope2;
        SharedElement sharedElement = getSharedElement();
        Rect currentBounds = sharedElement.getState$animation().getCurrentBounds();
        SharedElementEntry sharedElementEntry = this.sharedElementEntry;
        sharedElementEntry.setClipPathInOverlay$animation((!sharedElementEntry.getShouldRenderInOverlay$animation() || currentBounds == null) ? null : this.sharedElementEntry.getOverlayClip().getClipPath(this.sharedElementEntry.getUserState(), currentBounds, contentDrawScope.getLayoutDirection(), DelegatableNodeKt.requireDensity(this)));
        GraphicsLayer layer = this.sharedElementEntry.getLayer();
        if (layer == null) {
            StringBuilder sb = new StringBuilder("Error: Layer is null when accessed for shared bounds/element : ");
            sb.append(sharedElement.getKey());
            boolean target = this.sharedElementEntry.getBoundsAnimation().getTarget();
            boolean zIsAttached = isAttached();
            sb.append(",target: ");
            sb.append(target);
            sb.append(", is attached: ");
            sb.append(zIsAttached);
            throw new IllegalArgumentException(sb.toString().toString());
        }
        LookaheadAnimationVisualDebugConfig lookaheadAnimationVisualDebugConfig = IsLookaheadAnimationVisualDebuggingEnabledKt.isLookaheadAnimationVisualDebuggingEnabled() ? (LookaheadAnimationVisualDebugConfig) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig()) : null;
        if (lookaheadAnimationVisualDebugConfig == null || !lookaheadAnimationVisualDebugConfig.isEnabled()) {
            contentDrawScope2 = contentDrawScope;
            DrawScope.m6804recordJVtK1S4$default(contentDrawScope2, layer, 0L, new AnonymousClass2(contentDrawScope, currentBounds, sharedElement), 1, null);
        } else {
            drawContentWithLookaheadAnimationDebug(contentDrawScope, layer, currentBounds, lookaheadAnimationVisualDebugConfig);
            contentDrawScope2 = contentDrawScope;
        }
        if (this.sharedElementEntry.getShouldRenderInPlace()) {
            GraphicsLayerKt.drawLayer(contentDrawScope2, layer);
        }
    }

    @Override // androidx.compose.animation.BoundsProvider
    public Rect getLastBoundsInSharedTransitionScope() {
        if (isAttached()) {
            return !this.isPlaced ? this.boundsBeforeDetached : RectKt.m6027Recttz77jQw(LayoutCoordinates.m7709localPositionOfS_NoaFU$default(getRootCoords(), getApproachCoordinates(), 0L, false, 6, null), IntSizeKt.m9225toSizeozmzZPI(getApproachCoordinates().mo7710getSizeYbymL2g()));
        }
        return null;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalModifierNode
    public ModifierLocalMap getProvidedValues() {
        return this.providedValues;
    }

    public final SharedElementEntry getSharedElementEntry() {
        return this.sharedElementEntry;
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode
    /* JADX INFO: renamed from: isMeasurementApproachInProgress-ozmzZPI */
    public boolean mo1079isMeasurementApproachInProgressozmzZPI(long j) {
        return this.sharedElementEntry.isEnabled() && getSharedElement().getFoundMatch() && getSharedElement().getScope().isTransitionActive();
    }

    @Override // androidx.compose.ui.layout.ApproachLayoutModifierNode, androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new SharedBoundsNode$measure$1(placeableMo7702measureBRTryo0, this), 4, null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        super.onAttach();
        ObserverModifierNodeKt.observeReads(this, getSharedElement().getObservingVisibilityChange$animation());
        setup();
        this.sharedElementEntry.setAttached(true);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        super.onDetach();
        LayoutCoordinates nullableRoot$animation = getSharedElement().getScope().getNullableRoot$animation();
        if (nullableRoot$animation != null) {
            this.boundsBeforeDetached = (nullableRoot$animation.isAttached() && this.isPlaced) ? RectKt.m6027Recttz77jQw(Offset.m5991minusMKHz9U(LayoutCoordinatesKt.positionInRoot(getApproachCoordinates()), LayoutCoordinatesKt.positionInRoot(nullableRoot$animation)), IntSizeKt.m9225toSizeozmzZPI(getApproachCoordinates().mo7710getSizeYbymL2g())) : null;
        }
        setLayer(null);
        this.sharedElementEntry.setParentState(null);
        this.sharedElementEntry.setBoundsProvider(null);
        this.sharedElementEntry.setAttached(false);
        this.isPlaced = false;
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() {
        getSharedElement().updateMatch$animation();
        ObserverModifierNodeKt.observeReads(this, getSharedElement().getObservingVisibilityChange$animation());
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onReset() {
        super.onReset();
        this.boundsBeforeDetached = null;
        GraphicsLayer graphicsLayer = this.layer;
        if (graphicsLayer != null) {
            DelegatableNodeKt.requireGraphicsContext(this).releaseGraphicsLayer(graphicsLayer);
        }
        setLayer(DelegatableNodeKt.requireGraphicsContext(this).createGraphicsLayer());
    }

    public final void setSharedElementEntry$animation(SharedElementEntry sharedElementEntry) {
        if (aa4.e(sharedElementEntry, this.sharedElementEntry)) {
            return;
        }
        this.sharedElementEntry.setAttached(false);
        this.sharedElementEntry = sharedElementEntry;
        sharedElementEntry.setAttached(isAttached());
        if (isAttached()) {
            setup();
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedBoundsNode$draw$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements nl3<DrawScope, j59> {
        final /* synthetic */ Rect $bounds;
        final /* synthetic */ SharedElement $sharedElement;
        final /* synthetic */ ContentDrawScope $this_draw;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(ContentDrawScope contentDrawScope, Rect rect, SharedElement sharedElement) {
            super(1);
            this.$this_draw = contentDrawScope;
            this.$bounds = rect;
            this.$sharedElement = sharedElement;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope) {
            invoke2(drawScope);
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(DrawScope drawScope) {
            this.$this_draw.drawContent();
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedBoundsNode$approachPlace$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<Placeable.PlacementScope, j59> {
        final /* synthetic */ Placeable $placeable;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Placeable placeable) {
            super(1);
            this.$placeable = placeable;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Placeable.PlacementScope placementScope) {
            SharedBoundsNode.this.isPlaced = true;
            SharedBoundsNode.this.boundsBeforeDetached = null;
            SharedTransitionStateMachine.State state$animation = SharedBoundsNode.this.getSharedElement().getState$animation();
            if (!SharedBoundsNode.this.getSharedElementEntry().isEnabled()) {
                Placeable.PlacementScope.place$default(placementScope, this.$placeable, 0, 0, 0.0f, 4, null);
                return;
            }
            if (!state$animation.getMatchIsOrHasBeenConfigured()) {
                Placeable.PlacementScope.place$default(placementScope, this.$placeable, 0, 0, 0.0f, 4, null);
                return;
            }
            TargetData targetData = state$animation.getTargetData();
            if (targetData == null) {
                eg.d(state$animation, "Match State is configured, but target data is null. State = ");
                return;
            }
            Rect currentBounds = state$animation.getCurrentBounds();
            if (currentBounds == null) {
                eg.d(state$animation, "Match State is configured, but current bounds is null. State = ");
                return;
            }
            boolean zIsTransitionActive = SharedBoundsNode.this.getSharedElement().getScope().isTransitionActive();
            SharedBoundsNode sharedBoundsNode = SharedBoundsNode.this;
            if (zIsTransitionActive) {
                sharedBoundsNode.approachPlaceMatchInTransition$animation(placementScope, this.$placeable, targetData, currentBounds);
            } else {
                sharedBoundsNode.approachPlaceMatchBeyondTransition(placementScope, this.$placeable, currentBounds);
            }
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(Placeable.PlacementScope placementScope) {
            invoke2(placementScope);
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.SharedBoundsNode$drawContentWithLookaheadAnimationDebug$1, reason: invalid class name and case insensitive filesystem */
    public static final class C04471 extends gh4 implements nl3<DrawScope, j59> {
        final /* synthetic */ Rect $bounds;
        final /* synthetic */ long $lookaheadAnimationVisualDebugColor;
        final /* synthetic */ float $strokeWeight;
        final /* synthetic */ TargetData $targetData;
        final /* synthetic */ ContentDrawScope $this_drawContentWithLookaheadAnimationDebug;
        final /* synthetic */ LookaheadAnimationVisualDebugConfig $visualDebugConfig;
        final /* synthetic */ SharedBoundsNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04471(ContentDrawScope contentDrawScope, SharedBoundsNode sharedBoundsNode, LookaheadAnimationVisualDebugConfig lookaheadAnimationVisualDebugConfig, float f, TargetData targetData, Rect rect, long j) {
            super(1);
            this.$this_drawContentWithLookaheadAnimationDebug = contentDrawScope;
            this.this$0 = sharedBoundsNode;
            this.$visualDebugConfig = lookaheadAnimationVisualDebugConfig;
            this.$strokeWeight = f;
            this.$targetData = targetData;
            this.$bounds = rect;
            this.$lookaheadAnimationVisualDebugColor = j;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(DrawScope drawScope) throws Throwable {
            ContentDrawScope contentDrawScope = this.$this_drawContentWithLookaheadAnimationDebug;
            contentDrawScope.drawContent();
            if (this.this$0.getSharedElementEntry().isEnabled()) {
                LookaheadAnimationVisualDebugHelper lookaheadAnimationVisualDebugHelper = this.this$0.lookaheadAnimationVisualDebugHelper;
                lookaheadAnimationVisualDebugHelper.getClass();
                SharedBoundsNode sharedBoundsNode = this.this$0;
                LookaheadAnimationVisualDebugConfig lookaheadAnimationVisualDebugConfig = this.$visualDebugConfig;
                float f = this.$strokeWeight;
                TargetData targetData = this.$targetData;
                Rect rect = this.$bounds;
                long j = this.$lookaheadAnimationVisualDebugColor;
                if (!sharedBoundsNode.getSharedElement().getScope().isTransitionActive()) {
                    lookaheadAnimationVisualDebugHelper.m1126drawInactiveVisualizations3IgeMak$animation(contentDrawScope, j, lookaheadAnimationVisualDebugConfig.isShowKeyLabelEnabled(), f, sharedBoundsNode.getSharedElement().getKey(), sharedBoundsNode.textMeasurer);
                    return;
                }
                if (!sharedBoundsNode.getSharedElement().getBoundsTransformIsActive()) {
                    long jM1121getUnmatchedElementColor0d7_KjU = lookaheadAnimationVisualDebugConfig.m1121getUnmatchedElementColor0d7_KjU();
                    boolean zIsShowKeyLabelEnabled = lookaheadAnimationVisualDebugConfig.isShowKeyLabelEnabled();
                    Object key = sharedBoundsNode.getSharedElement().getKey();
                    TextMeasurer textMeasurer = sharedBoundsNode.textMeasurer;
                    textMeasurer.getClass();
                    lookaheadAnimationVisualDebugHelper.m1130drawUnmatchedElement3IgeMak$animation(contentDrawScope, jM1121getUnmatchedElementColor0d7_KjU, zIsShowKeyLabelEnabled, key, textMeasurer, f);
                    return;
                }
                if (sharedBoundsNode.getSharedElement().getEnabledEntries().size() <= 2) {
                    if (targetData == null || rect == null) {
                        return;
                    }
                    lookaheadAnimationVisualDebugHelper.m1127drawLocalVisualizations0XenJco$animation(contentDrawScope, j, SharedTransitionStateMachineKt.getTargetBounds(targetData).m6022getTopLeftF1C5BW0(), targetData.m1173getSizeNHjbRc(), rect, drawScope.mo6805getCenterF1C5BW0(), lookaheadAnimationVisualDebugConfig.isShowKeyLabelEnabled(), f, sharedBoundsNode.getSharedElement().getKey(), sharedBoundsNode.textMeasurer);
                    return;
                }
                long jM1119getMultipleMatchesColor0d7_KjU = lookaheadAnimationVisualDebugConfig.m1119getMultipleMatchesColor0d7_KjU();
                boolean zIsShowKeyLabelEnabled2 = lookaheadAnimationVisualDebugConfig.isShowKeyLabelEnabled();
                Object key2 = sharedBoundsNode.getSharedElement().getKey();
                int size = sharedBoundsNode.getSharedElement().getEnabledEntries().size() - 1;
                TextMeasurer textMeasurer2 = sharedBoundsNode.textMeasurer;
                textMeasurer2.getClass();
                lookaheadAnimationVisualDebugHelper.m1128drawMultipleMatchesElementsW7UJKQ$animation(contentDrawScope, jM1119getMultipleMatchesColor0d7_KjU, zIsShowKeyLabelEnabled2, key2, size, textMeasurer2, f * 3.0f);
            }
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope) throws Throwable {
            invoke2(drawScope);
            return j59.a;
        }
    }
}
