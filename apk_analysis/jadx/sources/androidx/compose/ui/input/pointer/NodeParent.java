package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import defpackage.aa4;

/* JADX INFO: loaded from: classes2.dex */
public class NodeParent {
    public static final int $stable = 8;
    private final MutableVector<Node> children = new MutableVector<>(new Node[16], 0);
    private final MutableObjectList<NodeParent> removeMatchingPointerInputModifierNodeList = new MutableObjectList<>(10);

    public boolean buildCache(LongSparseArray<PointerInputChange> longSparseArray, LayoutCoordinates layoutCoordinates, InternalPointerEvent internalPointerEvent, boolean z) {
        MutableVector<Node> mutableVector = this.children;
        Node[] nodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            z2 = nodeArr[i].buildCache(longSparseArray, layoutCoordinates, internalPointerEvent, z) || z2;
        }
        return z2;
    }

    public void cleanUpHits(InternalPointerEvent internalPointerEvent) {
        int size = this.children.getSize();
        while (true) {
            size--;
            if (-1 >= size) {
                return;
            }
            if (this.children.content[size].getPointerIds().isEmpty()) {
                this.children.removeAt(size);
            }
        }
    }

    public final void clear() {
        this.children.clear();
    }

    public void dispatchCancel() {
        MutableVector<Node> mutableVector = this.children;
        Node[] nodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            nodeArr[i].dispatchCancel();
        }
    }

    public boolean dispatchFinalEventPass(InternalPointerEvent internalPointerEvent) {
        MutableVector<Node> mutableVector = this.children;
        Node[] nodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            z = nodeArr[i].dispatchFinalEventPass(internalPointerEvent) || z;
        }
        cleanUpHits(internalPointerEvent);
        return z;
    }

    public boolean dispatchMainEventPass(LongSparseArray<PointerInputChange> longSparseArray, LayoutCoordinates layoutCoordinates, InternalPointerEvent internalPointerEvent, boolean z) {
        MutableVector<Node> mutableVector = this.children;
        Node[] nodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            z2 = nodeArr[i].dispatchMainEventPass(longSparseArray, layoutCoordinates, internalPointerEvent, z) || z2;
        }
        return z2;
    }

    public final MutableVector<Node> getChildren() {
        return this.children;
    }

    public void removeInvalidPointerIdsAndChanges(long j, MutableObjectList<Node> mutableObjectList) {
        MutableVector<Node> mutableVector = this.children;
        Node[] nodeArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            nodeArr[i].removeInvalidPointerIdsAndChanges(j, mutableObjectList);
        }
    }

    public void removePointerInputModifierNode(Modifier.Node node) {
        this.removeMatchingPointerInputModifierNodeList.clear();
        this.removeMatchingPointerInputModifierNodeList.add(this);
        while (this.removeMatchingPointerInputModifierNodeList.isNotEmpty()) {
            MutableObjectList<NodeParent> mutableObjectList = this.removeMatchingPointerInputModifierNodeList;
            NodeParent nodeParentRemoveAt = mutableObjectList.removeAt(mutableObjectList.getSize() - 1);
            int i = 0;
            while (i < nodeParentRemoveAt.children.getSize()) {
                Node node2 = nodeParentRemoveAt.children.content[i];
                if (aa4.e(node2.getModifierNode(), node)) {
                    nodeParentRemoveAt.children.remove(node2);
                    node2.dispatchCancel();
                } else {
                    this.removeMatchingPointerInputModifierNodeList.add(node2);
                    i++;
                }
            }
        }
    }
}
