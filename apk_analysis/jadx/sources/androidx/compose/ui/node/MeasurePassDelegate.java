package androidx.compose.ui.node;

import android.os.Trace;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.tooling.ComposeToolingFlags;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.ah;
import defpackage.h8;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.qz0;
import java.util.List;
import java.util.Map;
import kotlin.KotlinNothingValueException;

/* JADX INFO: loaded from: classes2.dex */
public final class MeasurePassDelegate extends Placeable implements Measurable, AlignmentLinesOwner, MotionReferencePlacementDelegate {
    public static final int $stable = 8;
    private final MutableVector<MeasurePassDelegate> _childDelegates;
    private final AlignmentLines alignmentLines;
    private boolean childDelegatesDirty;
    private boolean duringAlignmentLinesQuery;
    private boolean isPlaced;
    private boolean isPlacedByParent;
    private boolean isPlacedUnderMotionFrameOfReference;
    private GraphicsLayer lastExplicitLayer;
    private nl3<? super GraphicsLayerScope, j59> lastLayerBlock;
    private long lastPosition;
    private float lastZIndex;
    private boolean layingOutChildren;
    private final ll3<j59> layoutChildrenBlock;
    private final LayoutNodeLayoutDelegate layoutNodeLayoutDelegate;
    private boolean layoutPending;
    private boolean layoutPendingForAlignment;
    private boolean measurePending;
    private boolean measuredOnce;
    private boolean needsCoordinatesUpdate;
    private boolean onNodePlacedCalled;
    private Object parentData;
    private boolean parentDataDirty;
    private final ll3<j59> performMeasureBlock;
    private long performMeasureConstraints;
    private final ll3<j59> placeOuterCoordinatorBlock;
    private GraphicsLayer placeOuterCoordinatorLayer;
    private nl3<? super GraphicsLayerScope, j59> placeOuterCoordinatorLayerBlock;
    private long placeOuterCoordinatorPosition;
    private float placeOuterCoordinatorZIndex;
    private boolean placedOnce;
    private boolean relayoutWithoutParentInProgress;
    private float zIndex;
    private int previousPlaceOrder = Integer.MAX_VALUE;
    private int placeOrder = Integer.MAX_VALUE;
    private LayoutNode.UsageByParent measuredByParent = LayoutNode.UsageByParent.NotUsed;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[LayoutNode.LayoutState.values().length];
            try {
                iArr[LayoutNode.LayoutState.Measuring.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[LayoutNode.UsageByParent.values().length];
            try {
                iArr2[LayoutNode.UsageByParent.InMeasureBlock.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[LayoutNode.UsageByParent.InLayoutBlock.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public MeasurePassDelegate(LayoutNodeLayoutDelegate layoutNodeLayoutDelegate) {
        this.layoutNodeLayoutDelegate = layoutNodeLayoutDelegate;
        IntOffset.Companion companion = IntOffset.Companion;
        this.lastPosition = companion.m9181getZeronOccac();
        this.parentDataDirty = true;
        this.alignmentLines = new LayoutNodeAlignmentLines(this);
        this._childDelegates = new MutableVector<>(new MeasurePassDelegate[16], 0);
        this.childDelegatesDirty = true;
        this.performMeasureConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null);
        this.performMeasureBlock = new MeasurePassDelegate$performMeasureBlock$1(this);
        this.layoutChildrenBlock = new MeasurePassDelegate$layoutChildrenBlock$1(this);
        this.placeOuterCoordinatorPosition = companion.m9181getZeronOccac();
        this.placeOuterCoordinatorBlock = new MeasurePassDelegate$placeOuterCoordinatorBlock$1(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkChildrenPlaceOrderForUpdates() {
        LayoutNode layoutNode = getLayoutNode();
        MutableVector<LayoutNode> mutableVector = layoutNode.get_children$ui();
        LayoutNode[] layoutNodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            LayoutNode layoutNode2 = layoutNodeArr[i];
            if (layoutNode2.getMeasurePassDelegate$ui().previousPlaceOrder != layoutNode2.getPlaceOrder$ui()) {
                layoutNode.onZSortedChildrenInvalidated$ui();
                layoutNode.invalidateLayer$ui();
                if (layoutNode2.getPlaceOrder$ui() == Integer.MAX_VALUE) {
                    if (layoutNode2.getLayoutDelegate$ui().getDetachedFromParentLookaheadPlacement$ui() || LayoutNodeLayoutDelegateKt.isOutMostLookaheadRoot(layoutNode2)) {
                        LookaheadPassDelegate lookaheadPassDelegate$ui = layoutNode2.getLookaheadPassDelegate$ui();
                        lookaheadPassDelegate$ui.getClass();
                        lookaheadPassDelegate$ui.markNodeAndSubtreeAsNotPlaced$ui(false);
                    }
                    layoutNode2.getMeasurePassDelegate$ui().markSubtreeAsNotPlaced();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void clearPlaceOrder() {
        this.layoutNodeLayoutDelegate.setNextChildPlaceOrder$ui(0);
        MutableVector<LayoutNode> mutableVector = getLayoutNode().get_children$ui();
        LayoutNode[] layoutNodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            MeasurePassDelegate measurePassDelegate$ui = layoutNodeArr[i].getMeasurePassDelegate$ui();
            measurePassDelegate$ui.previousPlaceOrder = measurePassDelegate$ui.getPlaceOrder();
            measurePassDelegate$ui.placeOrder = Integer.MAX_VALUE;
            measurePassDelegate$ui.isPlacedByParent = false;
            if (measurePassDelegate$ui.measuredByParent == LayoutNode.UsageByParent.InLayoutBlock) {
                measurePassDelegate$ui.measuredByParent = LayoutNode.UsageByParent.NotUsed;
            }
        }
    }

    private final void forEachChildDelegate(nl3<? super MeasurePassDelegate, j59> nl3Var) {
        MutableVector<LayoutNode> mutableVector = getLayoutNode().get_children$ui();
        LayoutNode[] layoutNodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            nl3Var.invoke(layoutNodeArr[i].getMeasurePassDelegate$ui());
        }
    }

    private final LookaheadPassDelegate getLookaheadPassDelegate() {
        return this.layoutNodeLayoutDelegate.getLookaheadPassDelegate$ui();
    }

    private final void markNodeAndSubtreeAsPlaced() {
        boolean z = this.isPlaced;
        this.isPlaced = true;
        LayoutNode layoutNode = getLayoutNode();
        if (!z) {
            layoutNode.getInnerCoordinator$ui().onPlaced();
            LayoutNodeKt.requireOwner(layoutNode).getRectManager().recalculateRectIfDirty(getLayoutNode());
            if (layoutNode.getMeasurePending$ui()) {
                LayoutNode.requestRemeasure$ui$default(layoutNode, true, false, false, 6, null);
            } else if (layoutNode.getLookaheadMeasurePending$ui()) {
                LayoutNode.requestLookaheadRemeasure$ui$default(layoutNode, true, false, false, 6, null);
            }
        }
        NodeCoordinator wrapped$ui = layoutNode.getInnerCoordinator$ui().getWrapped$ui();
        for (NodeCoordinator outerCoordinator$ui = layoutNode.getOuterCoordinator$ui(); !aa4.e(outerCoordinator$ui, wrapped$ui) && outerCoordinator$ui != null; outerCoordinator$ui = outerCoordinator$ui.getWrapped$ui()) {
            if (outerCoordinator$ui.getLastLayerDrawingWasSkipped$ui()) {
                outerCoordinator$ui.invalidateLayer();
            }
        }
        MutableVector<LayoutNode> mutableVector = layoutNode.get_children$ui();
        LayoutNode[] layoutNodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            LayoutNode layoutNode2 = layoutNodeArr[i];
            if (layoutNode2.getPlaceOrder$ui() != Integer.MAX_VALUE) {
                layoutNode2.getMeasurePassDelegate$ui().markNodeAndSubtreeAsPlaced();
                layoutNode.rescheduleRemeasureOrRelayout$ui(layoutNode2);
            }
        }
    }

    private final void markSubtreeAsNotPlaced() {
        if (this.isPlaced) {
            this.isPlaced = false;
            LayoutNodeKt.requireOwner(getLayoutNode()).getRectManager().remove(getLayoutNode());
            LayoutNode layoutNode = getLayoutNode();
            NodeCoordinator wrapped$ui = layoutNode.getInnerCoordinator$ui().getWrapped$ui();
            for (NodeCoordinator outerCoordinator$ui = layoutNode.getOuterCoordinator$ui(); !aa4.e(outerCoordinator$ui, wrapped$ui) && outerCoordinator$ui != null; outerCoordinator$ui = outerCoordinator$ui.getWrapped$ui()) {
                outerCoordinator$ui.onUnplaced();
                outerCoordinator$ui.releaseLayer();
            }
            MutableVector<LayoutNode> mutableVector = getLayoutNode().get_children$ui();
            LayoutNode[] layoutNodeArr = mutableVector.content;
            int size = mutableVector.getSize();
            for (int i = 0; i < size; i++) {
                layoutNodeArr[i].getMeasurePassDelegate$ui().markSubtreeAsNotPlaced();
            }
        }
    }

    private final void onBeforeLayoutChildren() {
        MutableVector<LayoutNode> mutableVector = getLayoutNode().get_children$ui();
        LayoutNode[] layoutNodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            LayoutNode layoutNode = layoutNodeArr[i];
            if (layoutNode.getMeasurePending$ui() && layoutNode.getMeasuredByParent$ui() == LayoutNode.UsageByParent.InMeasureBlock && LayoutNode.m7927remeasure_Sx5XlM$ui$default(layoutNode, null, 1, null)) {
                LayoutNode.requestRemeasure$ui$default(getLayoutNode(), false, false, false, 7, null);
            }
        }
    }

    private final void onIntrinsicsQueried() {
        LayoutNode.UsageByParent intrinsicsUsageByParent$ui;
        LayoutNode.requestRemeasure$ui$default(getLayoutNode(), false, false, false, 7, null);
        LayoutNode parent$ui = getLayoutNode().getParent$ui();
        if (parent$ui == null || getLayoutNode().getIntrinsicsUsageByParent$ui() != LayoutNode.UsageByParent.NotUsed) {
            return;
        }
        LayoutNode layoutNode = getLayoutNode();
        int i = WhenMappings.$EnumSwitchMapping$0[parent$ui.getLayoutState$ui().ordinal()];
        if (i != 1) {
            intrinsicsUsageByParent$ui = i != 2 ? parent$ui.getIntrinsicsUsageByParent$ui() : LayoutNode.UsageByParent.InLayoutBlock;
        } else {
            intrinsicsUsageByParent$ui = LayoutNode.UsageByParent.InMeasureBlock;
        }
        layoutNode.setIntrinsicsUsageByParent$ui(intrinsicsUsageByParent$ui);
    }

    /* JADX INFO: renamed from: placeOuterCoordinator-MLgxB_4, reason: not valid java name */
    private final void m7969placeOuterCoordinatorMLgxB_4(long j, float f, nl3<? super GraphicsLayerScope, j59> nl3Var, GraphicsLayer graphicsLayer) {
        if (getLayoutNode().isDeactivated()) {
            InlineClassHelperKt.throwIllegalArgumentException("place is called on a deactivated node");
        }
        setLayoutState(LayoutNode.LayoutState.LayingOut);
        this.lastPosition = j;
        this.lastZIndex = f;
        this.lastLayerBlock = nl3Var;
        this.lastExplicitLayer = graphicsLayer;
        this.onNodePlacedCalled = false;
        Owner ownerRequireOwner = LayoutNodeKt.requireOwner(getLayoutNode());
        if (this.layoutPending || !this.isPlaced) {
            getAlignmentLines().setUsedByModifierLayout$ui(false);
            this.layoutNodeLayoutDelegate.setCoordinatesAccessedDuringModifierPlacement(false);
            this.placeOuterCoordinatorLayerBlock = nl3Var;
            this.placeOuterCoordinatorPosition = j;
            this.placeOuterCoordinatorZIndex = f;
            this.placeOuterCoordinatorLayer = graphicsLayer;
            OwnerSnapshotObserver snapshotObserver = ownerRequireOwner.getSnapshotObserver();
            LayoutNode layoutNode = getLayoutNode();
            ll3<j59> ll3Var = this.placeOuterCoordinatorBlock;
            snapshotObserver.observer.observeReads(layoutNode, snapshotObserver.onCommitAffectingLayoutModifier, ll3Var);
        } else {
            getOuterCoordinator().m8009placeSelfApparentToRealOffsetMLgxB_4(j, f, nl3Var, graphicsLayer);
            onNodePlaced$ui();
        }
        setLayoutState(LayoutNode.LayoutState.Idle);
        if (getOuterCoordinator().isPlacingForAlignment$ui() && (this.layoutNodeLayoutDelegate.getCoordinatesAccessedDuringModifierPlacement() || this.layoutNodeLayoutDelegate.getCoordinatesAccessedDuringPlacement())) {
            requestLayout();
        }
        this.placedOnce = true;
    }

    /* JADX INFO: renamed from: placeSelf-MLgxB_4, reason: not valid java name */
    private final void m7970placeSelfMLgxB_4(long j, float f, nl3<? super GraphicsLayerScope, j59> nl3Var, GraphicsLayer graphicsLayer) throws Throwable {
        Placeable.PlacementScope placementScope;
        LayoutNode layoutNode = getLayoutNode();
        boolean z = true;
        try {
            this.isPlacedByParent = true;
            if (!IntOffset.m9169equalsimpl0(j, this.lastPosition) || nl3Var != this.lastLayerBlock || this.needsCoordinatesUpdate) {
                if (this.layoutNodeLayoutDelegate.getCoordinatesAccessedDuringModifierPlacement() || this.layoutNodeLayoutDelegate.getCoordinatesAccessedDuringPlacement() || this.needsCoordinatesUpdate) {
                    this.layoutPending = true;
                    this.needsCoordinatesUpdate = false;
                }
            }
            LookaheadPassDelegate lookaheadPassDelegate = getLookaheadPassDelegate();
            if (lookaheadPassDelegate != null) {
                lookaheadPassDelegate.onApproachPlacement$ui();
            }
            LookaheadPassDelegate lookaheadPassDelegate2 = getLookaheadPassDelegate();
            if (lookaheadPassDelegate2 != null && lookaheadPassDelegate2.getNeedsToBePlacedInApproach()) {
                NodeCoordinator wrappedBy$ui = getOuterCoordinator().getWrappedBy$ui();
                if (wrappedBy$ui == null || (placementScope = wrappedBy$ui.getPlacementScope()) == null) {
                    placementScope = LayoutNodeKt.requireOwner(getLayoutNode()).getPlacementScope();
                }
                Placeable.PlacementScope placementScope2 = placementScope;
                LookaheadPassDelegate lookaheadPassDelegate3 = getLookaheadPassDelegate();
                lookaheadPassDelegate3.getClass();
                LayoutNode parent$ui = getLayoutNode().getParent$ui();
                if (parent$ui != null) {
                    parent$ui.getLayoutDelegate$ui().setNextChildLookaheadPlaceOrder$ui(0);
                }
                lookaheadPassDelegate3.setPlaceOrder$ui(Integer.MAX_VALUE);
                Placeable.PlacementScope.place$default(placementScope2, lookaheadPassDelegate3, IntOffset.m9170getXimpl(j), IntOffset.m9171getYimpl(j), 0.0f, 4, null);
            }
            LookaheadPassDelegate lookaheadPassDelegate4 = getLookaheadPassDelegate();
            if (lookaheadPassDelegate4 == null || lookaheadPassDelegate4.getPlacedOnce$ui()) {
                z = false;
            }
            if (z) {
                InlineClassHelperKt.throwIllegalStateException("Error: Placement happened before lookahead.");
            }
            m7969placeOuterCoordinatorMLgxB_4(j, f, nl3Var, graphicsLayer);
            j59 j59Var = j59.a;
        } catch (Throwable th) {
            layoutNode.rethrowWithComposeStackTrace(th);
            h8.d();
        }
    }

    private final void trackMeasurementByParent(LayoutNode layoutNode) {
        LayoutNode.UsageByParent usageByParent;
        LayoutNode parent$ui = layoutNode.getParent$ui();
        if (parent$ui == null) {
            this.measuredByParent = LayoutNode.UsageByParent.NotUsed;
            return;
        }
        if (!(this.measuredByParent == LayoutNode.UsageByParent.NotUsed || layoutNode.getCanMultiMeasure$ui())) {
            InlineClassHelperKt.throwIllegalStateException(LayoutNodeLayoutDelegateKt.MeasuredTwiceErrorMessage);
        }
        int i = WhenMappings.$EnumSwitchMapping$0[parent$ui.getLayoutState$ui().ordinal()];
        if (i == 1) {
            usageByParent = LayoutNode.UsageByParent.InMeasureBlock;
        } else {
            if (i != 2) {
                qz0.g(parent$ui.getLayoutState$ui(), "Measurable could be only measured from the parent's measure or layout block. Parents state is ");
                return;
            }
            usageByParent = LayoutNode.UsageByParent.InLayoutBlock;
        }
        this.measuredByParent = usageByParent;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public Map<AlignmentLine, Integer> calculateAlignmentLines() {
        if (!this.duringAlignmentLinesQuery) {
            if (getLayoutState() == LayoutNode.LayoutState.Measuring) {
                getAlignmentLines().setUsedByModifierMeasurement$ui(true);
                if (getAlignmentLines().getDirty$ui()) {
                    markLayoutPending();
                }
            } else {
                getAlignmentLines().setUsedByModifierLayout$ui(true);
            }
        }
        NodeCoordinator innerCoordinator = getInnerCoordinator();
        boolean zIsPlacingForAlignment$ui = innerCoordinator.isPlacingForAlignment$ui();
        innerCoordinator.setPlacingForAlignment$ui(true);
        layoutChildren();
        innerCoordinator.setPlacingForAlignment$ui(zIsPlacingForAlignment$ui);
        return getAlignmentLines().getLastCalculation();
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public void forEachChildAlignmentLinesOwner(nl3<? super AlignmentLinesOwner, j59> nl3Var) {
        MutableVector<LayoutNode> mutableVector = getLayoutNode().get_children$ui();
        LayoutNode[] layoutNodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            nl3Var.invoke(layoutNodeArr[i].getLayoutDelegate$ui().getAlignmentLinesOwner$ui());
        }
    }

    @Override // androidx.compose.ui.layout.Measured
    public int get(AlignmentLine alignmentLine) {
        LayoutNode parent$ui = getLayoutNode().getParent$ui();
        if ((parent$ui != null ? parent$ui.getLayoutState$ui() : null) == LayoutNode.LayoutState.Measuring) {
            getAlignmentLines().setUsedDuringParentMeasurement$ui(true);
        } else {
            LayoutNode parent$ui2 = getLayoutNode().getParent$ui();
            if ((parent$ui2 != null ? parent$ui2.getLayoutState$ui() : null) == LayoutNode.LayoutState.LayingOut) {
                getAlignmentLines().setUsedDuringParentLayout$ui(true);
            }
        }
        this.duringAlignmentLinesQuery = true;
        int i = getOuterCoordinator().get(alignmentLine);
        this.duringAlignmentLinesQuery = false;
        return i;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public AlignmentLines getAlignmentLines() {
        return this.alignmentLines;
    }

    public final List<MeasurePassDelegate> getChildDelegates$ui() {
        getLayoutNode().updateChildrenIfDirty$ui();
        if (!this.childDelegatesDirty) {
            return this._childDelegates.asMutableList();
        }
        LayoutNode layoutNode = getLayoutNode();
        MutableVector<MeasurePassDelegate> mutableVector = this._childDelegates;
        MutableVector<LayoutNode> mutableVector2 = layoutNode.get_children$ui();
        LayoutNode[] layoutNodeArr = mutableVector2.content;
        int size = mutableVector2.getSize();
        for (int i = 0; i < size; i++) {
            LayoutNode layoutNode2 = layoutNodeArr[i];
            if (mutableVector.getSize() <= i) {
                mutableVector.add(layoutNode2.getLayoutDelegate$ui().getMeasurePassDelegate$ui());
            } else {
                mutableVector.set(i, layoutNode2.getLayoutDelegate$ui().getMeasurePassDelegate$ui());
            }
        }
        mutableVector.removeRange(layoutNode.getChildren$ui().size(), mutableVector.getSize());
        this.childDelegatesDirty = false;
        return this._childDelegates.asMutableList();
    }

    public final boolean getChildDelegatesDirty$ui() {
        return this.childDelegatesDirty;
    }

    public final boolean getDuringAlignmentLinesQuery$ui() {
        return this.duringAlignmentLinesQuery;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public NodeCoordinator getInnerCoordinator() {
        return getLayoutNode().getInnerCoordinator$ui();
    }

    /* JADX INFO: renamed from: getLastConstraints-DWUhwKw, reason: not valid java name */
    public final Constraints m7971getLastConstraintsDWUhwKw() {
        if (this.measuredOnce) {
            return Constraints.m8982boximpl(m7764getMeasurementConstraintsmsEJaDk());
        }
        return null;
    }

    /* JADX INFO: renamed from: getLastPosition-nOcc-ac$ui, reason: not valid java name */
    public final long m7972getLastPositionnOccac$ui() {
        return this.lastPosition;
    }

    public final boolean getLayingOutChildren() {
        return this.layingOutChildren;
    }

    public final LayoutNode getLayoutNode() {
        return this.layoutNodeLayoutDelegate.getLayoutNode$ui();
    }

    public final boolean getLayoutPending$ui() {
        return this.layoutPending;
    }

    public final LayoutNode.LayoutState getLayoutState() {
        return this.layoutNodeLayoutDelegate.getLayoutState$ui();
    }

    public final boolean getMeasurePending$ui() {
        return this.measurePending;
    }

    public final LayoutNode.UsageByParent getMeasuredByParent$ui() {
        return this.measuredByParent;
    }

    @Override // androidx.compose.ui.layout.Placeable, androidx.compose.ui.layout.Measured
    public int getMeasuredHeight() {
        return getOuterCoordinator().getMeasuredHeight();
    }

    @Override // androidx.compose.ui.layout.Placeable, androidx.compose.ui.layout.Measured
    public int getMeasuredWidth() {
        return getOuterCoordinator().getMeasuredWidth();
    }

    public final NodeCoordinator getOuterCoordinator() {
        return this.layoutNodeLayoutDelegate.getOuterCoordinator();
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public AlignmentLinesOwner getParentAlignmentLinesOwner() {
        LayoutNodeLayoutDelegate layoutDelegate$ui;
        LayoutNode parent$ui = getLayoutNode().getParent$ui();
        if (parent$ui == null || (layoutDelegate$ui = parent$ui.getLayoutDelegate$ui()) == null) {
            return null;
        }
        return layoutDelegate$ui.getAlignmentLinesOwner$ui();
    }

    @Override // androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.IntrinsicMeasurable
    public Object getParentData() {
        return this.parentData;
    }

    public final ll3<j59> getPerformMeasureBlock$ui() {
        return this.performMeasureBlock;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public int getPlaceOrder() {
        return this.placeOrder;
    }

    public final boolean getPlacedOnce() {
        return this.placedOnce;
    }

    public final int getPreviousPlaceOrder$ui() {
        return this.previousPlaceOrder;
    }

    public final float getZIndex$ui() {
        return this.zIndex;
    }

    public final void invalidateIntrinsicsParent(boolean z) {
        LayoutNode layoutNode;
        LayoutNode parent$ui = getLayoutNode().getParent$ui();
        LayoutNode.UsageByParent intrinsicsUsageByParent$ui = getLayoutNode().getIntrinsicsUsageByParent$ui();
        if (parent$ui == null || intrinsicsUsageByParent$ui == LayoutNode.UsageByParent.NotUsed) {
            return;
        }
        do {
            layoutNode = parent$ui;
            if (layoutNode.getIntrinsicsUsageByParent$ui() != intrinsicsUsageByParent$ui) {
                break;
            } else {
                parent$ui = layoutNode.getParent$ui();
            }
        } while (parent$ui != null);
        int i = WhenMappings.$EnumSwitchMapping$1[intrinsicsUsageByParent$ui.ordinal()];
        if (i == 1) {
            LayoutNode.requestRemeasure$ui$default(layoutNode, z, false, false, 6, null);
        } else if (i == 2) {
            layoutNode.requestRelayout$ui(z);
        } else {
            ah.f("Intrinsics isn't used by the parent");
        }
    }

    public final void invalidateParentData() {
        this.parentDataDirty = true;
    }

    public final boolean isPlaced$ui() {
        return this.isPlaced;
    }

    public final boolean isPlacedByParent() {
        return this.isPlacedByParent;
    }

    @Override // androidx.compose.ui.node.MotionReferencePlacementDelegate
    public boolean isPlacedUnderMotionFrameOfReference() {
        return this.isPlacedUnderMotionFrameOfReference;
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public void layoutChildren() {
        this.layingOutChildren = true;
        getAlignmentLines().recalculateQueryOwner();
        if (this.layoutPending) {
            onBeforeLayoutChildren();
        }
        if (this.layoutPendingForAlignment || (!this.duringAlignmentLinesQuery && !getInnerCoordinator().isPlacingForAlignment$ui() && this.layoutPending)) {
            this.layoutPending = false;
            LayoutNode.LayoutState layoutState = getLayoutState();
            setLayoutState(LayoutNode.LayoutState.LayingOut);
            this.layoutNodeLayoutDelegate.setCoordinatesAccessedDuringPlacement(false);
            LayoutNode layoutNode = getLayoutNode();
            OwnerSnapshotObserver snapshotObserver = LayoutNodeKt.requireOwner(layoutNode).getSnapshotObserver();
            ll3<j59> ll3Var = this.layoutChildrenBlock;
            snapshotObserver.observer.observeReads(layoutNode, snapshotObserver.onCommitAffectingLayout, ll3Var);
            setLayoutState(layoutState);
            this.layoutPendingForAlignment = false;
        }
        if (getAlignmentLines().getUsedDuringParentLayout$ui()) {
            getAlignmentLines().setPreviousUsedDuringParentLayout$ui(true);
        }
        if (getAlignmentLines().getDirty$ui() && getAlignmentLines().getRequired$ui()) {
            getAlignmentLines().recalculate();
        }
        this.layingOutChildren = false;
    }

    public final void markDetachedFromParentLookaheadPass$ui() {
        this.layoutNodeLayoutDelegate.setDetachedFromParentLookaheadPass$ui(true);
    }

    public final void markLayoutPending() {
        this.layoutPending = true;
        this.layoutPendingForAlignment = true;
    }

    public final void markMeasurePending$ui() {
        this.measurePending = true;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicHeight(int i) {
        if (!LayoutNodeLayoutDelegateKt.isOutMostLookaheadRoot(getLayoutNode())) {
            onIntrinsicsQueried();
            return getOuterCoordinator().maxIntrinsicHeight(i);
        }
        LookaheadPassDelegate lookaheadPassDelegate = getLookaheadPassDelegate();
        lookaheadPassDelegate.getClass();
        return lookaheadPassDelegate.maxIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicWidth(int i) {
        if (!LayoutNodeLayoutDelegateKt.isOutMostLookaheadRoot(getLayoutNode())) {
            onIntrinsicsQueried();
            return getOuterCoordinator().maxIntrinsicWidth(i);
        }
        LookaheadPassDelegate lookaheadPassDelegate = getLookaheadPassDelegate();
        lookaheadPassDelegate.getClass();
        return lookaheadPassDelegate.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    /* JADX INFO: renamed from: measure-BRTryo0 */
    public Placeable mo7702measureBRTryo0(long j) throws Throwable {
        LayoutNode.UsageByParent intrinsicsUsageByParent$ui = getLayoutNode().getIntrinsicsUsageByParent$ui();
        LayoutNode.UsageByParent usageByParent = LayoutNode.UsageByParent.NotUsed;
        if (intrinsicsUsageByParent$ui == usageByParent) {
            getLayoutNode().clearSubtreeIntrinsicsUsage$ui();
        }
        if (LayoutNodeLayoutDelegateKt.isOutMostLookaheadRoot(getLayoutNode())) {
            LookaheadPassDelegate lookaheadPassDelegate = getLookaheadPassDelegate();
            lookaheadPassDelegate.getClass();
            lookaheadPassDelegate.setMeasuredByParent$ui(usageByParent);
            if (ComposeToolingFlags.isVerboseTracingEnabled) {
                Trace.beginSection("Compose:lookaheadMeasure");
                try {
                    lookaheadPassDelegate.mo7702measureBRTryo0(j);
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            } else {
                lookaheadPassDelegate.mo7702measureBRTryo0(j);
            }
        }
        trackMeasurementByParent(getLayoutNode());
        m7974remeasureBRTryo0(j);
        return this;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicHeight(int i) {
        if (!LayoutNodeLayoutDelegateKt.isOutMostLookaheadRoot(getLayoutNode())) {
            onIntrinsicsQueried();
            return getOuterCoordinator().minIntrinsicHeight(i);
        }
        LookaheadPassDelegate lookaheadPassDelegate = getLookaheadPassDelegate();
        lookaheadPassDelegate.getClass();
        return lookaheadPassDelegate.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicWidth(int i) {
        if (!LayoutNodeLayoutDelegateKt.isOutMostLookaheadRoot(getLayoutNode())) {
            onIntrinsicsQueried();
            return getOuterCoordinator().minIntrinsicWidth(i);
        }
        LookaheadPassDelegate lookaheadPassDelegate = getLookaheadPassDelegate();
        lookaheadPassDelegate.getClass();
        return lookaheadPassDelegate.minIntrinsicWidth(i);
    }

    public final void onNodeDetached() {
        this.placeOrder = Integer.MAX_VALUE;
        this.previousPlaceOrder = Integer.MAX_VALUE;
        this.isPlaced = false;
    }

    public final void onNodePlaced$ui() {
        this.onNodePlacedCalled = true;
        LayoutNode parent$ui = getLayoutNode().getParent$ui();
        float zIndex = getInnerCoordinator().getZIndex();
        LayoutNode layoutNode = getLayoutNode();
        NodeCoordinator outerCoordinator$ui = layoutNode.getOuterCoordinator$ui();
        NodeCoordinator innerCoordinator$ui = layoutNode.getInnerCoordinator$ui();
        while (outerCoordinator$ui != innerCoordinator$ui) {
            outerCoordinator$ui.getClass();
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = (LayoutModifierNodeCoordinator) outerCoordinator$ui;
            zIndex += layoutModifierNodeCoordinator.getZIndex();
            outerCoordinator$ui = layoutModifierNodeCoordinator.getWrapped$ui();
        }
        if (zIndex != this.zIndex) {
            this.zIndex = zIndex;
            if (parent$ui != null) {
                parent$ui.onZSortedChildrenInvalidated$ui();
            }
            if (parent$ui != null) {
                parent$ui.invalidateLayer$ui();
            }
        }
        if (!getInnerCoordinator().isPlacingForAlignment$ui()) {
            boolean z = this.isPlaced;
            if (!z || getAlignmentLines().getQueried$ui()) {
                markNodeAndSubtreeAsPlaced();
            }
            if (z) {
                getLayoutNode().getInnerCoordinator$ui().onPlaced();
            } else {
                if (parent$ui != null) {
                    parent$ui.invalidateLayer$ui();
                }
                if (this.relayoutWithoutParentInProgress && parent$ui != null) {
                    LayoutNode.requestRelayout$ui$default(parent$ui, false, 1, null);
                }
            }
        }
        if (parent$ui == null) {
            this.placeOrder = 0;
        } else if (!this.relayoutWithoutParentInProgress && parent$ui.getLayoutState$ui() == LayoutNode.LayoutState.LayingOut) {
            if (!(getPlaceOrder() == Integer.MAX_VALUE)) {
                InlineClassHelperKt.throwIllegalStateException("Place was called on a node which was placed already");
            }
            this.placeOrder = parent$ui.getLayoutDelegate$ui().getNextChildPlaceOrder$ui();
            LayoutNodeLayoutDelegate layoutDelegate$ui = parent$ui.getLayoutDelegate$ui();
            layoutDelegate$ui.setNextChildPlaceOrder$ui(layoutDelegate$ui.getNextChildPlaceOrder$ui() + 1);
        }
        layoutChildren();
    }

    /* JADX INFO: renamed from: performMeasure-BRTryo0$ui, reason: not valid java name */
    public final void m7973performMeasureBRTryo0$ui(long j) {
        LayoutNode.LayoutState layoutState = getLayoutState();
        LayoutNode.LayoutState layoutState2 = LayoutNode.LayoutState.Idle;
        if (!(layoutState == layoutState2)) {
            InlineClassHelperKt.throwIllegalStateException("layout state is not idle before measure starts");
        }
        this.performMeasureConstraints = j;
        LayoutNode.LayoutState layoutState3 = LayoutNode.LayoutState.Measuring;
        setLayoutState(layoutState3);
        this.measurePending = false;
        OwnerSnapshotObserver snapshotObserver = LayoutNodeKt.requireOwner(getLayoutNode()).getSnapshotObserver();
        snapshotObserver.observer.observeReads(getLayoutNode(), snapshotObserver.onCommitAffectingMeasure, getPerformMeasureBlock$ui());
        if (getLayoutState() == layoutState3) {
            markLayoutPending();
            setLayoutState(layoutState2);
        }
    }

    @Override // androidx.compose.ui.layout.Placeable
    /* JADX INFO: renamed from: placeAt-f8xVGno */
    public void mo7703placeAtf8xVGno(long j, float f, nl3<? super GraphicsLayerScope, j59> nl3Var) throws Throwable {
        m7970placeSelfMLgxB_4(j, f, nl3Var, null);
    }

    /* JADX INFO: renamed from: remeasure-BRTryo0, reason: not valid java name */
    public final boolean m7974remeasureBRTryo0(long j) throws Throwable {
        LayoutNode layoutNode = getLayoutNode();
        try {
            if (getLayoutNode().isDeactivated()) {
                InlineClassHelperKt.throwIllegalArgumentException("measure is called on a deactivated node");
            }
            Owner ownerRequireOwner = LayoutNodeKt.requireOwner(getLayoutNode());
            LayoutNode parent$ui = getLayoutNode().getParent$ui();
            boolean z = true;
            getLayoutNode().setCanMultiMeasure$ui(getLayoutNode().getCanMultiMeasure$ui() || (parent$ui != null && parent$ui.getCanMultiMeasure$ui()));
            if (!getLayoutNode().getMeasurePending$ui() && Constraints.m8988equalsimpl0(m7764getMeasurementConstraintsmsEJaDk(), j)) {
                Owner.forceMeasureTheSubtree$default(ownerRequireOwner, getLayoutNode(), false, 2, null);
                getLayoutNode().resetSubtreeIntrinsicsUsage$ui();
                return false;
            }
            getAlignmentLines().setUsedByModifierMeasurement$ui(false);
            forEachChildAlignmentLinesOwner(MeasurePassDelegate$remeasure$1$2.INSTANCE);
            this.measuredOnce = true;
            long jMo7710getSizeYbymL2g = getOuterCoordinator().mo7710getSizeYbymL2g();
            m7767setMeasurementConstraintsBRTryo0(j);
            LayoutNode.LayoutState layoutState = getLayoutState();
            LayoutNode.LayoutState layoutState2 = LayoutNode.LayoutState.Idle;
            if (!(layoutState == layoutState2)) {
                InlineClassHelperKt.throwIllegalStateException("layout state is not idle before measure starts");
            }
            this.performMeasureConstraints = j;
            LayoutNode.LayoutState layoutState3 = LayoutNode.LayoutState.Measuring;
            setLayoutState(layoutState3);
            this.measurePending = false;
            OwnerSnapshotObserver snapshotObserver = LayoutNodeKt.requireOwner(getLayoutNode()).getSnapshotObserver();
            snapshotObserver.observer.observeReads(getLayoutNode(), snapshotObserver.onCommitAffectingMeasure, getPerformMeasureBlock$ui());
            if (getLayoutState() == layoutState3) {
                markLayoutPending();
                setLayoutState(layoutState2);
            }
            if (IntSize.m9211equalsimpl0(getOuterCoordinator().mo7710getSizeYbymL2g(), jMo7710getSizeYbymL2g) && getOuterCoordinator().getWidth() == getWidth() && getOuterCoordinator().getHeight() == getHeight()) {
                z = false;
            }
            m7766setMeasuredSizeozmzZPI(IntSize.m9208constructorimpl((((long) getOuterCoordinator().getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) getOuterCoordinator().getWidth()) << 32)));
            return z;
        } catch (Throwable th) {
            layoutNode.rethrowWithComposeStackTrace(th);
            h8.d();
            return false;
        }
    }

    public final void replace() {
        MeasurePassDelegate measurePassDelegate;
        LayoutNode parent$ui;
        try {
            this.relayoutWithoutParentInProgress = true;
            if (!this.placedOnce) {
                InlineClassHelperKt.throwIllegalStateException("replace called on unplaced item");
            }
            boolean z = this.isPlaced;
            measurePassDelegate = this;
            try {
                measurePassDelegate.m7969placeOuterCoordinatorMLgxB_4(this.lastPosition, this.lastZIndex, this.lastLayerBlock, this.lastExplicitLayer);
                if (z && !measurePassDelegate.onNodePlacedCalled && (parent$ui = measurePassDelegate.getLayoutNode().getParent$ui()) != null) {
                    LayoutNode.requestRelayout$ui$default(parent$ui, false, 1, null);
                }
                measurePassDelegate.relayoutWithoutParentInProgress = false;
            } catch (Throwable th) {
                th = th;
                try {
                    measurePassDelegate.getLayoutNode().rethrowWithComposeStackTrace(th);
                    throw new KotlinNothingValueException();
                } catch (Throwable th2) {
                    measurePassDelegate.relayoutWithoutParentInProgress = false;
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            measurePassDelegate = this;
        }
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public void requestLayout() {
        LayoutNode.requestRelayout$ui$default(getLayoutNode(), false, 1, null);
    }

    public final void requestLayoutIfCoordinatesAreUsedAndNotifyChildren() {
        if (!getLayoutNode().isPlaced() || this.layoutNodeLayoutDelegate.getChildrenAccessingCoordinatesDuringPlacement() <= 0) {
            return;
        }
        LayoutNodeLayoutDelegate layoutDelegate$ui = getLayoutNode().getLayoutDelegate$ui();
        if ((layoutDelegate$ui.getCoordinatesAccessedDuringPlacement() || layoutDelegate$ui.getCoordinatesAccessedDuringModifierPlacement()) && !layoutDelegate$ui.getLayoutPending$ui()) {
            LayoutNode.requestRelayout$ui$default(getLayoutNode(), false, 1, null);
        }
        MutableVector<LayoutNode> mutableVector = getLayoutNode().get_children$ui();
        LayoutNode[] layoutNodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            layoutNodeArr[i].getMeasurePassDelegate$ui().requestLayoutIfCoordinatesAreUsedAndNotifyChildren();
        }
    }

    @Override // androidx.compose.ui.node.AlignmentLinesOwner
    public void requestMeasure() {
        LayoutNode.requestRemeasure$ui$default(getLayoutNode(), false, false, false, 7, null);
    }

    public final void setChildDelegatesDirty$ui(boolean z) {
        this.childDelegatesDirty = z;
    }

    public final void setDuringAlignmentLinesQuery$ui(boolean z) {
        this.duringAlignmentLinesQuery = z;
    }

    public final void setLayoutState(LayoutNode.LayoutState layoutState) {
        this.layoutNodeLayoutDelegate.setLayoutState$ui(layoutState);
    }

    public final void setMeasuredByParent$ui(LayoutNode.UsageByParent usageByParent) {
        this.measuredByParent = usageByParent;
    }

    public final void setPlaced$ui(boolean z) {
        this.isPlaced = z;
    }

    public final void setPlacedByParent$ui(boolean z) {
        this.isPlacedByParent = z;
    }

    public void setPlacedUnderMotionFrameOfReference(boolean z) {
        this.isPlacedUnderMotionFrameOfReference = z;
    }

    public final boolean updateParentData() {
        if ((getParentData() == null && getOuterCoordinator().getParentData() == null) || !this.parentDataDirty) {
            return false;
        }
        this.parentDataDirty = false;
        this.parentData = getOuterCoordinator().getParentData();
        return true;
    }

    @Override // androidx.compose.ui.node.MotionReferencePlacementDelegate
    public void updatePlacedUnderMotionFrameOfReference(boolean z) {
        if (z != getOuterCoordinator().isPlacedUnderMotionFrameOfReference()) {
            getOuterCoordinator().setPlacedUnderMotionFrameOfReference(z);
            this.needsCoordinatesUpdate = true;
        }
        setPlacedUnderMotionFrameOfReference(z);
    }

    @Override // androidx.compose.ui.layout.Placeable
    /* JADX INFO: renamed from: placeAt-f8xVGno */
    public void mo7765placeAtf8xVGno(long j, float f, GraphicsLayer graphicsLayer) throws Throwable {
        m7970placeSelfMLgxB_4(j, f, null, graphicsLayer);
    }
}
