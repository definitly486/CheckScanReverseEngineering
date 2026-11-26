package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LookaheadLayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.ag;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class LookaheadDelegate extends LookaheadCapablePlaceable implements Measurable {
    public static final int $stable = 0;
    private MeasureResult _measureResult;
    private final NodeCoordinator coordinator;
    private Map<AlignmentLine, Integer> oldAlignmentLines;
    private long position = IntOffset.Companion.m9181getZeronOccac();
    private final LookaheadLayoutCoordinates lookaheadLayoutCoordinates = new LookaheadLayoutCoordinates(this);
    private final MutableObjectIntMap<AlignmentLine> cachedAlignmentLinesMap = ObjectIntMapKt.mutableObjectIntMapOf();

    public LookaheadDelegate(NodeCoordinator nodeCoordinator) {
        this.coordinator = nodeCoordinator;
    }

    /* JADX INFO: renamed from: placeSelf--gyyYBs, reason: not valid java name */
    private final void m7953placeSelfgyyYBs(long j) {
        if (!IntOffset.m9169equalsimpl0(mo7947getPositionnOccac(), j)) {
            m7959setPositiongyyYBs(j);
            LookaheadPassDelegate lookaheadPassDelegate$ui = getLayoutNode().getLayoutDelegate$ui().getLookaheadPassDelegate$ui();
            if (lookaheadPassDelegate$ui != null) {
                lookaheadPassDelegate$ui.notifyChildrenUsingLookaheadCoordinatesWhilePlacing();
            }
            invalidateAlignmentLinesFromPositionChange(this.coordinator);
        }
        if (isPlacingForAlignment$ui()) {
            return;
        }
        captureRulersIfNeeded$ui(getMeasureResult$ui());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void set_measureResult(MeasureResult measureResult) {
        Map<AlignmentLine, Integer> map;
        if (measureResult != null) {
            m7766setMeasuredSizeozmzZPI(IntSize.m9208constructorimpl((((long) measureResult.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) measureResult.getWidth()) << 32)));
        } else {
            m7766setMeasuredSizeozmzZPI(IntSize.Companion.m9218getZeroYbymL2g());
        }
        if (!aa4.e(this._measureResult, measureResult) && measureResult != null && ((((map = this.oldAlignmentLines) != null && !map.isEmpty()) || !measureResult.getAlignmentLines().isEmpty()) && !aa4.e(measureResult.getAlignmentLines(), this.oldAlignmentLines))) {
            getAlignmentLinesOwner().getAlignmentLines().onAlignmentsChanged();
            Map linkedHashMap = this.oldAlignmentLines;
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
                this.oldAlignmentLines = linkedHashMap;
            }
            linkedHashMap.clear();
            linkedHashMap.putAll(measureResult.getAlignmentLines());
        }
        this._measureResult = measureResult;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public AlignmentLinesOwner getAlignmentLinesOwner() {
        AlignmentLinesOwner lookaheadAlignmentLinesOwner$ui = this.coordinator.getLayoutNode().getLayoutDelegate$ui().getLookaheadAlignmentLinesOwner$ui();
        lookaheadAlignmentLinesOwner$ui.getClass();
        return lookaheadAlignmentLinesOwner$ui;
    }

    public final int getCachedAlignmentLine$ui(AlignmentLine alignmentLine) {
        return this.cachedAlignmentLinesMap.getOrDefault(alignmentLine, Integer.MIN_VALUE);
    }

    public final MutableObjectIntMap<AlignmentLine> getCachedAlignmentLinesMap() {
        return this.cachedAlignmentLinesMap;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LookaheadCapablePlaceable getChild() {
        NodeCoordinator wrapped$ui = this.coordinator.getWrapped$ui();
        if (wrapped$ui != null) {
            return wrapped$ui.getLookaheadDelegate();
        }
        return null;
    }

    /* JADX INFO: renamed from: getConstraints-msEJaDk$ui, reason: not valid java name */
    public final long m7954getConstraintsmsEJaDk$ui() {
        return m7764getMeasurementConstraintsmsEJaDk();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LayoutCoordinates getCoordinates() {
        return this.lookaheadLayoutCoordinates;
    }

    public final NodeCoordinator getCoordinator() {
        return this.coordinator;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.coordinator.getDensity();
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public float getFontScale() {
        return this.coordinator.getFontScale();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public boolean getHasMeasureResult() {
        return this._measureResult != null;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public LayoutDirection getLayoutDirection() {
        return this.coordinator.getLayoutDirection();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.node.MeasureScopeWithLayoutNode
    public LayoutNode getLayoutNode() {
        return this.coordinator.getLayoutNode();
    }

    public final LookaheadLayoutCoordinates getLookaheadLayoutCoordinates() {
        return this.lookaheadLayoutCoordinates;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public MeasureResult getMeasureResult$ui() {
        MeasureResult measureResult = this._measureResult;
        if (measureResult != null) {
            return measureResult;
        }
        throw ag.e("LookaheadDelegate has not been measured yet when measureResult is requested.");
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LookaheadCapablePlaceable getParent() {
        NodeCoordinator wrappedBy$ui = this.coordinator.getWrappedBy$ui();
        if (wrappedBy$ui != null) {
            return wrappedBy$ui.getLookaheadDelegate();
        }
        return null;
    }

    @Override // androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.IntrinsicMeasurable
    public Object getParentData() {
        return this.coordinator.getParentData();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    /* JADX INFO: renamed from: getPosition-nOcc-ac */
    public long mo7947getPositionnOccac() {
        return this.position;
    }

    /* JADX INFO: renamed from: getSize-YbymL2g$ui, reason: not valid java name */
    public final long m7955getSizeYbymL2g$ui() {
        return IntSize.m9208constructorimpl((((long) getWidth()) << 32) | (((long) getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.layout.IntrinsicMeasureScope
    public boolean isLookingAhead() {
        return true;
    }

    public int maxIntrinsicHeight(int i) {
        NodeCoordinator wrapped$ui = this.coordinator.getWrapped$ui();
        wrapped$ui.getClass();
        LookaheadDelegate lookaheadDelegate = wrapped$ui.getLookaheadDelegate();
        lookaheadDelegate.getClass();
        return lookaheadDelegate.maxIntrinsicHeight(i);
    }

    public int maxIntrinsicWidth(int i) {
        NodeCoordinator wrapped$ui = this.coordinator.getWrapped$ui();
        wrapped$ui.getClass();
        LookaheadDelegate lookaheadDelegate = wrapped$ui.getLookaheadDelegate();
        lookaheadDelegate.getClass();
        return lookaheadDelegate.maxIntrinsicWidth(i);
    }

    public int minIntrinsicHeight(int i) {
        NodeCoordinator wrapped$ui = this.coordinator.getWrapped$ui();
        wrapped$ui.getClass();
        LookaheadDelegate lookaheadDelegate = wrapped$ui.getLookaheadDelegate();
        lookaheadDelegate.getClass();
        return lookaheadDelegate.minIntrinsicHeight(i);
    }

    public int minIntrinsicWidth(int i) {
        NodeCoordinator wrapped$ui = this.coordinator.getWrapped$ui();
        wrapped$ui.getClass();
        LookaheadDelegate lookaheadDelegate = wrapped$ui.getLookaheadDelegate();
        lookaheadDelegate.getClass();
        return lookaheadDelegate.minIntrinsicWidth(i);
    }

    /* JADX INFO: renamed from: performingMeasure-K40F9xA, reason: not valid java name */
    public final Placeable m7956performingMeasureK40F9xA(long j, ll3<? extends MeasureResult> ll3Var) {
        m7767setMeasurementConstraintsBRTryo0(j);
        set_measureResult(ll3Var.invoke());
        return this;
    }

    @Override // androidx.compose.ui.layout.Placeable
    /* JADX INFO: renamed from: placeAt-f8xVGno */
    public final void mo7703placeAtf8xVGno(long j, float f, nl3<? super GraphicsLayerScope, j59> nl3Var) {
        m7953placeSelfgyyYBs(j);
        if (isShallowPlacing$ui()) {
            return;
        }
        placeChildren();
    }

    public void placeChildren() {
        getMeasureResult$ui().placeChildren();
    }

    /* JADX INFO: renamed from: placeSelfApparentToRealOffset--gyyYBs$ui, reason: not valid java name */
    public final void m7957placeSelfApparentToRealOffsetgyyYBs$ui(long j) {
        m7953placeSelfgyyYBs(IntOffset.m9174plusqkQi6aY(j, m7762getApparentToRealOffsetnOccac()));
    }

    /* JADX INFO: renamed from: positionIn-iSbpLlY$ui, reason: not valid java name */
    public final long m7958positionIniSbpLlY$ui(LookaheadDelegate lookaheadDelegate, boolean z) {
        long jM9181getZeronOccac = IntOffset.Companion.m9181getZeronOccac();
        while (!this.equals(lookaheadDelegate)) {
            if (!this.isPlacedUnderMotionFrameOfReference() || !z) {
                jM9181getZeronOccac = IntOffset.m9174plusqkQi6aY(jM9181getZeronOccac, this.mo7947getPositionnOccac());
            }
            NodeCoordinator wrappedBy$ui = this.coordinator.getWrappedBy$ui();
            wrappedBy$ui.getClass();
            this = wrappedBy$ui.getLookaheadDelegate();
            this.getClass();
        }
        return jM9181getZeronOccac;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public void replace$ui() {
        mo7703placeAtf8xVGno(mo7947getPositionnOccac(), 0.0f, (nl3<? super GraphicsLayerScope, j59>) null);
    }

    /* JADX INFO: renamed from: setPosition--gyyYBs, reason: not valid java name */
    public void m7959setPositiongyyYBs(long j) {
        this.position = j;
    }
}
