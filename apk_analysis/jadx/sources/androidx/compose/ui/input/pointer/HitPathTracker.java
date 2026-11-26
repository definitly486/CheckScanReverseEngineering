package androidx.compose.ui.input.pointer;

import androidx.collection.MutableLongObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import defpackage.aa4;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class HitPathTracker {
    public static final int $stable = 8;
    private boolean clearNodeCacheAfterDispatchedEvent;
    private boolean dispatchCancelAfterDispatchedEvent;
    private boolean dispatchingEvent;
    private boolean removeSpecificNodesAfterDispatchedEvent;
    private final LayoutCoordinates rootCoordinates;
    private final MutableObjectList<Modifier.Node> nodesToRemove = new MutableObjectList<>(0, 1, null);
    private final NodeParent root = new NodeParent();
    private final MutableLongObjectMap<MutableObjectList<Node>> hitPointerIdsAndNodesForPruningNonMatches = new MutableLongObjectMap<>(10);

    public HitPathTracker(LayoutCoordinates layoutCoordinates) {
        this.rootCoordinates = layoutCoordinates;
    }

    /* JADX INFO: renamed from: addHitPath-QJqDSyo$default, reason: not valid java name */
    public static /* synthetic */ void m7471addHitPathQJqDSyo$default(HitPathTracker hitPathTracker, long j, List list, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        hitPathTracker.m7472addHitPathQJqDSyo(j, list, z);
    }

    public static /* synthetic */ boolean dispatchChanges$default(HitPathTracker hitPathTracker, InternalPointerEvent internalPointerEvent, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return hitPathTracker.dispatchChanges(internalPointerEvent, z);
    }

    private final void removeInvalidPointerIdsAndChanges(long j, MutableObjectList<Node> mutableObjectList) {
        this.root.removeInvalidPointerIdsAndChanges(j, mutableObjectList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removePointerInputModifierNode(Modifier.Node node) {
        if (!this.dispatchingEvent) {
            this.root.removePointerInputModifierNode(node);
        } else {
            this.removeSpecificNodesAfterDispatchedEvent = true;
            this.nodesToRemove.add(node);
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00f2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x00f4 A[LOOP:2: B:40:0x00bb->B:50:0x00f4, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:59:0x00f7 A[EDGE_INSN: B:59:0x00f7->B:51:0x00f7 BREAK  A[LOOP:2: B:40:0x00bb->B:50:0x00f4], SYNTHETIC] */
    /* JADX INFO: renamed from: addHitPath-QJqDSyo, reason: not valid java name */
    public final void m7472addHitPathQJqDSyo(long j, List<? extends Modifier.Node> list, boolean z) {
        Node node;
        NodeParent nodeParent = this.root;
        int size = list.size();
        boolean z2 = true;
        for (int i = 0; i < size; i++) {
            Modifier.Node node2 = list.get(i);
            if (node2.isAttached()) {
                node2.setDetachedListener$ui(new HitPathTracker$addHitPath$1(this, node2));
                if (z2) {
                    MutableVector<Node> children = nodeParent.getChildren();
                    Node[] nodeArr = children.content;
                    int size2 = children.getSize();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= size2) {
                            node = null;
                            break;
                        }
                        node = nodeArr[i2];
                        if (aa4.e(node.getModifierNode(), node2)) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                    Node node3 = node;
                    if (node3 != null) {
                        node3.markIsIn();
                        node3.getPointerIds().add(j);
                        if (z) {
                            MutableLongObjectMap<MutableObjectList<Node>> mutableLongObjectMap = this.hitPointerIdsAndNodesForPruningNonMatches;
                            MutableObjectList<Node> mutableObjectList = mutableLongObjectMap.get(j);
                            if (mutableObjectList == null) {
                                mutableObjectList = new MutableObjectList<>(0, 1, null);
                                mutableLongObjectMap.set(j, mutableObjectList);
                            }
                            mutableObjectList.add(node3);
                        }
                        nodeParent = node3;
                    } else {
                        z2 = false;
                    }
                }
                Node node4 = new Node(node2);
                node4.getPointerIds().add(j);
                if (z) {
                    MutableLongObjectMap<MutableObjectList<Node>> mutableLongObjectMap2 = this.hitPointerIdsAndNodesForPruningNonMatches;
                    MutableObjectList<Node> mutableObjectList2 = mutableLongObjectMap2.get(j);
                    if (mutableObjectList2 == null) {
                        mutableObjectList2 = new MutableObjectList<>(0, 1, null);
                        mutableLongObjectMap2.set(j, mutableObjectList2);
                    }
                    mutableObjectList2.add(node4);
                }
                nodeParent.getChildren().add(node4);
                nodeParent = node4;
            }
        }
        if (z) {
            MutableLongObjectMap<MutableObjectList<Node>> mutableLongObjectMap3 = this.hitPointerIdsAndNodesForPruningNonMatches;
            long[] jArr = mutableLongObjectMap3.keys;
            Object[] objArr = mutableLongObjectMap3.values;
            long[] jArr2 = mutableLongObjectMap3.metadata;
            int length = jArr2.length - 2;
            if (length >= 0) {
                int i3 = 0;
                while (true) {
                    long j2 = jArr2[i3];
                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i3 != length) {
                            break;
                            break;
                        }
                        i3++;
                    } else {
                        int i4 = 8 - ((~(i3 - length)) >>> 31);
                        for (int i5 = 0; i5 < i4; i5++) {
                            if ((255 & j2) < 128) {
                                int i6 = (i3 << 3) + i5;
                                removeInvalidPointerIdsAndChanges(jArr[i6], (MutableObjectList) objArr[i6]);
                            }
                            j2 >>= 8;
                        }
                        if (i4 != 8) {
                            break;
                        } else if (i3 != length) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                }
            }
        }
        this.hitPointerIdsAndNodesForPruningNonMatches.clear();
    }

    public final void clearPreviouslyHitModifierNodeCache() {
        if (this.clearNodeCacheAfterDispatchedEvent) {
            this.clearNodeCacheAfterDispatchedEvent = true;
        } else {
            this.root.clear();
        }
    }

    public final boolean dispatchChanges(InternalPointerEvent internalPointerEvent, boolean z) {
        MutableObjectList<Modifier.Node> mutableObjectList;
        if (!this.root.buildCache(internalPointerEvent.getChanges(), this.rootCoordinates, internalPointerEvent, z)) {
            return false;
        }
        boolean z2 = true;
        this.dispatchingEvent = true;
        boolean zDispatchMainEventPass = this.root.dispatchMainEventPass(internalPointerEvent.getChanges(), this.rootCoordinates, internalPointerEvent, z);
        if (!this.root.dispatchFinalEventPass(internalPointerEvent) && !zDispatchMainEventPass) {
            z2 = false;
        }
        this.dispatchingEvent = false;
        if (this.removeSpecificNodesAfterDispatchedEvent) {
            this.removeSpecificNodesAfterDispatchedEvent = false;
            int size = this.nodesToRemove.getSize();
            int i = 0;
            while (true) {
                mutableObjectList = this.nodesToRemove;
                if (i >= size) {
                    break;
                }
                removePointerInputModifierNode(mutableObjectList.get(i));
                i++;
            }
            mutableObjectList.clear();
        }
        if (this.dispatchCancelAfterDispatchedEvent) {
            this.dispatchCancelAfterDispatchedEvent = false;
            processCancel();
        }
        if (this.clearNodeCacheAfterDispatchedEvent) {
            this.clearNodeCacheAfterDispatchedEvent = false;
            clearPreviouslyHitModifierNodeCache();
        }
        return z2;
    }

    public final NodeParent getRoot$ui() {
        return this.root;
    }

    public final void processCancel() {
        if (this.dispatchingEvent) {
            this.dispatchCancelAfterDispatchedEvent = true;
        } else {
            this.root.dispatchCancel();
            clearPreviouslyHitModifierNodeCache();
        }
    }
}
