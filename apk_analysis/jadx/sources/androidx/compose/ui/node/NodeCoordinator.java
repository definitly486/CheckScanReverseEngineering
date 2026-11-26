package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectIntMapKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.ComposeUiFlags;
import androidx.compose.ui.FrameRateCategory;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.MutableRectKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.MatrixKt;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.input.pointer.MatrixPositionCalculator;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.LookaheadLayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsOwnerKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.ag;
import defpackage.ah;
import defpackage.bm3;
import defpackage.fg;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.n1;
import defpackage.nl3;
import defpackage.ox2;
import defpackage.r07;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class NodeCoordinator extends LookaheadCapablePlaceable implements Measurable, LayoutCoordinates, OwnerScope {
    public static final int $stable = 0;
    public static final String ExpectAttachedLayoutCoordinates = "LayoutCoordinate operations are only valid when isAttached is true";
    public static final String UnmeasuredError = "Asking for measurement result of unmeasured layout modifier";
    private bm3<? super Canvas, ? super GraphicsLayer, j59> _drawBlock;
    private MeasureResult _measureResult;
    private MutableRect _rectCache;
    private Canvas drawBlockCanvas;
    private GraphicsLayer drawBlockParentLayer;
    private GraphicsLayer explicitLayer;
    private boolean forceMeasureWithLookaheadConstraints;
    private boolean forcePlaceWithLookaheadOffset;
    private boolean isClipping;
    private boolean lastClip;
    private boolean lastLayerDrawingWasSkipped;
    private OwnedLayer layer;
    private nl3<? super GraphicsLayerScope, j59> layerBlock;
    private LayerPositionalProperties layerPositionalProperties;
    private final LayoutNode layoutNode;
    private MutableObjectIntMap<AlignmentLine> oldAlignmentLines;
    private boolean released;
    private boolean wasLayerBlockInvoked;
    private NodeCoordinator wrapped;
    private NodeCoordinator wrappedBy;
    private float zIndex;
    public static final Companion Companion = new Companion(null);
    private static final nl3<NodeCoordinator, j59> onCommitAffectingLayerParams = NodeCoordinator$Companion$onCommitAffectingLayerParams$1.INSTANCE;
    private static final nl3<NodeCoordinator, j59> onCommitAffectingLayer = NodeCoordinator$Companion$onCommitAffectingLayer$1.INSTANCE;
    private static final ReusableGraphicsLayerScope graphicsLayerScope = new ReusableGraphicsLayerScope();
    private static final LayerPositionalProperties tmpLayerPositionalProperties = new LayerPositionalProperties();
    private static final float[] tmpMatrix = Matrix.m6476constructorimpl$default(null, 1, null);
    private static final HitTestSource PointerInputSource = new HitTestSource() { // from class: androidx.compose.ui.node.NodeCoordinator$Companion$PointerInputSource$1
        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        /* JADX INFO: renamed from: childHitTest-qzLsGqo, reason: not valid java name */
        public void mo8014childHitTestqzLsGqo(LayoutNode layoutNode, long j, HitTestResult hitTestResult, int i, boolean z) {
            layoutNode.m7929hitTest6fMxITs$ui(j, hitTestResult, i, z);
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        /* JADX INFO: renamed from: entityType-OLwlOKw, reason: not valid java name */
        public int mo8015entityTypeOLwlOKw() {
            return NodeKind.m8019constructorimpl(16);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r9v7 */
        /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
            java.lang.NullPointerException
            */
        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        public boolean interceptOutOfBoundsChildEvents(androidx.compose.ui.Modifier.Node r9) {
            /*
                r8 = this;
                r8 = 16
                int r0 = androidx.compose.ui.node.NodeKind.m8019constructorimpl(r8)
                r1 = 0
                r2 = r1
            L8:
                r3 = 0
                if (r9 == 0) goto L5a
                boolean r4 = r9 instanceof androidx.compose.ui.node.PointerInputModifierNode
                r5 = 1
                if (r4 == 0) goto L19
                androidx.compose.ui.node.PointerInputModifierNode r9 = (androidx.compose.ui.node.PointerInputModifierNode) r9
                boolean r9 = r9.interceptOutOfBoundsChildEvents()
                if (r9 == 0) goto L55
                return r5
            L19:
                int r4 = r9.getKindSet$ui()
                r4 = r4 & r0
                if (r4 == 0) goto L55
                boolean r4 = r9 instanceof androidx.compose.ui.node.DelegatingNode
                if (r4 == 0) goto L55
                r4 = r9
                androidx.compose.ui.node.DelegatingNode r4 = (androidx.compose.ui.node.DelegatingNode) r4
                androidx.compose.ui.Modifier$Node r4 = r4.getDelegate$ui()
                r6 = r3
            L2c:
                if (r4 == 0) goto L52
                int r7 = r4.getKindSet$ui()
                r7 = r7 & r0
                if (r7 == 0) goto L4d
                int r6 = r6 + 1
                if (r6 != r5) goto L3b
                r9 = r4
                goto L4d
            L3b:
                if (r2 != 0) goto L44
                androidx.compose.runtime.collection.MutableVector r2 = new androidx.compose.runtime.collection.MutableVector
                androidx.compose.ui.Modifier$Node[] r7 = new androidx.compose.ui.Modifier.Node[r8]
                r2.<init>(r7, r3)
            L44:
                if (r9 == 0) goto L4a
                r2.add(r9)
                r9 = r1
            L4a:
                r2.add(r4)
            L4d:
                androidx.compose.ui.Modifier$Node r4 = r4.getChild$ui()
                goto L2c
            L52:
                if (r6 != r5) goto L55
                goto L8
            L55:
                androidx.compose.ui.Modifier$Node r9 = androidx.compose.ui.node.DelegatableNodeKt.access$pop(r2)
                goto L8
            L5a:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.NodeCoordinator$Companion$PointerInputSource$1.interceptOutOfBoundsChildEvents(androidx.compose.ui.Modifier$Node):boolean");
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        public boolean shareWithSiblings(HitTestResult hitTestResult, LayoutNode layoutNode) {
            if (!layoutNode.getOuterCoordinator$ui().shouldSharePointerInputWithSiblings()) {
                return false;
            }
            hitTestResult.acceptHits();
            return true;
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        public boolean shouldHitTestChildren(LayoutNode layoutNode) {
            return true;
        }
    };
    private static final HitTestSource SemanticsSource = new HitTestSource() { // from class: androidx.compose.ui.node.NodeCoordinator$Companion$SemanticsSource$1
        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        /* JADX INFO: renamed from: childHitTest-qzLsGqo */
        public void mo8014childHitTestqzLsGqo(LayoutNode layoutNode, long j, HitTestResult hitTestResult, int i, boolean z) {
            layoutNode.m7930hitTestSemantics6fMxITs$ui(j, hitTestResult, i, z);
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        /* JADX INFO: renamed from: entityType-OLwlOKw */
        public int mo8015entityTypeOLwlOKw() {
            return NodeKind.m8019constructorimpl(8);
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        public boolean interceptOutOfBoundsChildEvents(Modifier.Node node) {
            return false;
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        public boolean shareWithSiblings(HitTestResult hitTestResult, LayoutNode layoutNode) {
            return false;
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        public boolean shouldHitTest(Modifier.Node node) {
            if (ComposeUiFlags.isSkipNonImportantSemanticsNodesHitTestEnabled) {
                return SemanticsOwnerKt.isImportantForAccessibility(SemanticsNodeKt.SemanticsNode(DelegatableNodeKt.requireLayoutNode(node), false));
            }
            return true;
        }

        @Override // androidx.compose.ui.node.NodeCoordinator.HitTestSource
        public boolean shouldHitTestChildren(LayoutNode layoutNode) {
            SemanticsConfiguration semanticsConfiguration = layoutNode.getSemanticsConfiguration();
            boolean z = false;
            if (semanticsConfiguration != null && semanticsConfiguration.isClearingSemantics()) {
                z = true;
            }
            return !z;
        }
    };
    private Density layerDensity = getLayoutNode().getDensity();
    private LayoutDirection layerLayoutDirection = getLayoutNode().getLayoutDirection();
    private float lastLayerAlpha = 0.8f;
    private long position = IntOffset.Companion.m9181getZeronOccac();
    private Shape lastShape = RectangleShapeKt.getRectangleShape();
    private final ll3<j59> invalidateParentLayer = new NodeCoordinator$invalidateParentLayer$1(this);

    public interface HitTestSource {
        /* JADX INFO: renamed from: childHitTest-qzLsGqo */
        void mo8014childHitTestqzLsGqo(LayoutNode layoutNode, long j, HitTestResult hitTestResult, int i, boolean z);

        /* JADX INFO: renamed from: entityType-OLwlOKw */
        int mo8015entityTypeOLwlOKw();

        boolean interceptOutOfBoundsChildEvents(Modifier.Node node);

        boolean shareWithSiblings(HitTestResult hitTestResult, LayoutNode layoutNode);

        default boolean shouldHitTest(Modifier.Node node) {
            return true;
        }

        boolean shouldHitTestChildren(LayoutNode layoutNode);
    }

    public NodeCoordinator(LayoutNode layoutNode) {
        this.layoutNode = layoutNode;
    }

    private final void ancestorToLocal(NodeCoordinator nodeCoordinator, MutableRect mutableRect, boolean z) {
        if (nodeCoordinator == this) {
            return;
        }
        NodeCoordinator nodeCoordinator2 = this.wrappedBy;
        if (nodeCoordinator2 != null) {
            nodeCoordinator2.ancestorToLocal(nodeCoordinator, mutableRect, z);
        }
        fromParentRect(mutableRect, z);
    }

    /* JADX INFO: renamed from: ancestorToLocal-S_NoaFU, reason: not valid java name */
    private final long m7986ancestorToLocalS_NoaFU(NodeCoordinator nodeCoordinator, long j, boolean z) {
        if (nodeCoordinator == this) {
            return j;
        }
        NodeCoordinator nodeCoordinator2 = this.wrappedBy;
        return (nodeCoordinator2 == null || aa4.e(nodeCoordinator, nodeCoordinator2)) ? m8002fromParentPosition8S9VItk(j, z) : m8002fromParentPosition8S9VItk(nodeCoordinator2.m7986ancestorToLocalS_NoaFU(nodeCoordinator, j, z), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void drawContainedDrawModifiers(Canvas canvas, GraphicsLayer graphicsLayer) {
        Modifier.Node nodeM8005headH91voCI = m8005headH91voCI(NodeKind.m8019constructorimpl(4));
        if (nodeM8005headH91voCI == null) {
            performDraw(canvas, graphicsLayer);
        } else {
            getLayoutNode().getMDrawScope$ui().m7940draweZhPAX0$ui(canvas, IntSizeKt.m9225toSizeozmzZPI(mo7710getSizeYbymL2g()), this, nodeM8005headH91voCI, graphicsLayer);
        }
    }

    /* JADX INFO: renamed from: fromParentPosition-8S9VItk$default, reason: not valid java name */
    public static /* synthetic */ long m7987fromParentPosition8S9VItk$default(NodeCoordinator nodeCoordinator, long j, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: fromParentPosition-8S9VItk");
            return 0L;
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return nodeCoordinator.m8002fromParentPosition8S9VItk(j, z);
    }

    private final void fromParentRect(MutableRect mutableRect, boolean z) {
        float fM9170getXimpl = IntOffset.m9170getXimpl(mo7947getPositionnOccac());
        mutableRect.setLeft(mutableRect.getLeft() - fM9170getXimpl);
        mutableRect.setRight(mutableRect.getRight() - fM9170getXimpl);
        float fM9171getYimpl = IntOffset.m9171getYimpl(mo7947getPositionnOccac());
        mutableRect.setTop(mutableRect.getTop() - fM9171getYimpl);
        mutableRect.setBottom(mutableRect.getBottom() - fM9171getYimpl);
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.mapBounds(mutableRect, true);
            if (this.isClipping && z) {
                mutableRect.intersect(0.0f, 0.0f, (int) (mo7710getSizeYbymL2g() >> 32), (int) (mo7710getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                mutableRect.isEmpty();
            }
        }
    }

    private final bm3<Canvas, GraphicsLayer, j59> getDrawBlock() {
        bm3 bm3Var = this._drawBlock;
        if (bm3Var != null) {
            return bm3Var;
        }
        NodeCoordinator$drawBlock$1 nodeCoordinator$drawBlock$1 = new NodeCoordinator$drawBlock$1(this, new NodeCoordinator$drawBlock$drawBlockCallToDrawModifiers$1(this));
        this._drawBlock = nodeCoordinator$drawBlock$1;
        return nodeCoordinator$drawBlock$1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OwnerSnapshotObserver getSnapshotObserver() {
        return LayoutNodeKt.requireOwner(getLayoutNode()).getSnapshotObserver();
    }

    /* JADX INFO: renamed from: hasNode-H91voCI, reason: not valid java name */
    private final boolean m7988hasNodeH91voCI(int i) {
        Modifier.Node nodeHeadNode = headNode(NodeKindKt.m8028getIncludeSelfInTraversalH91voCI(i));
        return nodeHeadNode != null && DelegatableNodeKt.m7872has64DMado(nodeHeadNode, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Modifier.Node headNode(boolean z) {
        Modifier.Node tail;
        if (getLayoutNode().getOuterCoordinator$ui() == this) {
            return getLayoutNode().getNodes$ui().getHead$ui();
        }
        NodeCoordinator nodeCoordinator = this.wrappedBy;
        if (!z) {
            if (nodeCoordinator != null) {
                return nodeCoordinator.getTail();
            }
            return null;
        }
        if (nodeCoordinator == null || (tail = nodeCoordinator.getTail()) == null) {
            return null;
        }
        return tail.getChild$ui();
    }

    /* JADX INFO: renamed from: hit-5ShdDok, reason: not valid java name */
    private final void m7989hit5ShdDok(Modifier.Node node, HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z) {
        if (node == null) {
            mo7920hitTestChildqzLsGqo(hitTestSource, j, hitTestResult, i, z);
            return;
        }
        if (!hitTestSource.shouldHitTest(node)) {
            m7989hit5ShdDok(NodeCoordinatorKt.m8017nextUntilhw7D004(node, hitTestSource.mo8015entityTypeOLwlOKw(), NodeKind.m8019constructorimpl(2)), hitTestSource, j, hitTestResult, i, z);
            return;
        }
        int i2 = hitTestResult.hitDepth;
        hitTestResult.removeNodesInRange(hitTestResult.hitDepth + 1, hitTestResult.size());
        hitTestResult.hitDepth++;
        hitTestResult.values.add(node);
        hitTestResult.distanceFromEdgeAndFlags.add(HitTestResultKt.DistanceAndFlags(-1.0f, z, false));
        m7989hit5ShdDok(NodeCoordinatorKt.m8017nextUntilhw7D004(node, hitTestSource.mo8015entityTypeOLwlOKw(), NodeKind.m8019constructorimpl(2)), hitTestSource, j, hitTestResult, i, z);
        hitTestResult.hitDepth = i2;
    }

    /* JADX INFO: renamed from: hitNear-Fh5PU_I, reason: not valid java name */
    private final void m7990hitNearFh5PU_I(Modifier.Node node, HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z, float f) {
        if (node == null) {
            mo7920hitTestChildqzLsGqo(hitTestSource, j, hitTestResult, i, z);
            return;
        }
        if (!hitTestSource.shouldHitTest(node)) {
            m7990hitNearFh5PU_I(NodeCoordinatorKt.m8017nextUntilhw7D004(node, hitTestSource.mo8015entityTypeOLwlOKw(), NodeKind.m8019constructorimpl(2)), hitTestSource, j, hitTestResult, i, z, f);
            return;
        }
        int i2 = hitTestResult.hitDepth;
        hitTestResult.removeNodesInRange(hitTestResult.hitDepth + 1, hitTestResult.size());
        hitTestResult.hitDepth++;
        hitTestResult.values.add(node);
        hitTestResult.distanceFromEdgeAndFlags.add(HitTestResultKt.DistanceAndFlags(f, z, false));
        m7993outOfBoundsHit8NAm7pk(NodeCoordinatorKt.m8017nextUntilhw7D004(node, hitTestSource.mo8015entityTypeOLwlOKw(), NodeKind.m8019constructorimpl(2)), hitTestSource, j, hitTestResult, i, z, f, true);
        hitTestResult.hitDepth = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v13 */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.getSVar()" because "result" is null
        	at jadx.core.dex.visitors.PrepareForCodeGen.removeInstructions(PrepareForCodeGen.java:118)
        	at jadx.core.dex.visitors.PrepareForCodeGen.visit(PrepareForCodeGen.java:85)
        */
    /* JADX INFO: renamed from: isInExpandedTouchBounds-ThD-n1k, reason: not valid java name */
    private final boolean m7991isInExpandedTouchBoundsThDn1k(androidx.compose.ui.Modifier.Node r9, long r10, int r12) {
        /*
            Method dump skipped, instruction units count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.NodeCoordinator.m7991isInExpandedTouchBoundsThDn1k(androidx.compose.ui.Modifier$Node, long, int):boolean");
    }

    /* JADX INFO: renamed from: offsetFromEdge-MK-Hz9U, reason: not valid java name */
    private final long m7992offsetFromEdgeMKHz9U(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float fMax = Math.max(0.0f, fIntBitsToFloat < 0.0f ? -fIntBitsToFloat : fIntBitsToFloat - getMeasuredWidth());
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fMax)) << 32) | (((long) Float.floatToRawIntBits(Math.max(0.0f, fIntBitsToFloat2 < 0.0f ? -fIntBitsToFloat2 : fIntBitsToFloat2 - getMeasuredHeight()))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: outOfBoundsHit-8NAm7pk, reason: not valid java name */
    public final void m7993outOfBoundsHit8NAm7pk(Modifier.Node node, HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z, float f, boolean z2) {
        if (node == null) {
            mo7920hitTestChildqzLsGqo(hitTestSource, j, hitTestResult, i, z);
            return;
        }
        if (!hitTestSource.shouldHitTest(node)) {
            m7993outOfBoundsHit8NAm7pk(NodeCoordinatorKt.m8017nextUntilhw7D004(node, hitTestSource.mo8015entityTypeOLwlOKw(), NodeKind.m8019constructorimpl(2)), hitTestSource, j, hitTestResult, i, z, f, z2);
            return;
        }
        if (m7991isInExpandedTouchBoundsThDn1k(node, j, i)) {
            hitTestResult.hitExpandedTouchBounds(node, z, new NodeCoordinator$outOfBoundsHit$1(this, node, hitTestSource, j, hitTestResult, i, z, f, z2));
        } else if (z2) {
            m7990hitNearFh5PU_I(node, hitTestSource, j, hitTestResult, i, z, f);
        } else {
            m7995speculativeHitFh5PU_I(node, hitTestSource, j, hitTestResult, i, z, f);
        }
    }

    /* JADX INFO: renamed from: placeSelf-MLgxB_4, reason: not valid java name */
    private final void m7994placeSelfMLgxB_4(long j, float f, nl3<? super GraphicsLayerScope, j59> nl3Var, GraphicsLayer graphicsLayer) {
        if (graphicsLayer != null) {
            if (!(nl3Var == null)) {
                InlineClassHelperKt.throwIllegalArgumentException("both ways to create layers shouldn't be used together");
            }
            if (this.explicitLayer != graphicsLayer) {
                this.explicitLayer = null;
                updateLayerBlock$default(this, null, false, 2, null);
                this.explicitLayer = graphicsLayer;
            }
            if (this.layer == null) {
                OwnedLayer ownedLayerCreateLayer = LayoutNodeKt.requireOwner(getLayoutNode()).createLayer(getDrawBlock(), this.invalidateParentLayer, graphicsLayer);
                ownedLayerCreateLayer.mo8081resizeozmzZPI(m7763getMeasuredSizeYbymL2g());
                ownedLayerCreateLayer.mo8080movegyyYBs(j);
                this.layer = ownedLayerCreateLayer;
                getLayoutNode().setInnerLayerCoordinatorIsDirty$ui(true);
                this.invalidateParentLayer.invoke();
            }
        } else {
            if (this.explicitLayer != null) {
                this.explicitLayer = null;
                updateLayerBlock$default(this, null, false, 2, null);
            }
            updateLayerBlock$default(this, nl3Var, false, 2, null);
        }
        if (!IntOffset.m9169equalsimpl0(mo7947getPositionnOccac(), j)) {
            LayoutNodeKt.requireOwner(getLayoutNode()).voteFrameRate(FrameRateCategory.Companion.m5664getHighNSsRyOo());
            m8010setPositiongyyYBs(j);
            OwnedLayer ownedLayer = this.layer;
            if (ownedLayer != null) {
                ownedLayer.mo8080movegyyYBs(j);
            } else {
                NodeCoordinator nodeCoordinator = this.wrappedBy;
                if (nodeCoordinator != null) {
                    nodeCoordinator.invalidateLayer();
                }
            }
            getLayoutNode().onCoordinatorRectChanged$ui(this);
            invalidateAlignmentLinesFromPositionChange(this);
            Owner owner$ui = getLayoutNode().getOwner$ui();
            if (owner$ui != null) {
                owner$ui.onLayoutChange(getLayoutNode());
            }
        }
        this.zIndex = f;
        if (this == getLayoutNode().getOuterCoordinator$ui()) {
            LayoutNodeKt.requireOwner(getLayoutNode()).getRectManager().recalculateRectIfDirty(getLayoutNode());
        }
        if (isPlacingForAlignment$ui()) {
            return;
        }
        captureRulersIfNeeded$ui(getMeasureResult$ui());
    }

    public static /* synthetic */ void rectInParent$ui$default(NodeCoordinator nodeCoordinator, MutableRect mutableRect, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: rectInParent");
            return;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        nodeCoordinator.rectInParent$ui(mutableRect, z, z2);
    }

    /* JADX INFO: renamed from: speculativeHit-Fh5PU_I, reason: not valid java name */
    private final void m7995speculativeHitFh5PU_I(Modifier.Node node, HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z, float f) {
        if (node == null) {
            mo7920hitTestChildqzLsGqo(hitTestSource, j, hitTestResult, i, z);
            return;
        }
        if (!hitTestSource.shouldHitTest(node)) {
            m7995speculativeHitFh5PU_I(NodeCoordinatorKt.m8017nextUntilhw7D004(node, hitTestSource.mo8015entityTypeOLwlOKw(), NodeKind.m8019constructorimpl(2)), hitTestSource, j, hitTestResult, i, z, f);
        } else if (hitTestSource.interceptOutOfBoundsChildEvents(node)) {
            hitTestResult.speculativeHit(node, f, z, new NodeCoordinator$speculativeHit$1(this, node, hitTestSource, j, hitTestResult, i, z, f));
        } else {
            m7993outOfBoundsHit8NAm7pk(NodeCoordinatorKt.m8017nextUntilhw7D004(node, hitTestSource.mo8015entityTypeOLwlOKw(), NodeKind.m8019constructorimpl(2)), hitTestSource, j, hitTestResult, i, z, f, false);
        }
    }

    private final NodeCoordinator toCoordinator(LayoutCoordinates layoutCoordinates) {
        NodeCoordinator coordinator;
        LookaheadLayoutCoordinates lookaheadLayoutCoordinates = layoutCoordinates instanceof LookaheadLayoutCoordinates ? (LookaheadLayoutCoordinates) layoutCoordinates : null;
        if (lookaheadLayoutCoordinates != null && (coordinator = lookaheadLayoutCoordinates.getCoordinator()) != null) {
            return coordinator;
        }
        layoutCoordinates.getClass();
        return (NodeCoordinator) layoutCoordinates;
    }

    /* JADX INFO: renamed from: toParentPosition-8S9VItk$default, reason: not valid java name */
    public static /* synthetic */ long m7996toParentPosition8S9VItk$default(NodeCoordinator nodeCoordinator, long j, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: toParentPosition-8S9VItk");
            return 0L;
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return nodeCoordinator.m8011toParentPosition8S9VItk(j, z);
    }

    /* JADX INFO: renamed from: transformFromAncestor-EL8BTi8, reason: not valid java name */
    private final void m7997transformFromAncestorEL8BTi8(NodeCoordinator nodeCoordinator, float[] fArr) {
        if (aa4.e(nodeCoordinator, this)) {
            return;
        }
        NodeCoordinator nodeCoordinator2 = this.wrappedBy;
        nodeCoordinator2.getClass();
        nodeCoordinator2.m7997transformFromAncestorEL8BTi8(nodeCoordinator, fArr);
        if (!IntOffset.m9169equalsimpl0(mo7947getPositionnOccac(), IntOffset.Companion.m9181getZeronOccac())) {
            float[] fArr2 = tmpMatrix;
            Matrix.m6485resetimpl(fArr2);
            Matrix.m6498translateimpl$default(fArr2, -IntOffset.m9170getXimpl(mo7947getPositionnOccac()), -IntOffset.m9171getYimpl(mo7947getPositionnOccac()), 0.0f, 4, null);
            Matrix.m6495timesAssign58bKbWc(fArr, fArr2);
        }
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.mo8077inverseTransform58bKbWc(fArr);
        }
    }

    /* JADX INFO: renamed from: transformToAncestor-EL8BTi8, reason: not valid java name */
    private final void m7998transformToAncestorEL8BTi8(NodeCoordinator nodeCoordinator, float[] fArr) {
        while (!this.equals(nodeCoordinator)) {
            OwnedLayer ownedLayer = this.layer;
            if (ownedLayer != null) {
                ownedLayer.mo8082transform58bKbWc(fArr);
            }
            long jMo7947getPositionnOccac = this.mo7947getPositionnOccac();
            if (!IntOffset.m9169equalsimpl0(jMo7947getPositionnOccac, IntOffset.Companion.m9181getZeronOccac())) {
                float[] fArr2 = tmpMatrix;
                Matrix.m6485resetimpl(fArr2);
                Matrix.m6498translateimpl$default(fArr2, IntOffset.m9170getXimpl(jMo7947getPositionnOccac), IntOffset.m9171getYimpl(jMo7947getPositionnOccac), 0.0f, 4, null);
                Matrix.m6495timesAssign58bKbWc(fArr, fArr2);
            }
            this = this.wrappedBy;
            this.getClass();
        }
    }

    public static /* synthetic */ void updateLayerBlock$default(NodeCoordinator nodeCoordinator, nl3 nl3Var, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: updateLayerBlock");
            return;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        nodeCoordinator.updateLayerBlock(nl3Var, z);
    }

    private final void updateLayerParameters(boolean z) {
        Owner owner$ui;
        if (this.explicitLayer != null) {
            return;
        }
        OwnedLayer ownedLayer = this.layer;
        nl3<? super GraphicsLayerScope, j59> nl3Var = this.layerBlock;
        if (ownedLayer == null) {
            if (nl3Var == null) {
                return;
            }
            InlineClassHelperKt.throwIllegalStateException("null layer with a non-null layerBlock");
            return;
        }
        if (nl3Var == null) {
            throw ag.e("updateLayerParameters requires a non-null layerBlock");
        }
        ReusableGraphicsLayerScope reusableGraphicsLayerScope = graphicsLayerScope;
        reusableGraphicsLayerScope.reset();
        reusableGraphicsLayerScope.setGraphicsDensity$ui(getLayoutNode().getDensity());
        reusableGraphicsLayerScope.setLayoutDirection$ui(getLayoutNode().getLayoutDirection());
        reusableGraphicsLayerScope.m6560setSizeuvyYCjk(IntSizeKt.m9225toSizeozmzZPI(mo7710getSizeYbymL2g()));
        getSnapshotObserver().observer.observeReads(this, onCommitAffectingLayerParams, new AnonymousClass1(nl3Var, this));
        LayerPositionalProperties layerPositionalProperties = this.layerPositionalProperties;
        if (layerPositionalProperties == null) {
            layerPositionalProperties = new LayerPositionalProperties();
            this.layerPositionalProperties = layerPositionalProperties;
        }
        LayerPositionalProperties layerPositionalProperties2 = tmpLayerPositionalProperties;
        layerPositionalProperties2.copyFrom(layerPositionalProperties);
        layerPositionalProperties.copyFrom(reusableGraphicsLayerScope);
        ownedLayer.updateLayerProperties(reusableGraphicsLayerScope);
        boolean z2 = this.isClipping;
        this.isClipping = reusableGraphicsLayerScope.getClip();
        this.lastLayerAlpha = reusableGraphicsLayerScope.getAlpha();
        boolean zHasSameValuesAs = layerPositionalProperties2.hasSameValuesAs(layerPositionalProperties);
        if (z && ((!zHasSameValuesAs || z2 != this.isClipping) && (owner$ui = getLayoutNode().getOwner$ui()) != null)) {
            owner$ui.onLayoutChange(getLayoutNode());
        }
        if (zHasSameValuesAs) {
            return;
        }
        LayoutNode layoutNode = getLayoutNode();
        layoutNode.onCoordinatorRectChanged$ui(this);
        if (layoutNode.getGloballyPositionedObservers() > 0) {
            LayoutNodeKt.requireOwner(layoutNode).requestOnPositionedCallback(layoutNode);
        }
    }

    public static /* synthetic */ void updateLayerParameters$default(NodeCoordinator nodeCoordinator, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: updateLayerParameters");
            return;
        }
        if ((i & 1) != 0) {
            z = true;
        }
        nodeCoordinator.updateLayerParameters(z);
    }

    /* JADX INFO: renamed from: calculateMinimumTouchTargetOffset-C6jSQ5I, reason: not valid java name */
    public final long m7999calculateMinimumTouchTargetOffsetC6jSQ5I(MutableRect mutableRect, long j) {
        float left = mutableRect.getLeft();
        float top = mutableRect.getTop();
        if (mutableRect.getRight() < 0.0f || left > ((int) (mo7710getSizeYbymL2g() >> 32)) || mutableRect.getBottom() < 0.0f || top > ((int) (mo7710getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) {
            return Offset.Companion.m6003getZeroF1C5BW0();
        }
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float right = (fIntBitsToFloat - (mutableRect.getRight() - mutableRect.getLeft())) / 2.0f;
        if (right > 0.0f) {
            left -= right;
        } else {
            float f = (-fIntBitsToFloat) / 2.0f;
            if (left < f) {
                left = f;
            }
        }
        float bottom = (fIntBitsToFloat2 - (mutableRect.getBottom() - mutableRect.getTop())) / 2.0f;
        if (bottom > 0.0f) {
            top -= bottom;
        } else {
            float f2 = (-fIntBitsToFloat2) / 2.0f;
            if (top < f2) {
                top = f2;
            }
        }
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(left)) << 32) | (((long) Float.floatToRawIntBits(top)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: calculateMinimumTouchTargetPadding-E7KxVPU, reason: not valid java name */
    public final long m8000calculateMinimumTouchTargetPaddingE7KxVPU(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) - getMeasuredWidth();
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - getMeasuredHeight();
        return Size.m6047constructorimpl((((long) Float.floatToRawIntBits(Math.max(0.0f, fIntBitsToFloat / 2.0f))) << 32) | (((long) Float.floatToRawIntBits(Math.max(0.0f, fIntBitsToFloat2 / 2.0f))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: distanceInMinimumTouchTarget-tz77jQw, reason: not valid java name */
    public final float m8001distanceInMinimumTouchTargettz77jQw(long j, long j2) {
        if (getMeasuredWidth() >= Float.intBitsToFloat((int) (j2 >> 32)) && getMeasuredHeight() >= Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) {
            return Float.POSITIVE_INFINITY;
        }
        long jM8000calculateMinimumTouchTargetPaddingE7KxVPU = m8000calculateMinimumTouchTargetPaddingE7KxVPU(j2);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jM8000calculateMinimumTouchTargetPaddingE7KxVPU >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jM8000calculateMinimumTouchTargetPaddingE7KxVPU & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        long jM7992offsetFromEdgeMKHz9U = m7992offsetFromEdgeMKHz9U(j);
        if ((fIntBitsToFloat > 0.0f || fIntBitsToFloat2 > 0.0f) && Float.intBitsToFloat((int) (jM7992offsetFromEdgeMKHz9U >> 32)) <= fIntBitsToFloat && Float.intBitsToFloat((int) (jM7992offsetFromEdgeMKHz9U & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) <= fIntBitsToFloat2) {
            return Offset.m5986getDistanceSquaredimpl(jM7992offsetFromEdgeMKHz9U);
        }
        return Float.POSITIVE_INFINITY;
    }

    public final void draw(Canvas canvas, GraphicsLayer graphicsLayer) {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.drawLayer(canvas, graphicsLayer);
            return;
        }
        float fM9170getXimpl = IntOffset.m9170getXimpl(mo7947getPositionnOccac());
        float fM9171getYimpl = IntOffset.m9171getYimpl(mo7947getPositionnOccac());
        canvas.translate(fM9170getXimpl, fM9171getYimpl);
        drawContainedDrawModifiers(canvas, graphicsLayer);
        canvas.translate(-fM9170getXimpl, -fM9171getYimpl);
    }

    public final void drawBorder(Canvas canvas, Paint paint) {
        canvas.drawRect(0.5f, 0.5f, ((int) (m7763getMeasuredSizeYbymL2g() >> 32)) - 0.5f, ((int) (m7763getMeasuredSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - 0.5f, paint);
    }

    public abstract void ensureLookaheadDelegateCreated();

    public final NodeCoordinator findCommonAncestor$ui(NodeCoordinator nodeCoordinator) {
        LayoutNode layoutNode = nodeCoordinator.getLayoutNode();
        LayoutNode layoutNode2 = getLayoutNode();
        if (layoutNode == layoutNode2) {
            Modifier.Node tail = nodeCoordinator.getTail();
            Modifier.Node tail2 = getTail();
            int iM8019constructorimpl = NodeKind.m8019constructorimpl(2);
            if (!tail2.getNode().isAttached()) {
                InlineClassHelperKt.throwIllegalStateException("visitLocalAncestors called on an unattached node");
            }
            for (Modifier.Node parent$ui = tail2.getNode().getParent$ui(); parent$ui != null; parent$ui = parent$ui.getParent$ui()) {
                if ((parent$ui.getKindSet$ui() & iM8019constructorimpl) != 0 && parent$ui == tail) {
                    return nodeCoordinator;
                }
            }
            return this;
        }
        while (layoutNode.getDepth$ui() > layoutNode2.getDepth$ui()) {
            layoutNode = layoutNode.getParent$ui();
            layoutNode.getClass();
        }
        while (layoutNode2.getDepth$ui() > layoutNode.getDepth$ui()) {
            layoutNode2 = layoutNode2.getParent$ui();
            layoutNode2.getClass();
        }
        while (layoutNode != layoutNode2) {
            layoutNode = layoutNode.getParent$ui();
            layoutNode2 = layoutNode2.getParent$ui();
            if (layoutNode == null || layoutNode2 == null) {
                fg.c("layouts are not part of the same hierarchy");
                return null;
            }
        }
        if (layoutNode2 != getLayoutNode()) {
            if (layoutNode != nodeCoordinator.getLayoutNode()) {
                return layoutNode.getInnerCoordinator$ui();
            }
            return nodeCoordinator;
        }
        return this;
    }

    /* JADX INFO: renamed from: fromParentPosition-8S9VItk, reason: not valid java name */
    public long m8002fromParentPosition8S9VItk(long j, boolean z) {
        if (z || !isPlacedUnderMotionFrameOfReference()) {
            j = IntOffsetKt.m9183minusNvtHpc(j, mo7947getPositionnOccac());
        }
        OwnedLayer ownedLayer = this.layer;
        return ownedLayer != null ? ownedLayer.mo8079mapOffset8S9VItk(j, true) : j;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public AlignmentLinesOwner getAlignmentLinesOwner() {
        return getLayoutNode().getLayoutDelegate$ui().getAlignmentLinesOwner$ui();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LookaheadCapablePlaceable getChild() {
        return this.wrapped;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LayoutCoordinates getCoordinates() {
        return this;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return getLayoutNode().getDensity().getDensity();
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public float getFontScale() {
        return getLayoutNode().getDensity().getFontScale();
    }

    public final boolean getForceMeasureWithLookaheadConstraints$ui() {
        return this.forceMeasureWithLookaheadConstraints;
    }

    public final boolean getForcePlaceWithLookaheadOffset$ui() {
        return this.forcePlaceWithLookaheadOffset;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public boolean getHasMeasureResult() {
        return this._measureResult != null;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public boolean getIntroducesMotionFrameOfReference() {
        return isPlacedUnderMotionFrameOfReference();
    }

    public final boolean getLastClip$ui() {
        return this.lastClip;
    }

    public final boolean getLastLayerDrawingWasSkipped$ui() {
        return this.lastLayerDrawingWasSkipped;
    }

    /* JADX INFO: renamed from: getLastMeasurementConstraints-msEJaDk$ui, reason: not valid java name */
    public final long m8003getLastMeasurementConstraintsmsEJaDk$ui() {
        return m7764getMeasurementConstraintsmsEJaDk();
    }

    public final Shape getLastShape$ui() {
        return this.lastShape;
    }

    public final OwnedLayer getLayer() {
        return this.layer;
    }

    public final nl3<GraphicsLayerScope, j59> getLayerBlock() {
        return this.layerBlock;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public LayoutDirection getLayoutDirection() {
        return getLayoutNode().getLayoutDirection();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.node.MeasureScopeWithLayoutNode
    public LayoutNode getLayoutNode() {
        return this.layoutNode;
    }

    public abstract LookaheadDelegate getLookaheadDelegate();

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public MeasureResult getMeasureResult$ui() {
        MeasureResult measureResult = this._measureResult;
        if (measureResult != null) {
            return measureResult;
        }
        ah.f(UnmeasuredError);
        return null;
    }

    /* JADX INFO: renamed from: getMinimumTouchTargetSize-NH-jbRc, reason: not valid java name */
    public final long m8004getMinimumTouchTargetSizeNHjbRc() {
        return this.layerDensity.mo1435toSizeXkaWNTQ(getLayoutNode().getViewConfiguration().mo7934getMinimumTouchTargetSizeMYxV2XQ());
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LookaheadCapablePlaceable getParent() {
        return this.wrappedBy;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final LayoutCoordinates getParentCoordinates() {
        if (!isAttached()) {
            InlineClassHelperKt.throwIllegalStateException(ExpectAttachedLayoutCoordinates);
        }
        onCoordinatesUsed$ui();
        return this.wrappedBy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v8 */
    @Override // androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.IntrinsicMeasurable
    public Object getParentData() {
        if (!getLayoutNode().getNodes$ui().m7979hasH91voCI$ui(NodeKind.m8019constructorimpl(64))) {
            return null;
        }
        getTail();
        r07 r07Var = new r07();
        for (Modifier.Node tail$ui = getLayoutNode().getNodes$ui().getTail$ui(); tail$ui != null; tail$ui = tail$ui.getParent$ui()) {
            if ((NodeKind.m8019constructorimpl(64) & tail$ui.getKindSet$ui()) != 0) {
                int iM8019constructorimpl = NodeKind.m8019constructorimpl(64);
                MutableVector mutableVector = null;
                Modifier.Node nodePop = tail$ui;
                while (nodePop != 0) {
                    if (nodePop instanceof ParentDataModifierNode) {
                        r07Var.b = ((ParentDataModifierNode) nodePop).modifyParentData(getLayoutNode().getDensity(), r07Var.b);
                    } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                        Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui();
                        int i = 0;
                        nodePop = nodePop;
                        while (delegate$ui != null) {
                            if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                i++;
                                if (i == 1) {
                                    nodePop = delegate$ui;
                                } else {
                                    if (mutableVector == null) {
                                        mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                    }
                                    if (nodePop != 0) {
                                        mutableVector.add(nodePop);
                                        nodePop = 0;
                                    }
                                    mutableVector.add(delegate$ui);
                                }
                            }
                            delegate$ui = delegate$ui.getChild$ui();
                            nodePop = nodePop;
                        }
                        if (i == 1) {
                        }
                    }
                    nodePop = DelegatableNodeKt.pop(mutableVector);
                }
            }
        }
        return r07Var.b;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final LayoutCoordinates getParentLayoutCoordinates() {
        if (!isAttached()) {
            StringBuilder sb = new StringBuilder(ExpectAttachedLayoutCoordinates);
            for (LayoutNode layoutNode = getLayoutNode(); layoutNode != null; layoutNode = layoutNode.getParent$ui()) {
                sb.append("\n|");
                sb.append(layoutNode);
                sb.append(" isAttached=");
                sb.append(layoutNode.isAttached());
                sb.append(" modifier=");
                sb.append(layoutNode.getModifier());
                sb.append(" tail=");
                sb.append(getTail());
            }
            InlineClassHelperKt.throwIllegalStateException(sb.toString());
        }
        onCoordinatesUsed$ui();
        return getLayoutNode().getOuterCoordinator$ui().wrappedBy;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    /* JADX INFO: renamed from: getPosition-nOcc-ac */
    public long mo7947getPositionnOccac() {
        return this.position;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public Set<AlignmentLine> getProvidedAlignmentLines() {
        Set setAsSet;
        MutableScatterSet mutableScatterSetMutableScatterSetOf = null;
        while (this != null) {
            MeasureResult measureResult = this._measureResult;
            Map<AlignmentLine, Integer> alignmentLines = measureResult != null ? measureResult.getAlignmentLines() : null;
            if (alignmentLines != null && (!alignmentLines.isEmpty())) {
                if (mutableScatterSetMutableScatterSetOf == null) {
                    mutableScatterSetMutableScatterSetOf = ScatterSetKt.mutableScatterSetOf();
                }
                mutableScatterSetMutableScatterSetOf.addAll(alignmentLines.keySet());
            }
            this = this.wrapped;
        }
        return (mutableScatterSetMutableScatterSetOf == null || (setAsSet = mutableScatterSetMutableScatterSetOf.asSet()) == null) ? ox2.b : setAsSet;
    }

    public final MutableRect getRectCache() {
        MutableRect mutableRect = this._rectCache;
        if (mutableRect != null) {
            return mutableRect;
        }
        MutableRect mutableRect2 = new MutableRect(0.0f, 0.0f, 0.0f, 0.0f);
        this._rectCache = mutableRect2;
        return mutableRect2;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: getSize-YbymL2g */
    public final long mo7710getSizeYbymL2g() {
        return m7763getMeasuredSizeYbymL2g();
    }

    public abstract Modifier.Node getTail();

    public final boolean getWasLayerBlockInvoked$ui() {
        return this.wasLayerBlockInvoked;
    }

    public final NodeCoordinator getWrapped$ui() {
        return this.wrapped;
    }

    public final NodeCoordinator getWrappedBy$ui() {
        return this.wrappedBy;
    }

    public final float getZIndex() {
        return this.zIndex;
    }

    /* JADX INFO: renamed from: head-H91voCI, reason: not valid java name */
    public final Modifier.Node m8005headH91voCI(int i) {
        boolean zM8028getIncludeSelfInTraversalH91voCI = NodeKindKt.m8028getIncludeSelfInTraversalH91voCI(i);
        Modifier.Node tail = getTail();
        if (!zM8028getIncludeSelfInTraversalH91voCI && (tail = tail.getParent$ui()) == null) {
            return null;
        }
        for (Modifier.Node nodeHeadNode = headNode(zM8028getIncludeSelfInTraversalH91voCI); nodeHeadNode != null && (nodeHeadNode.getAggregateChildKindSet$ui() & i) != 0; nodeHeadNode = nodeHeadNode.getChild$ui()) {
            if ((nodeHeadNode.getKindSet$ui() & i) != 0) {
                return nodeHeadNode;
            }
            if (nodeHeadNode == tail) {
                return null;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: hitTest-qzLsGqo, reason: not valid java name */
    public final void m8006hitTestqzLsGqo(HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z) {
        boolean z2;
        Modifier.Node nodeM8005headH91voCI = m8005headH91voCI(hitTestSource.mo8015entityTypeOLwlOKw());
        boolean z3 = false;
        if (!m8013withinLayerBoundsk4lQ0M(j)) {
            if (PointerType.m7642equalsimpl0(i, PointerType.Companion.m7649getTouchT8wyACA())) {
                float fM8001distanceInMinimumTouchTargettz77jQw = m8001distanceInMinimumTouchTargettz77jQw(j, m8004getMinimumTouchTargetSizeNHjbRc());
                if ((Float.floatToRawIntBits(fM8001distanceInMinimumTouchTargettz77jQw) & Integer.MAX_VALUE) >= 2139095040 || !hitTestResult.isHitInMinimumTouchTargetBetter(fM8001distanceInMinimumTouchTargettz77jQw, false)) {
                    return;
                }
                m7990hitNearFh5PU_I(nodeM8005headH91voCI, hitTestSource, j, hitTestResult, i, false, fM8001distanceInMinimumTouchTargettz77jQw);
                return;
            }
            return;
        }
        if (nodeM8005headH91voCI == null) {
            mo7920hitTestChildqzLsGqo(hitTestSource, j, hitTestResult, i, z);
            return;
        }
        if (m8007isPointerInBoundsk4lQ0M(j)) {
            m7989hit5ShdDok(nodeM8005headH91voCI, hitTestSource, j, hitTestResult, i, z);
            return;
        }
        float fM8001distanceInMinimumTouchTargettz77jQw2 = !PointerType.m7642equalsimpl0(i, PointerType.Companion.m7649getTouchT8wyACA()) ? Float.POSITIVE_INFINITY : m8001distanceInMinimumTouchTargettz77jQw(j, m8004getMinimumTouchTargetSizeNHjbRc());
        if ((Float.floatToRawIntBits(fM8001distanceInMinimumTouchTargettz77jQw2) & Integer.MAX_VALUE) < 2139095040) {
            z2 = z;
            if (hitTestResult.isHitInMinimumTouchTargetBetter(fM8001distanceInMinimumTouchTargettz77jQw2, z2)) {
                z3 = true;
            }
        } else {
            z2 = z;
        }
        m7993outOfBoundsHit8NAm7pk(nodeM8005headH91voCI, hitTestSource, j, hitTestResult, i, z2, fM8001distanceInMinimumTouchTargettz77jQw2, z3);
    }

    /* JADX INFO: renamed from: hitTestChild-qzLsGqo */
    public void mo7920hitTestChildqzLsGqo(HitTestSource hitTestSource, long j, HitTestResult hitTestResult, int i, boolean z) {
        NodeCoordinator nodeCoordinator = this.wrapped;
        if (nodeCoordinator != null) {
            nodeCoordinator.m8006hitTestqzLsGqo(hitTestSource, m7987fromParentPosition8S9VItk$default(nodeCoordinator, j, false, 2, null), hitTestResult, i, z);
        }
    }

    public void invalidateLayer() {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.invalidate();
            return;
        }
        NodeCoordinator nodeCoordinator = this.wrappedBy;
        if (nodeCoordinator != null) {
            nodeCoordinator.invalidateLayer();
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public boolean isAttached() {
        return getTail().isAttached();
    }

    /* JADX INFO: renamed from: isPointerInBounds-k-4lQ0M, reason: not valid java name */
    public final boolean m8007isPointerInBoundsk4lQ0M(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        return fIntBitsToFloat >= 0.0f && fIntBitsToFloat2 >= 0.0f && fIntBitsToFloat < ((float) getMeasuredWidth()) && fIntBitsToFloat2 < ((float) getMeasuredHeight());
    }

    public final boolean isTransparent() {
        if (this.layer != null && this.lastLayerAlpha <= 0.0f) {
            return true;
        }
        NodeCoordinator nodeCoordinator = this.wrappedBy;
        if (nodeCoordinator != null) {
            return nodeCoordinator.isTransparent();
        }
        return false;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValidOwnerScope() {
        return (this.layer == null || this.released || !getLayoutNode().isAttached()) ? false : true;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public Rect localBoundingBoxOf(LayoutCoordinates layoutCoordinates, boolean z) {
        if (!isAttached()) {
            InlineClassHelperKt.throwIllegalStateException(ExpectAttachedLayoutCoordinates);
        }
        if (!layoutCoordinates.isAttached()) {
            InlineClassHelperKt.throwIllegalStateException("LayoutCoordinates " + layoutCoordinates + " is not attached!");
        }
        NodeCoordinator coordinator = toCoordinator(layoutCoordinates);
        coordinator.onCoordinatesUsed$ui();
        NodeCoordinator nodeCoordinatorFindCommonAncestor$ui = findCommonAncestor$ui(coordinator);
        MutableRect rectCache = getRectCache();
        rectCache.setLeft(0.0f);
        rectCache.setTop(0.0f);
        rectCache.setRight((int) (layoutCoordinates.mo7710getSizeYbymL2g() >> 32));
        rectCache.setBottom((int) (layoutCoordinates.mo7710getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        NodeCoordinator nodeCoordinator = coordinator;
        while (nodeCoordinator != nodeCoordinatorFindCommonAncestor$ui) {
            boolean z2 = z;
            rectInParent$ui$default(nodeCoordinator, rectCache, z2, false, 4, null);
            if (rectCache.isEmpty()) {
                return Rect.Companion.getZero();
            }
            nodeCoordinator = nodeCoordinator.wrappedBy;
            nodeCoordinator.getClass();
            z = z2;
        }
        ancestorToLocal(nodeCoordinatorFindCommonAncestor$ui, rectCache, z);
        return MutableRectKt.toRect(rectCache);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: localPositionOf-R5De75A */
    public long mo7711localPositionOfR5De75A(LayoutCoordinates layoutCoordinates, long j) {
        return mo7712localPositionOfS_NoaFU(layoutCoordinates, j, true);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: localPositionOf-S_NoaFU */
    public long mo7712localPositionOfS_NoaFU(LayoutCoordinates layoutCoordinates, long j, boolean z) {
        if (layoutCoordinates instanceof LookaheadLayoutCoordinates) {
            LookaheadLayoutCoordinates lookaheadLayoutCoordinates = (LookaheadLayoutCoordinates) layoutCoordinates;
            lookaheadLayoutCoordinates.getCoordinator().onCoordinatesUsed$ui();
            return Offset.m5979constructorimpl(lookaheadLayoutCoordinates.mo7712localPositionOfS_NoaFU(this, Offset.m5979constructorimpl(j ^ (-9223372034707292160L)), z) ^ (-9223372034707292160L));
        }
        NodeCoordinator coordinator = toCoordinator(layoutCoordinates);
        coordinator.onCoordinatesUsed$ui();
        NodeCoordinator nodeCoordinatorFindCommonAncestor$ui = findCommonAncestor$ui(coordinator);
        while (coordinator != nodeCoordinatorFindCommonAncestor$ui) {
            j = coordinator.m8011toParentPosition8S9VItk(j, z);
            coordinator = coordinator.wrappedBy;
            coordinator.getClass();
        }
        return m7986ancestorToLocalS_NoaFU(nodeCoordinatorFindCommonAncestor$ui, j, z);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: localToRoot-MK-Hz9U */
    public long mo7713localToRootMKHz9U(long j) {
        if (!isAttached()) {
            InlineClassHelperKt.throwIllegalStateException(ExpectAttachedLayoutCoordinates);
        }
        onCoordinatesUsed$ui();
        long jM7996toParentPosition8S9VItk$default = j;
        for (NodeCoordinator nodeCoordinator = this; nodeCoordinator != null; nodeCoordinator = nodeCoordinator.wrappedBy) {
            LayoutNode layoutNode = nodeCoordinator.getLayoutNode();
            if (nodeCoordinator == layoutNode.getOuterCoordinator$ui() && !layoutNode.getHasPositionalLayerTransformationsInOffsetFromRoot$ui()) {
                long jM8284getOffsetFromRectListForBjo55l4 = LayoutNodeKt.requireOwner(layoutNode).getRectManager().m8284getOffsetFromRectListForBjo55l4(layoutNode);
                if (!IntOffset.m9169equalsimpl0(jM8284getOffsetFromRectListForBjo55l4, IntOffset.Companion.m9180getMaxnOccac())) {
                    return IntOffsetKt.m9185plusNvtHpc(jM7996toParentPosition8S9VItk$default, jM8284getOffsetFromRectListForBjo55l4);
                }
            }
            jM7996toParentPosition8S9VItk$default = m7996toParentPosition8S9VItk$default(nodeCoordinator, jM7996toParentPosition8S9VItk$default, false, 2, null);
        }
        return jM7996toParentPosition8S9VItk$default;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: localToScreen-MK-Hz9U */
    public long mo7714localToScreenMKHz9U(long j) {
        if (!isAttached()) {
            InlineClassHelperKt.throwIllegalStateException(ExpectAttachedLayoutCoordinates);
        }
        return LayoutNodeKt.requireOwner(getLayoutNode()).mo7651localToScreenMKHz9U(mo7713localToRootMKHz9U(j));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: localToWindow-MK-Hz9U */
    public long mo7715localToWindowMKHz9U(long j) {
        return LayoutNodeKt.requireOwner(getLayoutNode()).mo8084calculatePositionInWindowMKHz9U(mo7713localToRootMKHz9U(j));
    }

    public final void onCoordinatesUsed$ui() {
        getLayoutNode().getLayoutDelegate$ui().onCoordinatesUsed();
    }

    public void onLayoutModifierNodeChanged() {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.invalidate();
        }
    }

    public final void onLayoutNodeDetach() {
        releaseLayer();
        if (getLayoutNode().isPlaced()) {
            onUnplaced();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v8 */
    public void onMeasureResultChanged(int i, int i2) {
        NodeCoordinator nodeCoordinator;
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.mo8081resizeozmzZPI(IntSize.m9208constructorimpl((((long) i) << 32) | (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        } else if (getLayoutNode().isPlaced() && (nodeCoordinator = this.wrappedBy) != null) {
            nodeCoordinator.invalidateLayer();
        }
        m7766setMeasuredSizeozmzZPI(IntSize.m9208constructorimpl((((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32)));
        if (this.layerBlock != null) {
            updateLayerParameters(false);
        }
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(4);
        boolean zM8028getIncludeSelfInTraversalH91voCI = NodeKindKt.m8028getIncludeSelfInTraversalH91voCI(iM8019constructorimpl);
        Modifier.Node tail = getTail();
        if (zM8028getIncludeSelfInTraversalH91voCI || (tail = tail.getParent$ui()) != null) {
            for (Modifier.Node nodeHeadNode = headNode(zM8028getIncludeSelfInTraversalH91voCI); nodeHeadNode != null && (nodeHeadNode.getAggregateChildKindSet$ui() & iM8019constructorimpl) != 0; nodeHeadNode = nodeHeadNode.getChild$ui()) {
                if ((nodeHeadNode.getKindSet$ui() & iM8019constructorimpl) != 0) {
                    Modifier.Node nodePop = nodeHeadNode;
                    MutableVector mutableVector = null;
                    while (nodePop != 0) {
                        if (nodePop instanceof DrawModifierNode) {
                            ((DrawModifierNode) nodePop).onMeasureResultChanged();
                        } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                            Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui();
                            int i3 = 0;
                            nodePop = nodePop;
                            while (delegate$ui != null) {
                                if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                    i3++;
                                    if (i3 == 1) {
                                        nodePop = delegate$ui;
                                    } else {
                                        if (mutableVector == null) {
                                            mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                        }
                                        if (nodePop != 0) {
                                            mutableVector.add(nodePop);
                                            nodePop = 0;
                                        }
                                        mutableVector.add(delegate$ui);
                                    }
                                }
                                delegate$ui = delegate$ui.getChild$ui();
                                nodePop = nodePop;
                            }
                            if (i3 == 1) {
                            }
                        }
                        nodePop = DelegatableNodeKt.pop(mutableVector);
                    }
                }
                if (nodeHeadNode == tail) {
                    break;
                }
            }
        }
        Owner owner$ui = getLayoutNode().getOwner$ui();
        if (owner$ui != null) {
            owner$ui.onLayoutChange(getLayoutNode());
        }
        getLayoutNode().onCoordinatorRectChanged$ui(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v10 */
    public final void onMeasured() {
        Modifier.Node parent$ui;
        if (m7988hasNodeH91voCI(NodeKind.m8019constructorimpl(128))) {
            Snapshot.Companion companion = Snapshot.Companion;
            Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
            nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                int iM8019constructorimpl = NodeKind.m8019constructorimpl(128);
                boolean zM8028getIncludeSelfInTraversalH91voCI = NodeKindKt.m8028getIncludeSelfInTraversalH91voCI(iM8019constructorimpl);
                if (!zM8028getIncludeSelfInTraversalH91voCI) {
                    parent$ui = getTail().getParent$ui();
                    if (parent$ui == null) {
                    }
                    j59 j59Var = j59.a;
                }
                parent$ui = getTail();
                for (Modifier.Node nodeHeadNode = headNode(zM8028getIncludeSelfInTraversalH91voCI); nodeHeadNode != null && (nodeHeadNode.getAggregateChildKindSet$ui() & iM8019constructorimpl) != 0; nodeHeadNode = nodeHeadNode.getChild$ui()) {
                    if ((nodeHeadNode.getKindSet$ui() & iM8019constructorimpl) != 0) {
                        MutableVector mutableVector = null;
                        Modifier.Node nodePop = nodeHeadNode;
                        while (nodePop != 0) {
                            if (nodePop instanceof MeasuredSizeAwareModifierNode) {
                                ((MeasuredSizeAwareModifierNode) nodePop).mo1423onRemeasuredozmzZPI(m7763getMeasuredSizeYbymL2g());
                            } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                                Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui();
                                int i = 0;
                                nodePop = nodePop;
                                while (delegate$ui != null) {
                                    if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                        i++;
                                        if (i == 1) {
                                            nodePop = delegate$ui;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (nodePop != 0) {
                                                mutableVector.add(nodePop);
                                                nodePop = 0;
                                            }
                                            mutableVector.add(delegate$ui);
                                        }
                                    }
                                    delegate$ui = delegate$ui.getChild$ui();
                                    nodePop = nodePop;
                                }
                                if (i == 1) {
                                }
                            }
                            nodePop = DelegatableNodeKt.pop(mutableVector);
                        }
                    }
                    if (nodeHeadNode == parent$ui) {
                        break;
                    }
                }
                j59 j59Var2 = j59.a;
            } finally {
                companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v6 */
    public final void onPlaced() {
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(4194304);
        boolean zM8028getIncludeSelfInTraversalH91voCI = NodeKindKt.m8028getIncludeSelfInTraversalH91voCI(iM8019constructorimpl);
        Modifier.Node tail = getTail();
        if (!zM8028getIncludeSelfInTraversalH91voCI && (tail = tail.getParent$ui()) == null) {
            return;
        }
        for (Modifier.Node nodeHeadNode = headNode(zM8028getIncludeSelfInTraversalH91voCI); nodeHeadNode != null && (nodeHeadNode.getAggregateChildKindSet$ui() & iM8019constructorimpl) != 0; nodeHeadNode = nodeHeadNode.getChild$ui()) {
            if ((nodeHeadNode.getKindSet$ui() & iM8019constructorimpl) != 0) {
                Modifier.Node nodePop = nodeHeadNode;
                MutableVector mutableVector = null;
                while (nodePop != 0) {
                    if (nodePop instanceof LayoutAwareModifierNode) {
                        ((LayoutAwareModifierNode) nodePop).onPlaced(this);
                    } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                        Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui();
                        int i = 0;
                        nodePop = nodePop;
                        while (delegate$ui != null) {
                            if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                i++;
                                if (i == 1) {
                                    nodePop = delegate$ui;
                                } else {
                                    if (mutableVector == null) {
                                        mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                    }
                                    if (nodePop != 0) {
                                        mutableVector.add(nodePop);
                                        nodePop = 0;
                                    }
                                    mutableVector.add(delegate$ui);
                                }
                            }
                            delegate$ui = delegate$ui.getChild$ui();
                            nodePop = nodePop;
                        }
                        if (i == 1) {
                        }
                    }
                    nodePop = DelegatableNodeKt.pop(mutableVector);
                }
            }
            if (nodeHeadNode == tail) {
                return;
            }
        }
    }

    public final void onRelease() {
        this.released = true;
        this.invalidateParentLayer.invoke();
        releaseLayer();
        if (IntOffset.m9169equalsimpl0(mo7947getPositionnOccac(), IntOffset.Companion.m9181getZeronOccac())) {
            return;
        }
        getLayoutNode().onCoordinatorRectChanged$ui(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v6 */
    public final void onUnplaced() {
        if (m7988hasNodeH91voCI(NodeKind.m8019constructorimpl(1048576))) {
            int iM8019constructorimpl = NodeKind.m8019constructorimpl(1048576);
            boolean zM8028getIncludeSelfInTraversalH91voCI = NodeKindKt.m8028getIncludeSelfInTraversalH91voCI(iM8019constructorimpl);
            Modifier.Node tail = getTail();
            if (!zM8028getIncludeSelfInTraversalH91voCI && (tail = tail.getParent$ui()) == null) {
                return;
            }
            for (Modifier.Node nodeHeadNode = headNode(zM8028getIncludeSelfInTraversalH91voCI); nodeHeadNode != null && (nodeHeadNode.getAggregateChildKindSet$ui() & iM8019constructorimpl) != 0; nodeHeadNode = nodeHeadNode.getChild$ui()) {
                if ((nodeHeadNode.getKindSet$ui() & iM8019constructorimpl) != 0) {
                    Modifier.Node nodePop = nodeHeadNode;
                    MutableVector mutableVector = null;
                    while (nodePop != 0) {
                        if (nodePop instanceof UnplacedAwareModifierNode) {
                            ((UnplacedAwareModifierNode) nodePop).onUnplaced();
                        } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                            Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui();
                            int i = 0;
                            nodePop = nodePop;
                            while (delegate$ui != null) {
                                if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                                    i++;
                                    if (i == 1) {
                                        nodePop = delegate$ui;
                                    } else {
                                        if (mutableVector == null) {
                                            mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                        }
                                        if (nodePop != 0) {
                                            mutableVector.add(nodePop);
                                            nodePop = 0;
                                        }
                                        mutableVector.add(delegate$ui);
                                    }
                                }
                                delegate$ui = delegate$ui.getChild$ui();
                                nodePop = nodePop;
                            }
                            if (i == 1) {
                            }
                        }
                        nodePop = DelegatableNodeKt.pop(mutableVector);
                    }
                }
                if (nodeHeadNode == tail) {
                    return;
                }
            }
        }
    }

    public void performDraw(Canvas canvas, GraphicsLayer graphicsLayer) {
        NodeCoordinator nodeCoordinator = this.wrapped;
        if (nodeCoordinator != null) {
            nodeCoordinator.draw(canvas, graphicsLayer);
        }
    }

    /* JADX INFO: renamed from: performingMeasure-K40F9xA, reason: not valid java name */
    public final Placeable m8008performingMeasureK40F9xA(long j, ll3<? extends Placeable> ll3Var) {
        m7767setMeasurementConstraintsBRTryo0(j);
        return ll3Var.invoke();
    }

    @Override // androidx.compose.ui.layout.Placeable
    /* JADX INFO: renamed from: placeAt-f8xVGno */
    public void mo7765placeAtf8xVGno(long j, float f, GraphicsLayer graphicsLayer) {
        if (!this.forcePlaceWithLookaheadOffset) {
            m7994placeSelfMLgxB_4(j, f, null, graphicsLayer);
            return;
        }
        LookaheadDelegate lookaheadDelegate = getLookaheadDelegate();
        lookaheadDelegate.getClass();
        m7994placeSelfMLgxB_4(lookaheadDelegate.mo7947getPositionnOccac(), f, null, graphicsLayer);
    }

    /* JADX INFO: renamed from: placeSelfApparentToRealOffset-MLgxB_4, reason: not valid java name */
    public final void m8009placeSelfApparentToRealOffsetMLgxB_4(long j, float f, nl3<? super GraphicsLayerScope, j59> nl3Var, GraphicsLayer graphicsLayer) {
        m7994placeSelfMLgxB_4(IntOffset.m9174plusqkQi6aY(j, m7762getApparentToRealOffsetnOccac()), f, nl3Var, graphicsLayer);
    }

    public final void rectInParent$ui(MutableRect mutableRect, boolean z, boolean z2) {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            if (this.isClipping) {
                if (z2) {
                    long jM8004getMinimumTouchTargetSizeNHjbRc = m8004getMinimumTouchTargetSizeNHjbRc();
                    long jM7999calculateMinimumTouchTargetOffsetC6jSQ5I = m7999calculateMinimumTouchTargetOffsetC6jSQ5I(mutableRect, jM8004getMinimumTouchTargetSizeNHjbRc);
                    float fIntBitsToFloat = Float.intBitsToFloat((int) (jM7999calculateMinimumTouchTargetOffsetC6jSQ5I >> 32));
                    float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jM7999calculateMinimumTouchTargetOffsetC6jSQ5I & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    long jMo7710getSizeYbymL2g = mo7710getSizeYbymL2g();
                    int i = (int) (jMo7710getSizeYbymL2g >> 32);
                    int i2 = (int) (jMo7710getSizeYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                    float f = i;
                    int i3 = (int) (jM8004getMinimumTouchTargetSizeNHjbRc >> 32);
                    float fMin = Math.min(Float.intBitsToFloat(i3) + f, Math.max(f, Float.intBitsToFloat(i3) + fIntBitsToFloat));
                    float f2 = i2;
                    int i4 = (int) (jM8004getMinimumTouchTargetSizeNHjbRc & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                    mutableRect.intersect(fIntBitsToFloat, fIntBitsToFloat2, fMin, Math.min(Float.intBitsToFloat(i4) + f2, Math.max(f2, Float.intBitsToFloat(i4) + fIntBitsToFloat2)));
                } else if (z) {
                    mutableRect.intersect(0.0f, 0.0f, (int) (mo7710getSizeYbymL2g() >> 32), (int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & mo7710getSizeYbymL2g()));
                }
                if (mutableRect.isEmpty()) {
                    return;
                }
            }
            ownedLayer.mapBounds(mutableRect, false);
        }
        float fM9170getXimpl = IntOffset.m9170getXimpl(mo7947getPositionnOccac());
        mutableRect.setLeft(mutableRect.getLeft() + fM9170getXimpl);
        mutableRect.setRight(mutableRect.getRight() + fM9170getXimpl);
        float fM9171getYimpl = IntOffset.m9171getYimpl(mo7947getPositionnOccac());
        mutableRect.setTop(mutableRect.getTop() + fM9171getYimpl);
        mutableRect.setBottom(mutableRect.getBottom() + fM9171getYimpl);
    }

    public final void releaseLayer() {
        if (this.layer != null) {
            if (this.explicitLayer != null) {
                this.explicitLayer = null;
            }
            updateLayerBlock$default(this, null, false, 2, null);
            LayoutNode.requestRelayout$ui$default(getLayoutNode(), false, 1, null);
        }
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public void replace$ui() {
        GraphicsLayer graphicsLayer = this.explicitLayer;
        if (graphicsLayer != null) {
            mo7765placeAtf8xVGno(mo7947getPositionnOccac(), this.zIndex, graphicsLayer);
        } else {
            mo7703placeAtf8xVGno(mo7947getPositionnOccac(), this.zIndex, this.layerBlock);
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: screenToLocal-MK-Hz9U */
    public long mo7716screenToLocalMKHz9U(long j) {
        if (!isAttached()) {
            InlineClassHelperKt.throwIllegalStateException(ExpectAttachedLayoutCoordinates);
        }
        return mo7711localPositionOfR5De75A(LayoutCoordinatesKt.findRootCoordinates(this), LayoutNodeKt.requireOwner(getLayoutNode()).mo7652screenToLocalMKHz9U(j));
    }

    public final void setForceMeasureWithLookaheadConstraints$ui(boolean z) {
        this.forceMeasureWithLookaheadConstraints = z;
    }

    public final void setForcePlaceWithLookaheadOffset$ui(boolean z) {
        this.forcePlaceWithLookaheadOffset = z;
    }

    public final void setLastClip$ui(boolean z) {
        this.lastClip = z;
    }

    public final void setLastShape$ui(Shape shape) {
        this.lastShape = shape;
    }

    public abstract void setLookaheadDelegate(LookaheadDelegate lookaheadDelegate);

    /* JADX WARN: Code duplicated, block: B:15:0x0034  */
    /* JADX WARN: Code duplicated, block: B:28:? A[RETURN, SYNTHETIC] */
    public void setMeasureResult$ui(MeasureResult measureResult) {
        MeasureResult measureResult2 = this._measureResult;
        if (measureResult != measureResult2) {
            this._measureResult = measureResult;
            if (measureResult2 == null || measureResult.getWidth() != measureResult2.getWidth() || measureResult.getHeight() != measureResult2.getHeight()) {
                onMeasureResultChanged(measureResult.getWidth(), measureResult.getHeight());
            }
            MutableObjectIntMap<AlignmentLine> mutableObjectIntMap = this.oldAlignmentLines;
            if (mutableObjectIntMap != null) {
                mutableObjectIntMap.getClass();
                if (!mutableObjectIntMap.isNotEmpty()) {
                    if (measureResult.getAlignmentLines().isEmpty()) {
                        return;
                    }
                }
            } else if (measureResult.getAlignmentLines().isEmpty()) {
                return;
            }
            if (NodeCoordinatorKt.compareEquals(this.oldAlignmentLines, measureResult.getAlignmentLines())) {
                return;
            }
            getAlignmentLinesOwner().getAlignmentLines().onAlignmentsChanged();
            MutableObjectIntMap<AlignmentLine> mutableObjectIntMapMutableObjectIntMapOf = this.oldAlignmentLines;
            if (mutableObjectIntMapMutableObjectIntMapOf == null) {
                mutableObjectIntMapMutableObjectIntMapOf = ObjectIntMapKt.mutableObjectIntMapOf();
                this.oldAlignmentLines = mutableObjectIntMapMutableObjectIntMapOf;
            }
            mutableObjectIntMapMutableObjectIntMapOf.clear();
            for (Map.Entry<AlignmentLine, Integer> entry : measureResult.getAlignmentLines().entrySet()) {
                mutableObjectIntMapMutableObjectIntMapOf.set(entry.getKey(), entry.getValue().intValue());
            }
        }
    }

    /* JADX INFO: renamed from: setPosition--gyyYBs, reason: not valid java name */
    public void m8010setPositiongyyYBs(long j) {
        this.position = j;
    }

    public final void setWasLayerBlockInvoked$ui(boolean z) {
        this.wasLayerBlockInvoked = z;
    }

    public final void setWrapped$ui(NodeCoordinator nodeCoordinator) {
        this.wrapped = nodeCoordinator;
    }

    public final void setWrappedBy$ui(NodeCoordinator nodeCoordinator) {
        this.wrappedBy = nodeCoordinator;
    }

    public final void setZIndex(float f) {
        this.zIndex = f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v7 */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.getSVar()" because "result" is null
        	at jadx.core.dex.visitors.PrepareForCodeGen.removeInstructions(PrepareForCodeGen.java:118)
        	at jadx.core.dex.visitors.PrepareForCodeGen.visit(PrepareForCodeGen.java:85)
        */
    public final boolean shouldSharePointerInputWithSiblings() {
        /*
            r10 = this;
            r0 = 16
            int r1 = androidx.compose.ui.node.NodeKind.m8019constructorimpl(r0)
            boolean r1 = androidx.compose.ui.node.NodeKindKt.m8028getIncludeSelfInTraversalH91voCI(r1)
            androidx.compose.ui.Modifier$Node r10 = r10.headNode(r1)
            r1 = 0
            if (r10 != 0) goto L12
            return r1
        L12:
            boolean r2 = r10.isAttached()
            if (r2 == 0) goto L98
            int r2 = androidx.compose.ui.node.NodeKind.m8019constructorimpl(r0)
            androidx.compose.ui.Modifier$Node r3 = r10.getNode()
            boolean r3 = r3.isAttached()
            if (r3 != 0) goto L2b
            java.lang.String r3 = "visitLocalDescendants called on an unattached node"
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalStateException(r3)
        L2b:
            androidx.compose.ui.Modifier$Node r10 = r10.getNode()
            int r3 = r10.getAggregateChildKindSet$ui()
            r3 = r3 & r2
            if (r3 == 0) goto L98
        L36:
            if (r10 == 0) goto L98
            int r3 = r10.getKindSet$ui()
            r3 = r3 & r2
            if (r3 == 0) goto L93
            r3 = 0
            r4 = r10
            r5 = r3
        L42:
            if (r4 == 0) goto L93
            boolean r6 = r4 instanceof androidx.compose.ui.node.PointerInputModifierNode
            r7 = 1
            if (r6 == 0) goto L52
            androidx.compose.ui.node.PointerInputModifierNode r4 = (androidx.compose.ui.node.PointerInputModifierNode) r4
            boolean r4 = r4.sharePointerInputWithSiblings()
            if (r4 == 0) goto L8e
            return r7
        L52:
            int r6 = r4.getKindSet$ui()
            r6 = r6 & r2
            if (r6 == 0) goto L8e
            boolean r6 = r4 instanceof androidx.compose.ui.node.DelegatingNode
            if (r6 == 0) goto L8e
            r6 = r4
            androidx.compose.ui.node.DelegatingNode r6 = (androidx.compose.ui.node.DelegatingNode) r6
            androidx.compose.ui.Modifier$Node r6 = r6.getDelegate$ui()
            r8 = r1
        L65:
            if (r6 == 0) goto L8b
            int r9 = r6.getKindSet$ui()
            r9 = r9 & r2
            if (r9 == 0) goto L86
            int r8 = r8 + 1
            if (r8 != r7) goto L74
            r4 = r6
            goto L86
        L74:
            if (r5 != 0) goto L7d
            androidx.compose.runtime.collection.MutableVector r5 = new androidx.compose.runtime.collection.MutableVector
            androidx.compose.ui.Modifier$Node[] r9 = new androidx.compose.ui.Modifier.Node[r0]
            r5.<init>(r9, r1)
        L7d:
            if (r4 == 0) goto L83
            r5.add(r4)
            r4 = r3
        L83:
            r5.add(r6)
        L86:
            androidx.compose.ui.Modifier$Node r6 = r6.getChild$ui()
            goto L65
        L8b:
            if (r8 != r7) goto L8e
            goto L42
        L8e:
            androidx.compose.ui.Modifier$Node r4 = androidx.compose.ui.node.DelegatableNodeKt.access$pop(r5)
            goto L42
        L93:
            androidx.compose.ui.Modifier$Node r10 = r10.getChild$ui()
            goto L36
        L98:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.NodeCoordinator.shouldSharePointerInputWithSiblings():boolean");
    }

    /* JADX INFO: renamed from: toParentPosition-8S9VItk, reason: not valid java name */
    public long m8011toParentPosition8S9VItk(long j, boolean z) {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            j = ownedLayer.mo8079mapOffset8S9VItk(j, false);
        }
        return (z || !isPlacedUnderMotionFrameOfReference()) ? IntOffsetKt.m9185plusNvtHpc(j, mo7947getPositionnOccac()) : j;
    }

    public final Rect touchBoundsInRoot() {
        if (!isAttached()) {
            return Rect.Companion.getZero();
        }
        LayoutCoordinates layoutCoordinatesFindRootCoordinates = LayoutCoordinatesKt.findRootCoordinates(this);
        MutableRect rectCache = getRectCache();
        long jM8000calculateMinimumTouchTargetPaddingE7KxVPU = m8000calculateMinimumTouchTargetPaddingE7KxVPU(m8004getMinimumTouchTargetSizeNHjbRc());
        int i = (int) (jM8000calculateMinimumTouchTargetPaddingE7KxVPU >> 32);
        rectCache.setLeft(-Float.intBitsToFloat(i));
        int i2 = (int) (jM8000calculateMinimumTouchTargetPaddingE7KxVPU & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        rectCache.setTop(-Float.intBitsToFloat(i2));
        rectCache.setRight(Float.intBitsToFloat(i) + getMeasuredWidth());
        rectCache.setBottom(Float.intBitsToFloat(i2) + getMeasuredHeight());
        while (this != layoutCoordinatesFindRootCoordinates) {
            this.rectInParent$ui(rectCache, false, true);
            if (rectCache.isEmpty()) {
                return Rect.Companion.getZero();
            }
            this = this.wrappedBy;
            this.getClass();
        }
        return MutableRectKt.toRect(rectCache);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: transformFrom-EL8BTi8 */
    public void mo7717transformFromEL8BTi8(LayoutCoordinates layoutCoordinates, float[] fArr) {
        NodeCoordinator coordinator = toCoordinator(layoutCoordinates);
        coordinator.onCoordinatesUsed$ui();
        NodeCoordinator nodeCoordinatorFindCommonAncestor$ui = findCommonAncestor$ui(coordinator);
        Matrix.m6485resetimpl(fArr);
        coordinator.m7998transformToAncestorEL8BTi8(nodeCoordinatorFindCommonAncestor$ui, fArr);
        m7997transformFromAncestorEL8BTi8(nodeCoordinatorFindCommonAncestor$ui, fArr);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: transformToScreen-58bKbWc */
    public void mo7718transformToScreen58bKbWc(float[] fArr) {
        Owner ownerRequireOwner = LayoutNodeKt.requireOwner(getLayoutNode());
        NodeCoordinator coordinator = toCoordinator(LayoutCoordinatesKt.findRootCoordinates(this));
        m7998transformToAncestorEL8BTi8(coordinator, fArr);
        if (ownerRequireOwner instanceof MatrixPositionCalculator) {
            ((MatrixPositionCalculator) ownerRequireOwner).mo7475localToScreen58bKbWc(fArr);
            return;
        }
        long jPositionOnScreen = LayoutCoordinatesKt.positionOnScreen(coordinator);
        if ((9223372034707292159L & jPositionOnScreen) != androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats) {
            Matrix.m6497translateimpl(fArr, Float.intBitsToFloat((int) (jPositionOnScreen >> 32)), Float.intBitsToFloat((int) (jPositionOnScreen & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), 0.0f);
        }
    }

    public final void updateLayerBlock(nl3<? super GraphicsLayerScope, j59> nl3Var, boolean z) {
        Owner owner$ui;
        if (!(nl3Var == null || this.explicitLayer == null)) {
            InlineClassHelperKt.throwIllegalArgumentException("layerBlock can't be provided when explicitLayer is provided");
        }
        LayoutNode layoutNode = getLayoutNode();
        boolean z2 = (!z && this.layerBlock == nl3Var && aa4.e(this.layerDensity, layoutNode.getDensity()) && this.layerLayoutDirection == layoutNode.getLayoutDirection()) ? false : true;
        this.layerDensity = layoutNode.getDensity();
        this.layerLayoutDirection = layoutNode.getLayoutDirection();
        if (layoutNode.isAttached() && nl3Var != null) {
            this.layerBlock = nl3Var;
            if (this.layer != null) {
                if (z2) {
                    updateLayerParameters$default(this, false, 1, null);
                    return;
                }
                return;
            }
            OwnedLayer ownedLayerCreateLayer$default = Owner.createLayer$default(LayoutNodeKt.requireOwner(layoutNode), getDrawBlock(), this.invalidateParentLayer, null, 4, null);
            ownedLayerCreateLayer$default.mo8081resizeozmzZPI(m7763getMeasuredSizeYbymL2g());
            ownedLayerCreateLayer$default.mo8080movegyyYBs(mo7947getPositionnOccac());
            this.layer = ownedLayerCreateLayer$default;
            updateLayerParameters$default(this, false, 1, null);
            layoutNode.setInnerLayerCoordinatorIsDirty$ui(true);
            this.invalidateParentLayer.invoke();
            return;
        }
        this.layerBlock = null;
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            if (!MatrixKt.m6501isIdentity58bKbWc(ownedLayer.mo8076getUnderlyingMatrixsQKQjiQ())) {
                layoutNode.onCoordinatorRectChanged$ui(this);
            }
            ownedLayer.destroy();
            this.layer = null;
            layoutNode.setInnerLayerCoordinatorIsDirty$ui(true);
            this.invalidateParentLayer.invoke();
            if (isAttached() && layoutNode.isPlaced() && (owner$ui = layoutNode.getOwner$ui()) != null) {
                owner$ui.onLayoutChange(layoutNode);
            }
        }
        this.lastLayerDrawingWasSkipped = false;
    }

    public final void visitNodes(int i, boolean z, nl3<? super Modifier.Node, j59> nl3Var) {
        Modifier.Node tail = getTail();
        if (!z && (tail = tail.getParent$ui()) == null) {
            return;
        }
        for (Modifier.Node nodeHeadNode = headNode(z); nodeHeadNode != null && (nodeHeadNode.getAggregateChildKindSet$ui() & i) != 0; nodeHeadNode = nodeHeadNode.getChild$ui()) {
            if ((nodeHeadNode.getKindSet$ui() & i) != 0) {
                nl3Var.invoke(nodeHeadNode);
            }
            if (nodeHeadNode == tail) {
                return;
            }
        }
    }

    /* JADX INFO: renamed from: visitNodes-aLcG6gQ, reason: not valid java name */
    public final <T> void m8012visitNodesaLcG6gQ(int i, nl3<? super T, j59> nl3Var) {
        boolean zM8028getIncludeSelfInTraversalH91voCI = NodeKindKt.m8028getIncludeSelfInTraversalH91voCI(i);
        Modifier.Node tail = getTail();
        if (!zM8028getIncludeSelfInTraversalH91voCI && (tail = tail.getParent$ui()) == null) {
            return;
        }
        for (Modifier.Node nodeHeadNode = headNode(zM8028getIncludeSelfInTraversalH91voCI); nodeHeadNode != null && (nodeHeadNode.getAggregateChildKindSet$ui() & i) != 0; nodeHeadNode = nodeHeadNode.getChild$ui()) {
            if ((nodeHeadNode.getKindSet$ui() & i) != 0) {
                aa4.i();
                throw null;
            }
            if (nodeHeadNode == tail) {
                return;
            }
        }
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* JADX INFO: renamed from: windowToLocal-MK-Hz9U */
    public long mo7719windowToLocalMKHz9U(long j) {
        if (!isAttached()) {
            InlineClassHelperKt.throwIllegalStateException(ExpectAttachedLayoutCoordinates);
        }
        LayoutCoordinates layoutCoordinatesFindRootCoordinates = LayoutCoordinatesKt.findRootCoordinates(this);
        return mo7711localPositionOfR5De75A(layoutCoordinatesFindRootCoordinates, Offset.m5991minusMKHz9U(LayoutNodeKt.requireOwner(getLayoutNode()).mo8083calculateLocalPositionMKHz9U(j), LayoutCoordinatesKt.positionInRoot(layoutCoordinatesFindRootCoordinates)));
    }

    public final void withPositionTranslation(Canvas canvas, nl3<? super Canvas, j59> nl3Var) {
        float fM9170getXimpl = IntOffset.m9170getXimpl(mo7947getPositionnOccac());
        float fM9171getYimpl = IntOffset.m9171getYimpl(mo7947getPositionnOccac());
        canvas.translate(fM9170getXimpl, fM9171getYimpl);
        nl3Var.invoke(canvas);
        canvas.translate(-fM9170getXimpl, -fM9171getYimpl);
    }

    /* JADX INFO: renamed from: withinLayerBounds-k-4lQ0M, reason: not valid java name */
    public final boolean m8013withinLayerBoundsk4lQ0M(long j) {
        if ((((androidx.compose.ui.geometry.InlineClassHelperKt.DualFloatInfinityBase ^ (j & androidx.compose.ui.geometry.InlineClassHelperKt.DualFloatInfinityBase)) - androidx.compose.ui.geometry.InlineClassHelperKt.Uint64Low32) & (-9223372034707292160L)) != 0) {
            return false;
        }
        OwnedLayer ownedLayer = this.layer;
        return ownedLayer == null || !this.isClipping || ownedLayer.mo8078isInLayerk4lQ0M(j);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final HitTestSource getPointerInputSource() {
            return NodeCoordinator.PointerInputSource;
        }

        public final HitTestSource getSemanticsSource() {
            return NodeCoordinator.SemanticsSource;
        }

        private Companion() {
        }
    }

    @Override // androidx.compose.ui.layout.Placeable
    /* JADX INFO: renamed from: placeAt-f8xVGno */
    public void mo7703placeAtf8xVGno(long j, float f, nl3<? super GraphicsLayerScope, j59> nl3Var) {
        if (this.forcePlaceWithLookaheadOffset) {
            LookaheadDelegate lookaheadDelegate = getLookaheadDelegate();
            lookaheadDelegate.getClass();
            m7994placeSelfMLgxB_4(lookaheadDelegate.mo7947getPositionnOccac(), f, nl3Var, null);
            return;
        }
        m7994placeSelfMLgxB_4(j, f, nl3Var, null);
    }

    /* JADX INFO: renamed from: androidx.compose.ui.node.NodeCoordinator$updateLayerParameters$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<j59> {
        final /* synthetic */ nl3<GraphicsLayerScope, j59> $layerBlock;
        final /* synthetic */ NodeCoordinator this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(nl3<? super GraphicsLayerScope, j59> nl3Var, NodeCoordinator nodeCoordinator) {
            super(0);
            this.$layerBlock = nl3Var;
            this.this$0 = nodeCoordinator;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.$layerBlock.invoke(NodeCoordinator.graphicsLayerScope);
            boolean zE = aa4.e(this.this$0.getLastShape$ui(), NodeCoordinator.graphicsLayerScope.getShape());
            boolean z = this.this$0.getLastClip$ui() != NodeCoordinator.graphicsLayerScope.getClip();
            if (!zE || z) {
                this.this$0.setLastShape$ui(NodeCoordinator.graphicsLayerScope.getShape());
                this.this$0.setLastClip$ui(NodeCoordinator.graphicsLayerScope.getClip());
                if (this.this$0.getWasLayerBlockInvoked$ui() && (z || (this.this$0.getLastClip$ui() && !zE))) {
                    this.this$0.getLayoutNode().invalidateSemantics$ui();
                }
            }
            this.this$0.setWasLayerBlockInvoked$ui(true);
            NodeCoordinator.graphicsLayerScope.updateOutline$ui();
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ j59 invoke() {
            invoke2();
            return j59.a;
        }
    }
}
