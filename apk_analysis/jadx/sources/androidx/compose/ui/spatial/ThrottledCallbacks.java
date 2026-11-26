package androidx.compose.ui.spatial;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ThrottledCallbacks {
    public static final int $stable = 8;
    private Entry globalChangeEntries;
    private long screenOffset;
    private float[] viewToWindowMatrix;
    private long windowOffset;
    private long windowSize;
    private final MutableIntObjectMap<Entry> rectChangedMap = IntObjectMapKt.mutableIntObjectMapOf();
    private long minDebounceDeadline = -1;

    public final class Entry implements DelegatableNode.RegistrationHandle {
        private long bottomRight;
        private final nl3<RelativeLayoutBounds, j59> callback;
        private final long debounceMillis;
        private final int id;
        private long lastInvokeMillis = Long.MIN_VALUE;
        private long lastUninvokedFireMillis = -1;
        private Entry next;
        private final DelegatableNode node;
        private final long throttleMillis;
        private long topLeft;

        /* JADX WARN: Multi-variable type inference failed */
        public Entry(int i, long j, long j2, DelegatableNode delegatableNode, nl3<? super RelativeLayoutBounds, j59> nl3Var) {
            this.id = i;
            this.throttleMillis = j;
            this.debounceMillis = j2;
            this.node = delegatableNode;
            this.callback = nl3Var;
        }

        /* JADX INFO: renamed from: fire-9b-9wPM, reason: not valid java name */
        public final void m8303fire9b9wPM(long j, long j2, long j3, long j4, float[] fArr) {
            RelativeLayoutBounds relativeLayoutBoundsM8304rectInfoForDg36KO4 = ThrottledCallbacksKt.m8304rectInfoForDg36KO4(this.node, j, j2, j3, j4, ThrottledCallbacks.this.getWindowSize(), fArr);
            if (relativeLayoutBoundsM8304rectInfoForDg36KO4 == null) {
                return;
            }
            this.callback.invoke(relativeLayoutBoundsM8304rectInfoForDg36KO4);
        }

        public final long getBottomRight() {
            return this.bottomRight;
        }

        public final nl3<RelativeLayoutBounds, j59> getCallback() {
            return this.callback;
        }

        public final long getDebounceMillis() {
            return this.debounceMillis;
        }

        public final int getId() {
            return this.id;
        }

        public final long getLastInvokeMillis() {
            return this.lastInvokeMillis;
        }

        public final long getLastUninvokedFireMillis() {
            return this.lastUninvokedFireMillis;
        }

        public final Entry getNext() {
            return this.next;
        }

        public final DelegatableNode getNode() {
            return this.node;
        }

        public final long getThrottleMillis() {
            return this.throttleMillis;
        }

        public final long getTopLeft() {
            return this.topLeft;
        }

        public final void setBottomRight(long j) {
            this.bottomRight = j;
        }

        public final void setLastInvokeMillis(long j) {
            this.lastInvokeMillis = j;
        }

        public final void setLastUninvokedFireMillis(long j) {
            this.lastUninvokedFireMillis = j;
        }

        public final void setNext(Entry entry) {
            this.next = entry;
        }

        public final void setTopLeft(long j) {
            this.topLeft = j;
        }

        @Override // androidx.compose.ui.node.DelegatableNode.RegistrationHandle
        public void unregister() {
            ThrottledCallbacks throttledCallbacks = ThrottledCallbacks.this;
            if (throttledCallbacks.multiRemove(throttledCallbacks.getRectChangedMap(), this.id, this)) {
                return;
            }
            ThrottledCallbacks.this.removeFromGlobalEntries(this);
        }
    }

    public ThrottledCallbacks() {
        IntOffset.Companion companion = IntOffset.Companion;
        this.windowOffset = companion.m9181getZeronOccac();
        this.screenOffset = companion.m9181getZeronOccac();
    }

    private final void addToGlobalEntries(Entry entry) {
        entry.setNext(this.globalChangeEntries);
        this.globalChangeEntries = entry;
    }

    /* JADX INFO: renamed from: debounceEntry-b8qMvQI, reason: not valid java name */
    private final long m8294debounceEntryb8qMvQI(Entry entry, long j, long j2, float[] fArr, long j3, long j4) {
        if (entry.getDebounceMillis() <= 0 || entry.getLastUninvokedFireMillis() <= 0) {
            return j4;
        }
        if (j3 - entry.getLastUninvokedFireMillis() < entry.getDebounceMillis()) {
            return Math.min(j4, entry.getDebounceMillis() + entry.getLastUninvokedFireMillis());
        }
        entry.setLastInvokeMillis(j3);
        entry.setLastUninvokedFireMillis(-1L);
        entry.m8303fire9b9wPM(entry.getTopLeft(), entry.getBottomRight(), j, j2, fArr);
        return j4;
    }

    /* JADX INFO: renamed from: fire-WY9HvpM, reason: not valid java name */
    private final void m8295fireWY9HvpM(Entry entry, long j, long j2, float[] fArr, long j3) {
        long lastInvokeMillis = entry.getLastInvokeMillis();
        boolean z = j3 - lastInvokeMillis > entry.getThrottleMillis() || lastInvokeMillis == Long.MIN_VALUE;
        boolean z2 = entry.getDebounceMillis() == 0;
        entry.setLastUninvokedFireMillis(j3);
        if (z && z2) {
            entry.setLastInvokeMillis(j3);
            entry.m8303fire9b9wPM(entry.getTopLeft(), entry.getBottomRight(), j, j2, fArr);
        }
        if (z2) {
            return;
        }
        long j4 = this.minDebounceDeadline;
        long debounceMillis = entry.getDebounceMillis() + j3;
        if (j4 <= 0 || debounceMillis >= j4) {
            return;
        }
        this.minDebounceDeadline = j4;
    }

    private final void linkedForEach(Entry entry, nl3<? super Entry, j59> nl3Var) {
        while (entry != null) {
            nl3Var.invoke(entry);
            entry = entry.getNext();
        }
    }

    private final void multiForEach(MutableIntObjectMap<Entry> mutableIntObjectMap, nl3<? super Entry, j59> nl3Var) {
        Object[] objArr = mutableIntObjectMap.values;
        long[] jArr = mutableIntObjectMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        for (Entry next = (Entry) objArr[(i << 3) + i3]; next != null; next = next.getNext()) {
                            nl3Var.invoke(next);
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    private final Entry multiPut(MutableIntObjectMap<Entry> mutableIntObjectMap, int i, Entry entry) {
        Entry entry2 = mutableIntObjectMap.get(i);
        if (entry2 == null) {
            mutableIntObjectMap.set(i, entry);
            entry2 = entry;
        }
        Entry next = entry2;
        if (next != entry) {
            while (next.getNext() != null) {
                next = next.getNext();
                next.getClass();
            }
            next.setNext(entry);
        }
        return entry;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean multiRemove(MutableIntObjectMap<Entry> mutableIntObjectMap, int i, Entry entry) {
        Entry entryRemove = mutableIntObjectMap.remove(i);
        if (entryRemove == null) {
            return false;
        }
        if (entryRemove == entry) {
            Entry next = entry.getNext();
            entry.setNext(null);
            if (next != null) {
                mutableIntObjectMap.put(i, next);
            } else {
                LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(entry.getNode().getNode());
                if (layoutNodeRequireLayoutNode.getAddedToRectList$ui()) {
                    LayoutNodeKt.requireOwner(layoutNodeRequireLayoutNode).getRectManager().unsetHasCallbacksFor(layoutNodeRequireLayoutNode);
                }
            }
            return true;
        }
        mutableIntObjectMap.put(i, entryRemove);
        while (entryRemove != null) {
            Entry next2 = entryRemove.getNext();
            if (next2 == null) {
                return false;
            }
            if (next2 == entry) {
                entryRemove.setNext(entry.getNext());
                entry.setNext(null);
                break;
            }
            entryRemove = entryRemove.getNext();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean removeFromGlobalEntries(Entry entry) {
        Entry entry2 = this.globalChangeEntries;
        if (entry2 == entry) {
            this.globalChangeEntries = entry2.getNext();
            entry.setNext(null);
            return true;
        }
        Entry next = entry2 != null ? entry2.getNext() : null;
        while (true) {
            Entry entry3 = entry2;
            entry2 = next;
            if (entry2 == null) {
                return false;
            }
            if (entry2 == entry) {
                if (entry3 != null) {
                    entry3.setNext(entry2.getNext());
                }
                entry.setNext(null);
                return true;
            }
            next = entry2.getNext();
        }
    }

    private final long roundDownToMultipleOf8(long j) {
        return (j >> 3) << 3;
    }

    private final void runFor(MutableIntObjectMap<Entry> mutableIntObjectMap, int i, nl3<? super Entry, j59> nl3Var) {
        Entry entry = mutableIntObjectMap.get(i);
        while (entry != null) {
            Entry next = entry.getNext();
            nl3Var.invoke(entry);
            entry = next;
        }
    }

    public final void fireGlobalChangeEntries(long j) {
        long j2 = this.windowOffset;
        long j3 = this.screenOffset;
        float[] fArr = this.viewToWindowMatrix;
        Entry entry = this.globalChangeEntries;
        if (entry != null) {
            for (Entry next = entry; next != null; next = next.getNext()) {
                LayoutNode layoutNodeRequireLayoutNode = DelegatableNodeKt.requireLayoutNode(next.getNode());
                long jM8284getOffsetFromRectListForBjo55l4 = LayoutNodeKt.requireOwner(layoutNodeRequireLayoutNode).getRectManager().m8284getOffsetFromRectListForBjo55l4(layoutNodeRequireLayoutNode);
                next.setTopLeft(jM8284getOffsetFromRectListForBjo55l4);
                next.setBottomRight((((long) (layoutNodeRequireLayoutNode.getWidth() + IntOffset.m9170getXimpl(jM8284getOffsetFromRectListForBjo55l4))) << 32) | (((long) (layoutNodeRequireLayoutNode.getHeight() + IntOffset.m9171getYimpl(jM8284getOffsetFromRectListForBjo55l4))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                m8295fireWY9HvpM(next, j2, j3, fArr, j);
            }
        }
    }

    public final void fireOnRectChangedEntries(long j) {
        ThrottledCallbacks throttledCallbacks = this;
        long j2 = throttledCallbacks.windowOffset;
        long j3 = throttledCallbacks.screenOffset;
        float[] fArr = throttledCallbacks.viewToWindowMatrix;
        MutableIntObjectMap<Entry> mutableIntObjectMap = throttledCallbacks.rectChangedMap;
        Object[] objArr = mutableIntObjectMap.values;
        long[] jArr = mutableIntObjectMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j4 = jArr[i];
            if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                long j5 = j4;
                int i3 = 0;
                while (i3 < i2) {
                    if ((j5 & 255) < 128) {
                        Entry next = (Entry) objArr[(i << 3) + i3];
                        while (next != null) {
                            int i4 = i3;
                            Entry entry = next;
                            throttledCallbacks.m8295fireWY9HvpM(entry, j2, j3, fArr, j);
                            next = entry.getNext();
                            throttledCallbacks = this;
                            i3 = i4;
                        }
                    }
                    j5 >>= 8;
                    i3++;
                    throttledCallbacks = this;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            }
            i++;
            throttledCallbacks = this;
        }
    }

    public final void fireOnUpdatedRect(int i, long j, long j2, long j3) {
        Entry next = this.rectChangedMap.get(i);
        while (true) {
            Entry entry = next;
            if (entry == null) {
                return;
            }
            next = entry.getNext();
            fireWithUpdatedRect$ui(entry, j, j2, j3);
        }
    }

    public final void fireWithUpdatedRect$ui(Entry entry, long j, long j2, long j3) {
        long lastInvokeMillis = entry.getLastInvokeMillis();
        long throttleMillis = entry.getThrottleMillis();
        long debounceMillis = entry.getDebounceMillis();
        boolean z = j3 - lastInvokeMillis >= throttleMillis || lastInvokeMillis == Long.MIN_VALUE;
        boolean z2 = debounceMillis == 0;
        boolean z3 = throttleMillis == 0;
        entry.setTopLeft(j);
        entry.setBottomRight(j2);
        boolean z4 = !(z2 || z3) || z2;
        if (z && z4) {
            entry.setLastUninvokedFireMillis(-1L);
            entry.setLastInvokeMillis(j3);
            entry.m8303fire9b9wPM(j, j2, this.windowOffset, this.screenOffset, this.viewToWindowMatrix);
        } else {
            if (z2) {
                return;
            }
            entry.setLastUninvokedFireMillis(j3);
            long j4 = this.minDebounceDeadline;
            long j5 = j3 + debounceMillis;
            if (j4 <= 0 || j5 >= j4) {
                return;
            }
            this.minDebounceDeadline = j4;
        }
    }

    public final void forEachNewCallbackNeverInvoked(nl3<? super Entry, j59> nl3Var) {
        MutableIntObjectMap<Entry> rectChangedMap = getRectChangedMap();
        Object[] objArr = rectChangedMap.values;
        long[] jArr = rectChangedMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        Entry entry = (Entry) objArr[(i << 3) + i3];
                        for (Entry next = entry; next != null; next = next.getNext()) {
                            if (entry.getLastInvokeMillis() == Long.MIN_VALUE) {
                                nl3Var.invoke(entry);
                            }
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public final Entry getGlobalChangeEntries() {
        return this.globalChangeEntries;
    }

    public final long getMinDebounceDeadline() {
        return this.minDebounceDeadline;
    }

    public final MutableIntObjectMap<Entry> getRectChangedMap() {
        return this.rectChangedMap;
    }

    /* JADX INFO: renamed from: getScreenOffset-nOcc-ac, reason: not valid java name */
    public final long m8296getScreenOffsetnOccac() {
        return this.screenOffset;
    }

    /* JADX INFO: renamed from: getViewToWindowMatrix-3i98HWw, reason: not valid java name */
    public final float[] m8297getViewToWindowMatrix3i98HWw() {
        return this.viewToWindowMatrix;
    }

    /* JADX INFO: renamed from: getWindowOffset-nOcc-ac, reason: not valid java name */
    public final long m8298getWindowOffsetnOccac() {
        return this.windowOffset;
    }

    public final long getWindowSize() {
        return this.windowSize;
    }

    public final DelegatableNode.RegistrationHandle registerOnGlobalChange(int i, long j, long j2, DelegatableNode delegatableNode, nl3<? super RelativeLayoutBounds, j59> nl3Var) {
        Entry entry = new Entry(i, j, j2 == 0 ? j : j2, delegatableNode, nl3Var);
        addToGlobalEntries(entry);
        return entry;
    }

    public final DelegatableNode.RegistrationHandle registerOnRectChanged(int i, long j, long j2, DelegatableNode delegatableNode, nl3<? super RelativeLayoutBounds, j59> nl3Var) {
        return multiPut(this.rectChangedMap, i, new Entry(i, j, j2 == 0 ? j : j2, delegatableNode, nl3Var));
    }

    public final void setGlobalChangeEntries(Entry entry) {
        this.globalChangeEntries = entry;
    }

    public final void setMinDebounceDeadline(long j) {
        this.minDebounceDeadline = j;
    }

    /* JADX INFO: renamed from: setScreenOffset--gyyYBs, reason: not valid java name */
    public final void m8299setScreenOffsetgyyYBs(long j) {
        this.screenOffset = j;
    }

    /* JADX INFO: renamed from: setViewToWindowMatrix-Q8lPUPs, reason: not valid java name */
    public final void m8300setViewToWindowMatrixQ8lPUPs(float[] fArr) {
        this.viewToWindowMatrix = fArr;
    }

    /* JADX INFO: renamed from: setWindowOffset--gyyYBs, reason: not valid java name */
    public final void m8301setWindowOffsetgyyYBs(long j) {
        this.windowOffset = j;
    }

    public final void setWindowSize(long j) {
        this.windowSize = j;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x008c A[LOOP:0: B:8:0x0023->B:25:0x008c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:39:0x0096 A[EDGE_INSN: B:39:0x0096->B:27:0x0096 BREAK  A[LOOP:0: B:8:0x0023->B:25:0x008c], SYNTHETIC] */
    public final void triggerDebounced(long j) {
        long j2;
        long jM8294debounceEntryb8qMvQI;
        int i;
        if (this.minDebounceDeadline > j) {
            return;
        }
        long j3 = this.windowOffset;
        long j4 = this.screenOffset;
        float[] fArr = this.viewToWindowMatrix;
        MutableIntObjectMap<Entry> mutableIntObjectMap = this.rectChangedMap;
        Object[] objArr = mutableIntObjectMap.values;
        long[] jArr = mutableIntObjectMap.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i2 = 0;
            jM8294debounceEntryb8qMvQI = Long.MAX_VALUE;
            while (true) {
                long j5 = jArr[i2];
                j2 = Long.MAX_VALUE;
                if ((((~j5) << 7) & j5 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i2 != length) {
                        break;
                        break;
                    }
                    i2++;
                } else {
                    int i3 = 8 - ((~(i2 - length)) >>> 31);
                    long j6 = j5;
                    int i4 = 0;
                    while (i4 < i3) {
                        if ((j6 & 255) < 128) {
                            Entry next = (Entry) objArr[(i2 << 3) + i4];
                            while (next != null) {
                                int i5 = i2;
                                Entry entry = next;
                                jM8294debounceEntryb8qMvQI = m8294debounceEntryb8qMvQI(entry, j3, j4, fArr, j, jM8294debounceEntryb8qMvQI);
                                i4 = i4;
                                next = entry.getNext();
                                i2 = i5;
                            }
                            i = i4;
                        } else {
                            i = i4;
                        }
                        j6 >>= 8;
                        i4 = i + 1;
                        i2 = i2;
                    }
                    int i6 = i2;
                    if (i3 != 8) {
                        break;
                    }
                    i2 = i6;
                    if (i2 != length) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        } else {
            j2 = Long.MAX_VALUE;
            jM8294debounceEntryb8qMvQI = Long.MAX_VALUE;
        }
        Entry next2 = this.globalChangeEntries;
        if (next2 != null) {
            long jM8294debounceEntryb8qMvQI2 = jM8294debounceEntryb8qMvQI;
            while (next2 != null) {
                jM8294debounceEntryb8qMvQI2 = m8294debounceEntryb8qMvQI(next2, j3, j4, fArr, j, jM8294debounceEntryb8qMvQI2);
                next2 = next2.getNext();
            }
            jM8294debounceEntryb8qMvQI = jM8294debounceEntryb8qMvQI2;
        }
        if (jM8294debounceEntryb8qMvQI == j2) {
            jM8294debounceEntryb8qMvQI = -1;
        }
        this.minDebounceDeadline = jM8294debounceEntryb8qMvQI;
    }

    /* JADX INFO: renamed from: updateOffsets-LDcG7Xg, reason: not valid java name */
    public final boolean m8302updateOffsetsLDcG7Xg(long j, long j2, float[] fArr, int i, int i2) {
        boolean z;
        if (IntOffset.m9169equalsimpl0(j2, this.windowOffset)) {
            z = false;
        } else {
            this.windowOffset = j2;
            z = true;
        }
        if (!IntOffset.m9169equalsimpl0(j, this.screenOffset)) {
            this.screenOffset = j;
            z = true;
        }
        if (fArr != null) {
            this.viewToWindowMatrix = fArr;
            z = true;
        }
        long j3 = (((long) i) << 32) | (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        if (j3 == this.windowSize) {
            return z;
        }
        this.windowSize = j3;
        return true;
    }
}
