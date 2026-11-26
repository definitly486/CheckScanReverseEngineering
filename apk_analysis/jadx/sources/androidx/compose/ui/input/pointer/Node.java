package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.util.PointerIdArray;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.node.PointerInputModifierNode;
import defpackage.j59;
import defpackage.ll3;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class Node extends NodeParent {
    public static final int $stable = 8;
    private LayoutCoordinates coordinates;
    private final Modifier.Node modifierNode;
    private PointerEvent pointerEvent;
    private boolean wasIn;
    private final PointerIdArray pointerIds = new PointerIdArray();
    private final LongSparseArray<PointerInputChange> relevantChanges = new LongSparseArray<>(2);
    private boolean isIn = true;
    private boolean hasExited = true;

    public Node(Modifier.Node node) {
        this.modifierNode = node;
    }

    private final void clearCache() {
        this.relevantChanges.clear();
        this.coordinates = null;
    }

    private final boolean dispatchIfNeeded(ll3<j59> ll3Var) {
        LayoutNode layoutNode;
        if (this.relevantChanges.isEmpty() || !this.modifierNode.isAttached()) {
            return false;
        }
        NodeCoordinator coordinator$ui = this.modifierNode.getCoordinator$ui();
        if (!((coordinator$ui == null || (layoutNode = coordinator$ui.getLayoutNode()) == null) ? false : layoutNode.isPlaced())) {
            return false;
        }
        ll3Var.invoke();
        return true;
    }

    private final boolean hasPositionChanged(PointerEvent pointerEvent, PointerEvent pointerEvent2) {
        if (pointerEvent == null || pointerEvent.getChanges().size() != pointerEvent2.getChanges().size()) {
            return true;
        }
        int size = pointerEvent2.getChanges().size();
        for (int i = 0; i < size; i++) {
            if (!Offset.m5984equalsimpl0(pointerEvent.getChanges().get(i).m7569getPositionF1C5BW0(), pointerEvent2.getChanges().get(i).m7569getPositionF1C5BW0())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0286  */
    /* JADX WARN: Code duplicated, block: B:107:0x0294  */
    /* JADX WARN: Code duplicated, block: B:98:0x0266  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v29 */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException
        */
    @Override // androidx.compose.ui.input.pointer.NodeParent
    public boolean buildCache(androidx.collection.LongSparseArray<androidx.compose.ui.input.pointer.PointerInputChange> r49, androidx.compose.ui.layout.LayoutCoordinates r50, androidx.compose.ui.input.pointer.InternalPointerEvent r51, boolean r52) {
        /*
            Method dump skipped, instruction units count: 713
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.Node.buildCache(androidx.collection.LongSparseArray, androidx.compose.ui.layout.LayoutCoordinates, androidx.compose.ui.input.pointer.InternalPointerEvent, boolean):boolean");
    }

    @Override // androidx.compose.ui.input.pointer.NodeParent
    public void cleanUpHits(InternalPointerEvent internalPointerEvent) {
        super.cleanUpHits(internalPointerEvent);
        PointerEvent pointerEvent = this.pointerEvent;
        if (pointerEvent == null) {
            return;
        }
        this.wasIn = this.isIn;
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            PointerInputChange pointerInputChange = changes.get(i);
            boolean pressed = pointerInputChange.getPressed();
            boolean zM7474activeHoverEvent0FcD4WY = internalPointerEvent.m7474activeHoverEvent0FcD4WY(pointerInputChange.m7566getIdJ3iCeTQ());
            boolean z = this.isIn;
            if ((!pressed && !zM7474activeHoverEvent0FcD4WY) || (!pressed && !z)) {
                this.pointerIds.remove(pointerInputChange.m7566getIdJ3iCeTQ());
            }
        }
        this.isIn = false;
        this.hasExited = PointerEventType.m7509equalsimpl0(pointerEvent.m7502getType7fucELk(), PointerEventType.Companion.m7514getExit7fucELk());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v7 */
    @Override // androidx.compose.ui.input.pointer.NodeParent
    public void dispatchCancel() {
        MutableVector<Node> children = getChildren();
        Node[] nodeArr = children.content;
        int size = children.getSize();
        for (int i = 0; i < size; i++) {
            nodeArr[i].dispatchCancel();
        }
        Modifier.Node nodePop = this.modifierNode;
        int iM8019constructorimpl = NodeKind.m8019constructorimpl(16);
        MutableVector mutableVector = null;
        while (nodePop != 0) {
            if (nodePop instanceof PointerInputModifierNode) {
                ((PointerInputModifierNode) nodePop).onCancelPointerInput();
            } else if ((nodePop.getKindSet$ui() & iM8019constructorimpl) != 0 && (nodePop instanceof DelegatingNode)) {
                Modifier.Node delegate$ui = ((DelegatingNode) nodePop).getDelegate$ui();
                int i2 = 0;
                nodePop = nodePop;
                while (delegate$ui != null) {
                    if ((delegate$ui.getKindSet$ui() & iM8019constructorimpl) != 0) {
                        i2++;
                        if (i2 == 1) {
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
                if (i2 == 1) {
                }
            }
            nodePop = DelegatableNodeKt.pop(mutableVector);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v6 */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException
        */
    @Override // androidx.compose.ui.input.pointer.NodeParent
    public boolean dispatchFinalEventPass(androidx.compose.ui.input.pointer.InternalPointerEvent r14) {
        /*
            r13 = this;
            androidx.collection.LongSparseArray<androidx.compose.ui.input.pointer.PointerInputChange> r0 = r13.relevantChanges
            boolean r0 = r0.isEmpty()
            r1 = 0
            if (r0 == 0) goto Lb
            goto Lb4
        Lb:
            androidx.compose.ui.Modifier$Node r0 = r13.modifierNode
            boolean r0 = r0.isAttached()
            if (r0 != 0) goto L15
            goto Lb4
        L15:
            androidx.compose.ui.Modifier$Node r0 = r13.modifierNode
            androidx.compose.ui.node.NodeCoordinator r0 = r0.getCoordinator$ui()
            if (r0 == 0) goto L28
            androidx.compose.ui.node.LayoutNode r0 = r0.getLayoutNode()
            if (r0 == 0) goto L28
            boolean r0 = r0.isPlaced()
            goto L29
        L28:
            r0 = r1
        L29:
            if (r0 != 0) goto L2d
            goto Lb4
        L2d:
            androidx.compose.ui.input.pointer.PointerEvent r0 = r13.pointerEvent
            r0.getClass()
            androidx.compose.ui.layout.LayoutCoordinates r2 = r13.coordinates
            r2.getClass()
            long r2 = r2.mo7710getSizeYbymL2g()
            androidx.compose.ui.Modifier$Node r4 = r13.modifierNode
            r5 = 16
            int r6 = androidx.compose.ui.node.NodeKind.m8019constructorimpl(r5)
            r7 = 0
            r8 = r7
        L45:
            r9 = 1
            if (r4 == 0) goto L95
            boolean r10 = r4 instanceof androidx.compose.ui.node.PointerInputModifierNode
            if (r10 == 0) goto L54
            androidx.compose.ui.node.PointerInputModifierNode r4 = (androidx.compose.ui.node.PointerInputModifierNode) r4
            androidx.compose.ui.input.pointer.PointerEventPass r9 = androidx.compose.ui.input.pointer.PointerEventPass.Final
            r4.mo1259onPointerEventH0pRuoY(r0, r9, r2)
            goto L90
        L54:
            int r10 = r4.getKindSet$ui()
            r10 = r10 & r6
            if (r10 == 0) goto L90
            boolean r10 = r4 instanceof androidx.compose.ui.node.DelegatingNode
            if (r10 == 0) goto L90
            r10 = r4
            androidx.compose.ui.node.DelegatingNode r10 = (androidx.compose.ui.node.DelegatingNode) r10
            androidx.compose.ui.Modifier$Node r10 = r10.getDelegate$ui()
            r11 = r1
        L67:
            if (r10 == 0) goto L8d
            int r12 = r10.getKindSet$ui()
            r12 = r12 & r6
            if (r12 == 0) goto L88
            int r11 = r11 + 1
            if (r11 != r9) goto L76
            r4 = r10
            goto L88
        L76:
            if (r8 != 0) goto L7f
            androidx.compose.runtime.collection.MutableVector r8 = new androidx.compose.runtime.collection.MutableVector
            androidx.compose.ui.Modifier$Node[] r12 = new androidx.compose.ui.Modifier.Node[r5]
            r8.<init>(r12, r1)
        L7f:
            if (r4 == 0) goto L85
            r8.add(r4)
            r4 = r7
        L85:
            r8.add(r10)
        L88:
            androidx.compose.ui.Modifier$Node r10 = r10.getChild$ui()
            goto L67
        L8d:
            if (r11 != r9) goto L90
            goto L45
        L90:
            androidx.compose.ui.Modifier$Node r4 = androidx.compose.ui.node.DelegatableNodeKt.access$pop(r8)
            goto L45
        L95:
            androidx.compose.ui.Modifier$Node r0 = r13.modifierNode
            boolean r0 = r0.isAttached()
            if (r0 == 0) goto Lb3
            androidx.compose.runtime.collection.MutableVector r0 = r13.getChildren()
            T[] r2 = r0.content
            int r0 = r0.getSize()
        La7:
            if (r1 >= r0) goto Lb3
            r3 = r2[r1]
            androidx.compose.ui.input.pointer.Node r3 = (androidx.compose.ui.input.pointer.Node) r3
            r3.dispatchFinalEventPass(r14)
            int r1 = r1 + 1
            goto La7
        Lb3:
            r1 = r9
        Lb4:
            r13.cleanUpHits(r14)
            r13.clearCache()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.Node.dispatchFinalEventPass(androidx.compose.ui.input.pointer.InternalPointerEvent):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException
        */
    @Override // androidx.compose.ui.input.pointer.NodeParent
    public boolean dispatchMainEventPass(androidx.collection.LongSparseArray<androidx.compose.ui.input.pointer.PointerInputChange> r12, androidx.compose.ui.layout.LayoutCoordinates r13, androidx.compose.ui.input.pointer.InternalPointerEvent r14, boolean r15) {
        /*
            Method dump skipped, instruction units count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.Node.dispatchMainEventPass(androidx.collection.LongSparseArray, androidx.compose.ui.layout.LayoutCoordinates, androidx.compose.ui.input.pointer.InternalPointerEvent, boolean):boolean");
    }

    public final Modifier.Node getModifierNode() {
        return this.modifierNode;
    }

    public final PointerIdArray getPointerIds() {
        return this.pointerIds;
    }

    public final void markIsIn() {
        this.isIn = true;
    }

    @Override // androidx.compose.ui.input.pointer.NodeParent
    public void removeInvalidPointerIdsAndChanges(long j, MutableObjectList<Node> mutableObjectList) {
        if (this.pointerIds.contains(j) && !mutableObjectList.contains(this)) {
            this.pointerIds.remove(j);
            this.relevantChanges.remove(j);
        }
        MutableVector<Node> children = getChildren();
        Node[] nodeArr = children.content;
        int size = children.getSize();
        for (int i = 0; i < size; i++) {
            nodeArr[i].removeInvalidPointerIdsAndChanges(j, mutableObjectList);
        }
    }

    public String toString() {
        return "Node(modifierNode=" + this.modifierNode + ", children=" + getChildren() + ", pointerIds=" + this.pointerIds + ')';
    }
}
