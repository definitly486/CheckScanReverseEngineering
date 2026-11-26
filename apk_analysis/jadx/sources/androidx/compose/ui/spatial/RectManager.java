package androidx.compose.ui.spatial;

import androidx.collection.IntObjectMap;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Actual_jvmAndAndroidKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTargetModifierNode;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.MatrixKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.MeasurePassDelegate;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.semantics.SemanticsInfo;
import androidx.compose.ui.unit.IntOffset;
import androidx.media3.muxer.MuxerUtil;
import com.wdullaer.materialdatetimepicker.Utils;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.v39;

/* JADX INFO: loaded from: classes2.dex */
public final class RectManager {
    public static final int $stable = 8;
    private final MutableRect cachedRect;
    private final MutableObjectList<ll3<j59>> callbacks;
    private final ll3<j59> dispatchLambda;
    private Object dispatchToken;
    private final ExecuteDelayed executeDelayed;
    private boolean isDirty;
    private boolean isFragmented;
    private boolean isScreenOrWindowDirty;
    private final IntObjectMap<LayoutNode> layoutNodes;
    private final RectList rects;
    private long scheduledDispatchDeadline;
    private final ThrottledCallbacks throttledCallbacks;

    public RectManager(IntObjectMap<LayoutNode> intObjectMap, ExecuteDelayed executeDelayed) {
        this.layoutNodes = intObjectMap;
        this.executeDelayed = executeDelayed;
        this.rects = new RectList();
        this.throttledCallbacks = new ThrottledCallbacks();
        this.callbacks = new MutableObjectList<>(0, 1, null);
        this.scheduledDispatchDeadline = -1L;
        this.dispatchLambda = new RectManager$dispatchLambda$1(this);
        this.cachedRect = new MutableRect(0.0f, 0.0f, 0.0f, 0.0f);
    }

    private final void boundingRectInRoot(NodeCoordinator nodeCoordinator, MutableRect mutableRect) {
        while (nodeCoordinator != null) {
            LayoutNode layoutNode = nodeCoordinator.getLayoutNode();
            if (nodeCoordinator == layoutNode.getOuterCoordinator$ui() && !layoutNode.getHasPositionalLayerTransformationsInOffsetFromRoot$ui()) {
                long jM8284getOffsetFromRectListForBjo55l4 = m8284getOffsetFromRectListForBjo55l4(layoutNode);
                if (!IntOffset.m9169equalsimpl0(jM8284getOffsetFromRectListForBjo55l4, IntOffset.Companion.m9180getMaxnOccac())) {
                    float fM9170getXimpl = IntOffset.m9170getXimpl(jM8284getOffsetFromRectListForBjo55l4);
                    mutableRect.m5972translatek4lQ0M(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(IntOffset.m9171getYimpl(jM8284getOffsetFromRectListForBjo55l4))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fM9170getXimpl) << 32)));
                    return;
                }
            }
            OwnedLayer layer = nodeCoordinator.getLayer();
            if (layer != null) {
                float[] fArrMo8076getUnderlyingMatrixsQKQjiQ = layer.mo8076getUnderlyingMatrixsQKQjiQ();
                if (!MatrixKt.m6501isIdentity58bKbWc(fArrMo8076getUnderlyingMatrixsQKQjiQ)) {
                    Matrix.m6484mapimpl(fArrMo8076getUnderlyingMatrixsQKQjiQ, mutableRect);
                }
            }
            long jMo7947getPositionnOccac = nodeCoordinator.mo7947getPositionnOccac();
            float fM9170getXimpl2 = IntOffset.m9170getXimpl(jMo7947getPositionnOccac);
            mutableRect.m5972translatek4lQ0M(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(IntOffset.m9171getYimpl(jMo7947getPositionnOccac))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fM9170getXimpl2) << 32)));
            nodeCoordinator = nodeCoordinator.getWrappedBy$ui();
        }
    }

    public static /* synthetic */ void getThrottledCallbacks$ui$annotations() {
    }

    private final boolean hasPositionalLayerTransformations(NodeCoordinator nodeCoordinator) {
        OwnedLayer layer = nodeCoordinator.getLayer();
        return (layer == null || MatrixKt.m6501isIdentity58bKbWc(layer.mo8076getUnderlyingMatrixsQKQjiQ())) ? false : true;
    }

    private final void insertOrUpdateTransformedNode(LayoutNode layoutNode) {
        layoutNode.setHasPositionalLayerTransformationsInOffsetFromRoot$ui(true);
        NodeCoordinator outerCoordinator$ui = layoutNode.getOuterCoordinator$ui();
        MeasurePassDelegate measurePassDelegate$ui = layoutNode.getMeasurePassDelegate$ui();
        int measuredWidth = measurePassDelegate$ui.getMeasuredWidth();
        int measuredHeight = measurePassDelegate$ui.getMeasuredHeight();
        MutableRect mutableRect = this.cachedRect;
        mutableRect.set(0.0f, 0.0f, measuredWidth, measuredHeight);
        boundingRectInRoot(outerCoordinator$ui, mutableRect);
        int left = (int) mutableRect.getLeft();
        int top = (int) mutableRect.getTop();
        int right = (int) mutableRect.getRight();
        int bottom = (int) mutableRect.getBottom();
        int semanticsId = layoutNode.getSemanticsId();
        boolean addedToRectList$ui = layoutNode.getAddedToRectList$ui();
        layoutNode.setAddedToRectList$ui(true);
        if (!addedToRectList$ui || !this.rects.update(semanticsId, left, top, right, bottom)) {
            LayoutNode parent$ui = layoutNode.getParent$ui();
            RectList.insert$default(this.rects, semanticsId, left, top, right, bottom, parent$ui != null ? parent$ui.getSemanticsId() : -1, layoutNode.getNodes$ui().m7979hasH91voCI$ui(NodeKind.m8019constructorimpl(1024)), layoutNode.getNodes$ui().m7979hasH91voCI$ui(NodeKind.m8019constructorimpl(16)), this.throttledCallbacks.getRectChangedMap().containsKey(semanticsId), 0, 512, null);
        }
        layoutNode.setRectInParentDirty$ui(false);
        invalidate();
    }

    private final void insertOrUpdateTransformedNodeSubhierarchy(LayoutNode layoutNode) {
        insertOrUpdateTransformedNode(layoutNode);
        MutableVector<LayoutNode> mutableVector = layoutNode.get_children$ui();
        LayoutNode[] layoutNodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            LayoutNode layoutNode2 = layoutNodeArr[i];
            if (layoutNode2.isPlaced()) {
                insertOrUpdateTransformedNodeSubhierarchy(layoutNode2);
            }
        }
    }

    /* JADX INFO: renamed from: outerToInnerOffset-Bjo55l4, reason: not valid java name */
    private final long m8283outerToInnerOffsetBjo55l4(LayoutNode layoutNode) {
        NodeCoordinator outerCoordinator$ui = layoutNode.getOuterCoordinator$ui();
        long jM9181getZeronOccac = IntOffset.Companion.m9181getZeronOccac();
        for (NodeCoordinator innerCoordinator$ui = layoutNode.getInnerCoordinator$ui(); innerCoordinator$ui != null && innerCoordinator$ui != outerCoordinator$ui; innerCoordinator$ui = innerCoordinator$ui.getWrappedBy$ui()) {
            if (hasPositionalLayerTransformations(innerCoordinator$ui)) {
                return IntOffset.Companion.m9180getMaxnOccac();
            }
            jM9181getZeronOccac = IntOffset.m9174plusqkQi6aY(jM9181getZeronOccac, innerCoordinator$ui.mo7947getPositionnOccac());
        }
        return jM9181getZeronOccac;
    }

    private final void resetHasPositionalLayerTransformationsForSubtreeIfNeeded(LayoutNode layoutNode) {
        if (!layoutNode.getHasPositionalLayerTransformationsInOffsetFromRoot$ui() || hasPositionalLayerTransformations(layoutNode.getOuterCoordinator$ui())) {
            return;
        }
        layoutNode.setHasPositionalLayerTransformationsInOffsetFromRoot$ui(false);
        if (layoutNode.getOuterToInnerOffsetDirty$ui()) {
            layoutNode.m7933setOuterToInnerOffsetgyyYBs$ui(m8283outerToInnerOffsetBjo55l4(layoutNode));
            layoutNode.setOuterToInnerOffsetDirty$ui(false);
        }
        if (IntOffset.m9169equalsimpl0(layoutNode.m7928getOuterToInnerOffsetnOccac$ui(), IntOffset.Companion.m9180getMaxnOccac())) {
            return;
        }
        MutableVector<LayoutNode> mutableVector = layoutNode.get_children$ui();
        LayoutNode[] layoutNodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            resetHasPositionalLayerTransformationsForSubtreeIfNeeded(layoutNodeArr[i]);
        }
    }

    public final void dispatchCallbacks() {
        removeScheduledCallback();
        long jCurrentTimeMillis = Actual_jvmAndAndroidKt.currentTimeMillis();
        boolean z = this.isDirty;
        boolean z2 = z || this.isScreenOrWindowDirty;
        if (z) {
            this.isDirty = false;
            MutableObjectList<ll3<j59>> mutableObjectList = this.callbacks;
            Object[] objArr = mutableObjectList.content;
            int i = mutableObjectList._size;
            for (int i2 = 0; i2 < i; i2++) {
                ((ll3) objArr[i2]).invoke();
            }
            RectList rectList = this.rects;
            long[] jArr = rectList.items;
            int i3 = rectList.itemsSize;
            for (int i4 = 0; i4 < jArr.length - 2 && i4 < i3; i4 += 3) {
                long j = jArr[i4 + 2];
                if ((((int) (j >> 60)) & 1) != 0) {
                    this.throttledCallbacks.fireOnUpdatedRect(33554431 & ((int) j), jArr[i4], jArr[i4 + 1], jCurrentTimeMillis);
                }
            }
            this.rects.clearUpdated();
        }
        if (this.isScreenOrWindowDirty) {
            this.isScreenOrWindowDirty = false;
            this.throttledCallbacks.fireOnRectChangedEntries(jCurrentTimeMillis);
        }
        if (z2) {
            this.throttledCallbacks.fireGlobalChangeEntries(jCurrentTimeMillis);
        }
        if (this.isFragmented) {
            this.isFragmented = false;
            this.rects.defragment();
        }
        this.throttledCallbacks.triggerDebounced(jCurrentTimeMillis);
        if (this.throttledCallbacks.getMinDebounceDeadline() > 0) {
            scheduleDebounceCallback(true);
        }
    }

    public final FocusTargetModifierNode findFocusableNodeFromRect$ui(int i, int i2, int i3, int i4, int i5) {
        int i6;
        LayoutNode layoutNode;
        int i7;
        LayoutNode layoutNode2;
        byte b;
        Modifier.Node nodePop;
        int i8;
        LayoutNode layoutNode3;
        boolean z;
        int i9;
        SemanticsInfo semanticsInfoRequireSemanticsInfo;
        RectManager rectManager = this;
        LayoutNode layoutNode4 = rectManager.layoutNodes.get(i5);
        if (layoutNode4 == null) {
            return null;
        }
        FocusTargetNode activeFocusTargetNode = LayoutNodeKt.requireOwner(layoutNode4).getFocusOwner().getActiveFocusTargetNode();
        int semanticsId = (activeFocusTargetNode == null || (semanticsInfoRequireSemanticsInfo = DelegatableNodeKt.requireSemanticsInfo(activeFocusTargetNode)) == null) ? -1 : semanticsInfoRequireSemanticsInfo.getSemanticsId();
        RectList rectList = rectManager.rects;
        int i10 = i2;
        long j = (((long) i10) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32);
        long j2 = (((long) i4) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i3) << 32);
        long[] jArr = rectList.items;
        int i11 = rectList.itemsSize;
        int depth$ui = Integer.MAX_VALUE;
        FocusTargetNode focusTargetNode = null;
        int i12 = 0;
        while (i12 < jArr.length - 2 && i12 < i11) {
            int i13 = i12;
            long j3 = jArr[i12 + 2];
            boolean z2 = true;
            if ((((int) (j3 >> 61)) & 1) != 0) {
                if (((((j2 - jArr[i13]) - InlineClassHelperKt.Uint64Low32) | ((jArr[i13 + 1] - j) - InlineClassHelperKt.Uint64Low32)) & (-9223372034707292160L)) != 0 || (layoutNode2 = rectManager.layoutNodes.get((i7 = ((int) j3) & 33554431))) == null) {
                    i6 = depth$ui;
                    layoutNode = layoutNode4;
                } else {
                    if (semanticsId == i7) {
                        b = -1;
                        if (semanticsId != -1) {
                            return null;
                        }
                    } else {
                        b = -1;
                    }
                    if (layoutNode2.getDepth$ui() >= depth$ui || !rectManager.isDescendantOf$ui(layoutNode2, layoutNode4)) {
                        i6 = depth$ui;
                        layoutNode = layoutNode4;
                    } else {
                        NodeChain nodes$ui = layoutNode2.getNodes$ui();
                        int iM8019constructorimpl = NodeKind.m8019constructorimpl(1024);
                        if ((nodes$ui.getAggregateChildKindSet() & iM8019constructorimpl) != 0) {
                            Modifier.Node head$ui = nodes$ui.getHead$ui();
                            while (true) {
                                if (head$ui != null) {
                                    if ((head$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                        MutableVector mutableVector = null;
                                        nodePop = head$ui;
                                        while (true) {
                                            if (nodePop != null) {
                                                if (nodePop instanceof FocusTargetNode) {
                                                    i6 = depth$ui;
                                                    layoutNode = layoutNode4;
                                                } else {
                                                    if ((nodePop.getKindSet$ui() & iM8019constructorimpl) == 0 || !(nodePop instanceof DelegatingNode)) {
                                                        i8 = depth$ui;
                                                        layoutNode3 = layoutNode4;
                                                        z = true;
                                                    } else {
                                                        Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui();
                                                        int i14 = 0;
                                                        while (delegate$ui != null) {
                                                            if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                                                i14++;
                                                                i9 = depth$ui;
                                                                if (i14 == 1) {
                                                                    nodePop = delegate$ui;
                                                                } else {
                                                                    MutableVector mutableVector2 = mutableVector == null ? new MutableVector(new Modifier.Node[16], 0) : mutableVector;
                                                                    if (nodePop != null) {
                                                                        mutableVector2.add(nodePop);
                                                                        nodePop = null;
                                                                    }
                                                                    mutableVector2.add(delegate$ui);
                                                                    mutableVector = mutableVector2;
                                                                    i14 = i14;
                                                                }
                                                                delegate$ui = delegate$ui.getChild$ui();
                                                                depth$ui = i9;
                                                                layoutNode4 = layoutNode4;
                                                            } else {
                                                                i9 = depth$ui;
                                                            }
                                                            layoutNode4 = layoutNode4;
                                                            delegate$ui = delegate$ui.getChild$ui();
                                                            depth$ui = i9;
                                                            layoutNode4 = layoutNode4;
                                                        }
                                                        i8 = depth$ui;
                                                        layoutNode3 = layoutNode4;
                                                        z = true;
                                                        if (i14 == 1) {
                                                        }
                                                        z2 = z;
                                                        depth$ui = i8;
                                                        layoutNode4 = layoutNode3;
                                                    }
                                                    nodePop = DelegatableNodeKt.pop(mutableVector);
                                                    z2 = z;
                                                    depth$ui = i8;
                                                    layoutNode4 = layoutNode3;
                                                }
                                            }
                                        }
                                    }
                                    i6 = depth$ui;
                                    boolean z3 = z2;
                                    layoutNode = layoutNode4;
                                    if ((head$ui.getAggregateChildKindSet$ui() & iM8019constructorimpl) != 0) {
                                        head$ui = head$ui.getChild$ui();
                                        z2 = z3;
                                        depth$ui = i6;
                                        layoutNode4 = layoutNode;
                                    } else {
                                        nodePop = null;
                                    }
                                } else {
                                    i6 = depth$ui;
                                    layoutNode = layoutNode4;
                                    nodePop = null;
                                }
                            }
                        } else {
                            i6 = depth$ui;
                            layoutNode = layoutNode4;
                            nodePop = null;
                        }
                        FocusTargetNode focusTargetNode2 = (FocusTargetNode) nodePop;
                        if (focusTargetNode2 != null) {
                            if (intersects$ui(focusTargetNode2, i, i10, i3, i4)) {
                                focusTargetNode = focusTargetNode2;
                                depth$ui = layoutNode2.getDepth$ui();
                            }
                        }
                    }
                    depth$ui = i6;
                }
                depth$ui = i6;
            } else {
                i6 = depth$ui;
                layoutNode = layoutNode4;
                depth$ui = i6;
            }
            i12 = i13 + 3;
            rectManager = this;
            i10 = i2;
            layoutNode4 = layoutNode;
        }
        return focusTargetNode;
    }

    /* JADX INFO: renamed from: getOffsetFromRectListFor-Bjo55l4, reason: not valid java name */
    public final long m8284getOffsetFromRectListForBjo55l4(LayoutNode layoutNode) {
        long topLeft = this.rects.getTopLeft(layoutNode.getSemanticsId());
        if (topLeft == Long.MAX_VALUE) {
            return IntOffset.Companion.m9180getMaxnOccac();
        }
        int i = (int) (topLeft >> 32);
        return IntOffset.m9164constructorimpl((((long) ((int) topLeft)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32));
    }

    public final RectList getRects() {
        return this.rects;
    }

    public final ThrottledCallbacks getThrottledCallbacks$ui() {
        return this.throttledCallbacks;
    }

    public final boolean intersects$ui(DelegatableNode delegatableNode, int i, int i2, int i3, int i4) {
        NodeCoordinator nodeCoordinatorM7874requireCoordinator64DMado = DelegatableNodeKt.m7874requireCoordinator64DMado(delegatableNode, NodeKind.m8019constructorimpl(1024));
        LayoutNode layoutNode = nodeCoordinatorM7874requireCoordinator64DMado.getLayoutNode();
        if (nodeCoordinatorM7874requireCoordinator64DMado.equals(layoutNode.getOuterCoordinator$ui())) {
            return true;
        }
        long jMo7713localToRootMKHz9U = layoutNode.getOuterCoordinator$ui().mo7713localToRootMKHz9U(LayoutCoordinates.m7709localPositionOfS_NoaFU$default(layoutNode.getOuterCoordinator$ui(), nodeCoordinatorM7874requireCoordinator64DMado, 0L, false, 6, null));
        long jMo7710getSizeYbymL2g = nodeCoordinatorM7874requireCoordinator64DMado.mo7710getSizeYbymL2g();
        int iRound = Math.round(Float.intBitsToFloat((int) (jMo7713localToRootMKHz9U >> 32)));
        int i5 = ((int) (jMo7710getSizeYbymL2g >> 32)) + iRound;
        int iRound2 = Math.round(Float.intBitsToFloat((int) (jMo7713localToRootMKHz9U & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        return i < i5 && i3 > iRound && i2 < ((int) (jMo7710getSizeYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + iRound2 && i4 > iRound2;
    }

    public final void invalidate() {
        this.isDirty = true;
    }

    public final void invalidateCallbacksFor(LayoutNode layoutNode) {
        if (layoutNode.getAddedToRectList$ui()) {
            this.isDirty = true;
            this.rects.markUpdated(layoutNode.getSemanticsId());
        }
        scheduleDebounceCallback(true);
    }

    public final boolean isDescendantOf$ui(LayoutNode layoutNode, LayoutNode layoutNode2) {
        int depth$ui = layoutNode.getDepth$ui() - layoutNode2.getDepth$ui();
        if (depth$ui <= 0) {
            return false;
        }
        for (int i = 0; i < depth$ui; i++) {
            layoutNode = layoutNode.getParent$ui();
            if (layoutNode == null) {
                return false;
            }
        }
        return layoutNode == layoutNode2;
    }

    public final boolean isTargetDrawnFirst$ui(int i, int i2) {
        LayoutNode parent$ui;
        LayoutNode parent$ui2;
        LayoutNode parent$ui3 = this.layoutNodes.get(i);
        if (parent$ui3 != null && (parent$ui = this.layoutNodes.get(i2)) != null && parent$ui3.getDepth$ui() != 0 && parent$ui.getDepth$ui() != 0) {
            while (parent$ui3.getDepth$ui() > parent$ui.getDepth$ui()) {
                parent$ui3 = parent$ui3.getParent$ui();
                if (parent$ui3 == null) {
                    return false;
                }
            }
            if (parent$ui3 == parent$ui) {
                return false;
            }
            while (parent$ui.getDepth$ui() > parent$ui3.getDepth$ui()) {
                parent$ui = parent$ui.getParent$ui();
                if (parent$ui == null) {
                    return false;
                }
            }
            if (parent$ui3 == parent$ui) {
                return false;
            }
            LayoutNode layoutNode = parent$ui3;
            LayoutNode layoutNode2 = layoutNode;
            LayoutNode layoutNode3 = parent$ui;
            while (layoutNode != parent$ui) {
                LayoutNode parent$ui4 = layoutNode.getParent$ui();
                if (parent$ui4 == null || (parent$ui2 = parent$ui.getParent$ui()) == null) {
                    return false;
                }
                layoutNode3 = parent$ui;
                parent$ui = parent$ui2;
                layoutNode2 = layoutNode;
                layoutNode = parent$ui4;
            }
            if (layoutNode2.getMeasurePassDelegate$ui().getZIndex$ui() == layoutNode3.getMeasurePassDelegate$ui().getZIndex$ui()) {
                return layoutNode2.getPlaceOrder$ui() < layoutNode3.getPlaceOrder$ui();
            }
            if (layoutNode2.getMeasurePassDelegate$ui().getZIndex$ui() < layoutNode3.getMeasurePassDelegate$ui().getZIndex$ui()) {
                return true;
            }
        }
        return false;
    }

    public final void recalculateRectIfDirty(LayoutNode layoutNode) {
        long jM9181getZeronOccac;
        if (layoutNode.isPlaced() && layoutNode.getRectInParentDirty$ui()) {
            LayoutNode parent$ui = layoutNode.getParent$ui();
            if (parent$ui == null || parent$ui.getHasPositionalLayerTransformationsInOffsetFromRoot$ui()) {
                jM9181getZeronOccac = parent$ui == null ? IntOffset.Companion.m9181getZeronOccac() : IntOffset.Companion.m9180getMaxnOccac();
            } else {
                if (parent$ui.getOuterToInnerOffsetDirty$ui()) {
                    parent$ui.setOuterToInnerOffsetDirty$ui(false);
                    parent$ui.m7933setOuterToInnerOffsetgyyYBs$ui(m8283outerToInnerOffsetBjo55l4(parent$ui));
                }
                jM9181getZeronOccac = parent$ui.m7928getOuterToInnerOffsetnOccac$ui();
            }
            NodeCoordinator outerCoordinator$ui = layoutNode.getOuterCoordinator$ui();
            if (!RectManagerKt.m8289isSetgyyYBs(jM9181getZeronOccac) || hasPositionalLayerTransformations(outerCoordinator$ui)) {
                insertOrUpdateTransformedNodeSubhierarchy(layoutNode);
            } else if (layoutNode.getHasPositionalLayerTransformationsInOffsetFromRoot$ui()) {
                insertOrUpdateTransformedNodeSubhierarchy(layoutNode);
                resetHasPositionalLayerTransformationsForSubtreeIfNeeded(layoutNode);
            } else {
                long jM9174plusqkQi6aY = IntOffset.m9174plusqkQi6aY(jM9181getZeronOccac, outerCoordinator$ui.mo7947getPositionnOccac());
                MeasurePassDelegate measurePassDelegate$ui = layoutNode.getMeasurePassDelegate$ui();
                int measuredWidth = measurePassDelegate$ui.getMeasuredWidth();
                int measuredHeight = measurePassDelegate$ui.getMeasuredHeight();
                int semanticsId = layoutNode.getSemanticsId();
                if (layoutNode.getAddedToRectList$ui()) {
                    RectList rectList = this.rects;
                    if (parent$ui != null) {
                        rectList.moveBasedOnParentOffset(semanticsId, parent$ui.getSemanticsId(), IntOffset.m9170getXimpl(jM9174plusqkQi6aY), IntOffset.m9171getYimpl(jM9174plusqkQi6aY), measuredWidth, measuredHeight);
                    } else {
                        rectList.move(semanticsId, IntOffset.m9170getXimpl(jM9174plusqkQi6aY), IntOffset.m9171getYimpl(jM9174plusqkQi6aY), IntOffset.m9170getXimpl(jM9174plusqkQi6aY) + measuredWidth, IntOffset.m9171getYimpl(jM9174plusqkQi6aY) + measuredHeight);
                    }
                } else {
                    layoutNode.setAddedToRectList$ui(true);
                    boolean zM7979hasH91voCI$ui = layoutNode.getNodes$ui().m7979hasH91voCI$ui(NodeKind.m8019constructorimpl(1024));
                    boolean zM7979hasH91voCI$ui2 = layoutNode.getNodes$ui().m7979hasH91voCI$ui(NodeKind.m8019constructorimpl(16));
                    boolean zContainsKey = this.throttledCallbacks.getRectChangedMap().containsKey(semanticsId);
                    RectList rectList2 = this.rects;
                    if (parent$ui != null) {
                        rectList2.insertBasedOnParentOffset(semanticsId, parent$ui.getSemanticsId(), IntOffset.m9170getXimpl(jM9174plusqkQi6aY), IntOffset.m9171getYimpl(jM9174plusqkQi6aY), measuredWidth, measuredHeight, zM7979hasH91voCI$ui, zM7979hasH91voCI$ui2, zContainsKey);
                    } else {
                        RectList.insert$default(rectList2, semanticsId, IntOffset.m9170getXimpl(jM9174plusqkQi6aY), IntOffset.m9171getYimpl(jM9174plusqkQi6aY), IntOffset.m9170getXimpl(jM9174plusqkQi6aY) + measuredWidth, IntOffset.m9171getYimpl(jM9174plusqkQi6aY) + measuredHeight, 0, zM7979hasH91voCI$ui, zM7979hasH91voCI$ui2, zContainsKey, 0, Utils.PULSE_ANIMATOR_DURATION, null);
                    }
                }
            }
            layoutNode.setRectInParentDirty$ui(false);
            invalidate();
            scheduleDebounceCallback(true);
        }
    }

    public final Object registerOnChangedCallback(ll3<j59> ll3Var) {
        this.callbacks.add(ll3Var);
        return ll3Var;
    }

    public final DelegatableNode.RegistrationHandle registerOnGlobalLayoutCallback(int i, long j, long j2, DelegatableNode delegatableNode, nl3<? super RelativeLayoutBounds, j59> nl3Var) {
        return this.throttledCallbacks.registerOnGlobalChange(i, j, j2, delegatableNode, nl3Var);
    }

    public final DelegatableNode.RegistrationHandle registerOnRectChangedCallback(int i, long j, long j2, DelegatableNode delegatableNode, nl3<? super RelativeLayoutBounds, j59> nl3Var) {
        DelegatableNode.RegistrationHandle registrationHandleRegisterOnRectChanged = this.throttledCallbacks.registerOnRectChanged(i, j, j2, delegatableNode, nl3Var);
        if (DelegatableNodeKt.requireLayoutNode(delegatableNode.getNode()).getAddedToRectList$ui()) {
            this.rects.updateHasCallbacks(i, true);
        }
        invalidate();
        scheduleDebounceCallback(true);
        return registrationHandleRegisterOnRectChanged;
    }

    public final void remove(LayoutNode layoutNode) {
        if (layoutNode.getAddedToRectList$ui()) {
            this.rects.remove(layoutNode.getSemanticsId());
            layoutNode.setAddedToRectList$ui(false);
            layoutNode.setRectInParentDirty$ui(true);
            invalidate();
            this.isFragmented = true;
        }
    }

    public final void removeScheduledCallback() {
        Object obj = this.dispatchToken;
        if (obj != null) {
            this.executeDelayed.removeDelayedExecution(obj);
            this.dispatchToken = null;
        }
    }

    public final void resetOffsets() {
        ThrottledCallbacks throttledCallbacks = this.throttledCallbacks;
        IntOffset.Companion companion = IntOffset.Companion;
        this.isScreenOrWindowDirty = throttledCallbacks.m8302updateOffsetsLDcG7Xg(companion.m9181getZeronOccac(), companion.m9181getZeronOccac(), null, 0, 0);
    }

    public final void scheduleDebounceCallback(boolean z) {
        boolean z2 = (z && this.dispatchToken == null) ? false : true;
        long minDebounceDeadline = this.throttledCallbacks.getMinDebounceDeadline();
        if (minDebounceDeadline >= 0 || !z2) {
            if (this.scheduledDispatchDeadline == minDebounceDeadline && z2) {
                return;
            }
            Object obj = this.dispatchToken;
            if (obj != null) {
                this.executeDelayed.removeDelayedExecution(obj);
            }
            long jCurrentTimeMillis = Actual_jvmAndAndroidKt.currentTimeMillis();
            long jMax = Math.max(minDebounceDeadline, 16 + jCurrentTimeMillis);
            this.scheduledDispatchDeadline = jMax;
            this.dispatchToken = this.executeDelayed.executeDelayed(jMax - jCurrentTimeMillis, this.dispatchLambda);
        }
    }

    public final void unregisterOnChangedCallback(Object obj) {
        if ((v39.d(0, obj) ? (ll3) obj : null) == null) {
            return;
        }
        this.callbacks.remove(obj);
    }

    public final void unsetHasCallbacksFor(LayoutNode layoutNode) {
        this.rects.updateHasCallbacks(layoutNode.getSemanticsId(), false);
    }

    public final void updateFlagsFor(LayoutNode layoutNode, boolean z, boolean z2) {
        if (layoutNode.isAttached()) {
            this.rects.updateFlagsFor(layoutNode.getSemanticsId(), z, z2);
        }
    }

    /* JADX INFO: renamed from: updateOffsets-gTq6Wqs, reason: not valid java name */
    public final void m8285updateOffsetsgTq6Wqs(long j, long j2, float[] fArr, int i, int i2) {
        int iM8288analyzeComponents58bKbWc = RectManagerKt.m8288analyzeComponents58bKbWc(fArr);
        ThrottledCallbacks throttledCallbacks = this.throttledCallbacks;
        if ((iM8288analyzeComponents58bKbWc & 2) != 0) {
            fArr = null;
        }
        this.isScreenOrWindowDirty = throttledCallbacks.m8302updateOffsetsLDcG7Xg(j, j2, fArr, i, i2) || this.isScreenOrWindowDirty;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RectManager() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ RectManager(IntObjectMap intObjectMap, ExecuteDelayed executeDelayed, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? IntObjectMapKt.intObjectMapOf() : intObjectMap, (i & 2) != 0 ? ExecuteDelayUsingPostAndRemove.INSTANCE : executeDelayed);
    }
}
