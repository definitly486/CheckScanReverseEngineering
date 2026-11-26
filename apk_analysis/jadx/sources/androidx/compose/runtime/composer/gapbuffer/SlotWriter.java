package androidx.compose.runtime.composer.gapbuffer;

import androidx.collection.IntSetKt;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposerKt;
import androidx.compose.runtime.IntStack;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.RememberObserverHolder;
import defpackage.aa4;
import defpackage.aq5;
import defpackage.bg;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.kx6;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.re4;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SlotWriter {
    private ArrayList<GapAnchor> anchors;
    private MutableIntObjectMap<MutableIntSet> calledByMap;
    private boolean closed;
    private int currentGroup;
    private int currentGroupEnd;
    private int currentSlot;
    private int currentSlotEnd;
    private MutableIntObjectMap<MutableObjectList<Object>> deferredSlotWrites;
    private int groupGapLen;
    private int groupGapStart;
    private int[] groups;
    private int insertCount;
    private int nodeCount;
    private MutableIntList pendingRecalculateMarks;
    private Object[] slots;
    private int slotsGapLen;
    private int slotsGapOwner;
    private int slotsGapStart;
    private HashMap<GapAnchor, GapGroupSourceInformation> sourceInformationMap;
    private final SlotTable table;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private final IntStack startStack = new IntStack();
    private final IntStack endStack = new IntStack();
    private final IntStack nodeCountStack = new IntStack();
    private int parent = -1;

    /* JADX INFO: renamed from: androidx.compose.runtime.composer.gapbuffer.SlotWriter$groupSlots$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterator<Object>, re4 {
        final /* synthetic */ int $end;
        private int current;
        final /* synthetic */ SlotWriter this$0;

        public AnonymousClass1(int i, int i2, SlotWriter slotWriter) {
            this.$end = i2;
            this.this$0 = slotWriter;
            this.current = i;
        }

        public final int getCurrent() {
            return this.current;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.current < this.$end;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!hasNext()) {
                return null;
            }
            Object[] objArr = this.this$0.slots;
            SlotWriter slotWriter = this.this$0;
            int i = this.current;
            this.current = i + 1;
            return objArr[slotWriter.dataIndexToDataAddress(i)];
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final void setCurrent(int i) {
            this.current = i;
        }
    }

    public SlotWriter(SlotTable slotTable) {
        this.table = slotTable;
        this.groups = slotTable.getGroups();
        this.slots = slotTable.m5441getSlots();
        this.anchors = slotTable.getAnchors$runtime();
        this.sourceInformationMap = slotTable.getSourceInformationMap$runtime();
        this.calledByMap = slotTable.getCalledByMap$runtime();
        this.groupGapStart = slotTable.getGroupsSize();
        this.groupGapLen = (this.groups.length / 5) - slotTable.getGroupsSize();
        this.slotsGapStart = slotTable.getSlotsSize();
        this.slotsGapLen = this.slots.length - slotTable.getSlotsSize();
        this.slotsGapOwner = slotTable.getGroupsSize();
        this.currentGroupEnd = slotTable.getGroupsSize();
    }

    public static /* synthetic */ GapAnchor anchor$default(SlotWriter slotWriter, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = slotWriter.currentGroup;
        }
        return slotWriter.anchor(i);
    }

    private final int auxIndex(int[] iArr, int i) {
        return Integer.bitCount(iArr[(i * 5) + 1] >> 29) + dataIndex(iArr, i);
    }

    private final boolean childContainsAnyMarks(int i) {
        int iGroupSize = i + 1;
        int iGroupSize2 = groupSize(i) + i;
        while (iGroupSize < iGroupSize2) {
            if ((this.groups[(groupIndexToAddress(iGroupSize) * 5) + 1] & 201326592) != 0) {
                return true;
            }
            iGroupSize += groupSize(iGroupSize);
        }
        return false;
    }

    private final int childGroupAtIndex(int i, int i2) {
        int iGroupSize = groupSize(i) + i;
        int iGroupSize2 = i + 1;
        int i3 = 0;
        while (iGroupSize2 < iGroupSize && i3 < i2) {
            int iGroupIndexToAddress = groupIndexToAddress(iGroupSize2);
            iGroupSize2 += SlotTableKt.groupSize(this.groups, iGroupIndexToAddress);
            if (iGroupSize2 < iGroupSize && (this.groups[(iGroupIndexToAddress * 5) + 1] & 536870912) == 0) {
                i3++;
            }
        }
        return iGroupSize2;
    }

    private final void clearSlotGap() {
        int i = this.slotsGapStart;
        aq5.t(null, this.slots, i, this.slotsGapLen + i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean containsAnyGroupMarks(int i) {
        return i >= 0 && (this.groups[(groupIndexToAddress(i) * 5) + 1] & 201326592) != 0;
    }

    private final boolean containsGroupMark(int i) {
        return i >= 0 && (this.groups[(groupIndexToAddress(i) * 5) + 1] & 67108864) != 0;
    }

    private final int dataAnchorToDataIndex(int i, int i2, int i3) {
        return i < 0 ? (i3 - i2) + i + 1 : i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int dataIndex(int[] iArr, int i) {
        return i >= getCapacity() ? this.slots.length - this.slotsGapLen : dataAnchorToDataIndex(iArr[(i * 5) + 4], this.slotsGapLen, this.slots.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int dataIndexToDataAddress(int i) {
        return (this.slotsGapLen * (i < this.slotsGapStart ? 0 : 1)) + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int dataIndexToDataAnchor(int i, int i2, int i3, int i4) {
        return i > i2 ? -(((i4 - i3) - i) + 1) : i;
    }

    private final List<Integer> dataIndexes(int[] iArr) {
        List listDataAnchors$default = SlotTableKt.dataAnchors$default(this.groups, 0, 1, null);
        ArrayList arrayListH0 = qn1.h0(qn1.l0(kx6.n(this.groupGapStart + this.groupGapLen, iArr.length / 5), listDataAnchors$default), qn1.l0(kx6.n(0, this.groupGapStart), listDataAnchors$default));
        ArrayList arrayList = new ArrayList(arrayListH0.size());
        int size = arrayListH0.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(Integer.valueOf(dataAnchorToDataIndex(((Number) arrayListH0.get(i)).intValue(), this.slotsGapLen, this.slots.length)));
        }
        return arrayList;
    }

    private final void fixParentAnchorsFor(int i, int i2, int i3) {
        int iParentIndexToAnchor = parentIndexToAnchor(i, this.groupGapStart);
        while (i3 < i2) {
            this.groups[(groupIndexToAddress(i3) * 5) + 2] = iParentIndexToAnchor;
            int iGroupSize = SlotTableKt.groupSize(this.groups, groupIndexToAddress(i3)) + i3;
            fixParentAnchorsFor(i3, iGroupSize, i3 + 1);
            i3 = iGroupSize;
        }
    }

    private final int getCapacity() {
        return this.groups.length / 5;
    }

    private final int getCurrentGroupSlotIndex() {
        return groupSlotIndex(this.parent);
    }

    private final void groupAsString(StringBuilder sb, int i) {
        int iGroupIndexToAddress = groupIndexToAddress(i);
        sb.append("Group(");
        if (i < 10) {
            sb.append(' ');
        }
        if (i < 100) {
            sb.append(' ');
        }
        if (i < 1000) {
            sb.append(' ');
        }
        sb.append(i);
        if (iGroupIndexToAddress != i) {
            sb.append("(");
            sb.append(iGroupIndexToAddress);
            sb.append(")");
        }
        sb.append('#');
        sb.append(SlotTableKt.groupSize(this.groups, iGroupIndexToAddress));
        sb.append('^');
        int i2 = iGroupIndexToAddress * 5;
        int i3 = i2 + 2;
        sb.append(parentAnchorToIndex(this.groups[i3]));
        sb.append(": key=");
        sb.append(this.groups[i2]);
        sb.append(", nodes=");
        int i4 = i2 + 1;
        sb.append(this.groups[i4] & 67108863);
        sb.append(", dataAnchor=");
        sb.append(this.groups[i2 + 4]);
        sb.append(", parentAnchor=");
        sb.append(this.groups[i3]);
        if ((this.groups[i4] & 1073741824) != 0) {
            sb.append(", node=" + SlotTableKt.summarize(String.valueOf(this.slots[dataIndexToDataAddress(nodeIndex(this.groups, iGroupIndexToAddress))]), 10));
        }
        int iSlotIndex = slotIndex(this.groups, iGroupIndexToAddress);
        int iDataIndex = dataIndex(this.groups, groupIndexToAddress(i + 1));
        if (iDataIndex > iSlotIndex) {
            sb.append(", [");
            for (int i5 = iSlotIndex; i5 < iDataIndex; i5++) {
                if (i5 != iSlotIndex) {
                    sb.append(", ");
                }
                sb.append(SlotTableKt.summarize(String.valueOf(this.slots[dataIndexToDataAddress(i5)]), 10));
            }
            sb.append(']');
        }
        sb.append(")");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int groupIndexToAddress(int i) {
        return (this.groupGapLen * (i < this.groupGapStart ? 0 : 1)) + i;
    }

    private final GapGroupSourceInformation groupSourceInformationFor(int i, String str) {
        HashMap<GapAnchor, GapGroupSourceInformation> map = this.sourceInformationMap;
        if (map == null) {
            return null;
        }
        GapAnchor gapAnchorAnchor = anchor(i);
        GapGroupSourceInformation gapGroupSourceInformation = map.get(gapAnchorAnchor);
        if (gapGroupSourceInformation == null) {
            gapGroupSourceInformation = new GapGroupSourceInformation(0, str, 0);
            if (str == null) {
                int iGroupSize = i + 1;
                int i2 = this.currentGroup;
                while (iGroupSize < i2) {
                    gapGroupSourceInformation.reportGroup(this, iGroupSize);
                    iGroupSize += SlotTableKt.groupSize(this.groups, iGroupSize);
                }
            }
            map.put(gapAnchorAnchor, gapGroupSourceInformation);
        }
        return gapGroupSourceInformation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void insertGroups(int i) {
        if (i > 0) {
            int i2 = this.currentGroup;
            moveGroupGapTo(i2);
            int i3 = this.groupGapStart;
            int i4 = this.groupGapLen;
            int[] iArr = this.groups;
            int length = iArr.length / 5;
            int i5 = length - i4;
            if (i4 < i) {
                int iMax = Math.max(Math.max(length * 2, i5 + i), 32);
                int[] iArr2 = new int[iMax * 5];
                int i6 = iMax - i5;
                aq5.h(0, 0, i3 * 5, iArr, iArr2);
                aq5.h((i3 + i6) * 5, (i4 + i3) * 5, length * 5, iArr, iArr2);
                this.groups = iArr2;
                i4 = i6;
            }
            int i7 = this.currentGroupEnd;
            if (i7 >= i3) {
                this.currentGroupEnd = i7 + i;
            }
            int i8 = i3 + i;
            this.groupGapStart = i8;
            this.groupGapLen = i4 - i;
            int iDataIndexToDataAnchor = dataIndexToDataAnchor(i5 > 0 ? dataIndex(i2 + i) : 0, this.slotsGapOwner >= i3 ? this.slotsGapStart : 0, this.slotsGapLen, this.slots.length);
            for (int i9 = i3; i9 < i8; i9++) {
                this.groups[(i9 * 5) + 4] = iDataIndexToDataAnchor;
            }
            int i10 = this.slotsGapOwner;
            if (i10 >= i3) {
                this.slotsGapOwner = i10 + i;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void insertSlots(int i, int i2) {
        if (i > 0) {
            moveSlotGapTo(this.currentSlot, i2);
            int i3 = this.slotsGapStart;
            int i4 = this.slotsGapLen;
            if (i4 < i) {
                Object[] objArr = this.slots;
                int length = objArr.length;
                int i5 = length - i4;
                int iMax = Math.max(Math.max(length * 2, i5 + i), 32);
                Object[] objArr2 = new Object[iMax];
                for (int i6 = 0; i6 < iMax; i6++) {
                    objArr2[i6] = null;
                }
                int i7 = iMax - i5;
                int i8 = i4 + i3;
                System.arraycopy(objArr, 0, objArr2, 0, i3);
                System.arraycopy(objArr, i8, objArr2, i3 + i7, length - i8);
                this.slots = objArr2;
                i4 = i7;
            }
            int i9 = this.currentSlotEnd;
            if (i9 >= i3) {
                this.currentSlotEnd = i9 + i;
            }
            this.slotsGapStart = i3 + i;
            this.slotsGapLen = i4 - i;
        }
    }

    private final List<Integer> keys() {
        List listKeys$default = SlotTableKt.keys$default(this.groups, 0, 1, null);
        ArrayList arrayList = new ArrayList(listKeys$default.size());
        int size = listKeys$default.size();
        for (int i = 0; i < size; i++) {
            Object obj = listKeys$default.get(i);
            ((Number) obj).intValue();
            int i2 = this.groupGapStart;
            if (i < i2 || i >= i2 + this.groupGapLen) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static /* synthetic */ void markGroup$default(SlotWriter slotWriter, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = slotWriter.parent;
        }
        slotWriter.markGroup(i);
    }

    private final void moveAnchors(int i, int i2, int i3) {
        GapAnchor gapAnchor;
        int iAnchorIndex;
        int i4 = i3 + i;
        int size$runtime = getSize$runtime();
        int iLocationOf = SlotTableKt.locationOf(this.anchors, i, size$runtime);
        ArrayList arrayList = new ArrayList();
        if (iLocationOf >= 0) {
            while (iLocationOf < this.anchors.size() && (iAnchorIndex = anchorIndex((gapAnchor = this.anchors.get(iLocationOf)))) >= i && iAnchorIndex < i4) {
                arrayList.add(gapAnchor);
                this.anchors.remove(iLocationOf);
            }
        }
        int i5 = i2 - i;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            GapAnchor gapAnchor2 = (GapAnchor) arrayList.get(i6);
            int iAnchorIndex2 = anchorIndex(gapAnchor2) + i5;
            if (iAnchorIndex2 >= this.groupGapStart) {
                gapAnchor2.setLocation$runtime(-(size$runtime - iAnchorIndex2));
            } else {
                gapAnchor2.setLocation$runtime(iAnchorIndex2);
            }
            this.anchors.add(SlotTableKt.locationOf(this.anchors, iAnchorIndex2, size$runtime), gapAnchor2);
        }
    }

    public static /* synthetic */ List moveFrom$default(SlotWriter slotWriter, SlotTable slotTable, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = true;
        }
        return slotWriter.moveFrom(slotTable, i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void moveGroupGapTo(int i) {
        int i2 = this.groupGapLen;
        int i3 = this.groupGapStart;
        if (i3 != i) {
            if (!this.anchors.isEmpty()) {
                updateAnchors(i3, i);
            }
            if (i2 > 0) {
                int[] iArr = this.groups;
                int i4 = i * 5;
                int i5 = i2 * 5;
                int i6 = i3 * 5;
                if (i < i3) {
                    aq5.h(i5 + i4, i4, i6, iArr, iArr);
                } else {
                    aq5.h(i6, i6 + i5, i4 + i5, iArr, iArr);
                }
            }
            if (i < i3) {
                i3 = i + i2;
            }
            int capacity = getCapacity();
            if (i3 >= capacity) {
                ComposerKt.composeImmediateRuntimeError("Check failed");
            }
            while (i3 < capacity) {
                int i7 = (i3 * 5) + 2;
                int i8 = this.groups[i7];
                int iParentIndexToAnchor = parentIndexToAnchor(parentAnchorToIndex(i8), i);
                if (iParentIndexToAnchor != i8) {
                    this.groups[i7] = iParentIndexToAnchor;
                }
                i3++;
                if (i3 == i) {
                    i3 += i2;
                }
            }
        }
        this.groupGapStart = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void moveSlotGapTo(int i, int i2) {
        int i3 = this.slotsGapLen;
        int i4 = this.slotsGapStart;
        int i5 = this.slotsGapOwner;
        if (i4 != i) {
            Object[] objArr = this.slots;
            if (i < i4) {
                System.arraycopy(objArr, i, objArr, i + i3, i4 - i);
            } else {
                int i6 = i4 + i3;
                System.arraycopy(objArr, i6, objArr, i4, (i + i3) - i6);
            }
        }
        int iMin = Math.min(i2 + 1, getSize$runtime());
        if (i5 != iMin) {
            int length = this.slots.length - i3;
            if (iMin < i5) {
                int iGroupIndexToAddress = groupIndexToAddress(iMin);
                int iGroupIndexToAddress2 = groupIndexToAddress(i5);
                int i7 = this.groupGapStart;
                while (iGroupIndexToAddress < iGroupIndexToAddress2) {
                    int i8 = (iGroupIndexToAddress * 5) + 4;
                    int i9 = this.groups[i8];
                    if (!(i9 >= 0)) {
                        ComposerKt.composeImmediateRuntimeError("Unexpected anchor value, expected a positive anchor");
                    }
                    this.groups[i8] = -((length - i9) + 1);
                    iGroupIndexToAddress++;
                    if (iGroupIndexToAddress == i7) {
                        iGroupIndexToAddress += this.groupGapLen;
                    }
                }
            } else {
                int iGroupIndexToAddress3 = groupIndexToAddress(i5);
                int iGroupIndexToAddress4 = groupIndexToAddress(iMin);
                while (iGroupIndexToAddress3 < iGroupIndexToAddress4) {
                    int i10 = (iGroupIndexToAddress3 * 5) + 4;
                    int i11 = this.groups[i10];
                    if (!(i11 < 0)) {
                        ComposerKt.composeImmediateRuntimeError("Unexpected anchor value, expected a negative anchor");
                    }
                    this.groups[i10] = i11 + length + 1;
                    iGroupIndexToAddress3++;
                    if (iGroupIndexToAddress3 == this.groupGapStart) {
                        iGroupIndexToAddress3 += this.groupGapLen;
                    }
                }
            }
            this.slotsGapOwner = iMin;
        }
        this.slotsGapStart = i;
    }

    private final int nodeIndex(int[] iArr, int i) {
        return dataIndex(iArr, i);
    }

    private final int parentAnchorToIndex(int i) {
        return i > -2 ? i : (getSize$runtime() + i) - (-2);
    }

    private final int parentIndexToAnchor(int i, int i2) {
        return i < i2 ? i : -((getSize$runtime() - i) + 2);
    }

    private final Object rawUpdate(Object obj) {
        Object objSkip = skip();
        set(obj);
        return objSkip;
    }

    private final void recalculateMarks() {
        MutableIntList mutableIntList = this.pendingRecalculateMarks;
        if (mutableIntList != null) {
            while (PrioritySet.m5435isNotEmptyimpl(mutableIntList)) {
                m5442updateContainsMarkNowqrM0pCk(PrioritySet.m5437takeMaximpl(mutableIntList), mutableIntList);
            }
        }
    }

    private final boolean removeAnchors(int i, int i2, HashMap<GapAnchor, GapGroupSourceInformation> map) {
        int i3 = i2 + i;
        int iLocationOf = SlotTableKt.locationOf(this.anchors, i3, getCapacity() - this.groupGapLen);
        if (iLocationOf >= this.anchors.size()) {
            iLocationOf--;
        }
        int i4 = iLocationOf + 1;
        int i5 = 0;
        while (iLocationOf >= 0) {
            GapAnchor gapAnchor = this.anchors.get(iLocationOf);
            int iAnchorIndex = anchorIndex(gapAnchor);
            if (iAnchorIndex < i) {
                break;
            }
            if (iAnchorIndex < i3) {
                gapAnchor.setLocation$runtime(Integer.MIN_VALUE);
                if (map != null) {
                    map.remove(gapAnchor);
                }
                if (i5 == 0) {
                    i5 = iLocationOf + 1;
                }
                i4 = iLocationOf;
            }
            iLocationOf--;
        }
        boolean z = i4 < i5;
        if (z) {
            this.anchors.subList(i4, i5).clear();
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean removeGroups(int i, int i2) {
        boolean zRemoveAnchors = false;
        if (i2 > 0) {
            ArrayList<GapAnchor> arrayList = this.anchors;
            moveGroupGapTo(i);
            zRemoveAnchors = arrayList.isEmpty() ? false : removeAnchors(i, i2, this.sourceInformationMap);
            this.groupGapStart = i;
            this.groupGapLen += i2;
            int i3 = this.slotsGapOwner;
            if (i3 > i) {
                this.slotsGapOwner = Math.max(i, i3 - i2);
            }
            int i4 = this.currentGroupEnd;
            if (i4 >= this.groupGapStart) {
                this.currentGroupEnd = i4 - i2;
            }
            int i5 = this.parent;
            if (containsGroupMark(i5)) {
                updateContainsMark(i5);
            }
        }
        return zRemoveAnchors;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeSlots(int i, int i2, int i3) {
        if (i2 > 0) {
            int i4 = this.slotsGapLen;
            int i5 = i + i2;
            moveSlotGapTo(i5, i3);
            this.slotsGapStart = i;
            this.slotsGapLen = i4 + i2;
            aq5.t(null, this.slots, i, i5);
            int i6 = this.currentSlotEnd;
            if (i6 >= i) {
                this.currentSlotEnd = i6 - i2;
            }
        }
    }

    private final int restoreCurrentGroupEnd() {
        int capacity = (getCapacity() - this.groupGapLen) - this.endStack.pop();
        this.currentGroupEnd = capacity;
        return capacity;
    }

    private final void saveCurrentGroupEnd() {
        this.endStack.push((getCapacity() - this.groupGapLen) - this.currentGroupEnd);
    }

    private final int slotIndex(int[] iArr, int i) {
        return i >= getCapacity() ? this.slots.length - this.slotsGapLen : dataAnchorToDataIndex(SlotTableKt.slotAnchor(iArr, i), this.slotsGapLen, this.slots.length);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v2 */
    private final void startGroup(int i, Object obj, boolean z, Object obj2) {
        int iGroupSize;
        GapGroupSourceInformation gapGroupSourceInformationSourceInformationOf$runtime;
        int i2 = this.parent;
        Object[] objArr = this.insertCount > 0;
        this.nodeCountStack.push(this.nodeCount);
        if (objArr == true) {
            int i3 = this.currentGroup;
            int iDataIndex = dataIndex(this.groups, groupIndexToAddress(i3));
            insertGroups(1);
            this.currentSlot = iDataIndex;
            this.currentSlotEnd = iDataIndex;
            int iGroupIndexToAddress = groupIndexToAddress(i3);
            Composer.Companion companion = Composer.Companion;
            ?? r12 = obj != companion.getEmpty() ? 1 : 0;
            ?? r13 = (z || obj2 == companion.getEmpty()) ? 0 : 1;
            int iDataIndexToDataAnchor = dataIndexToDataAnchor(iDataIndex, this.slotsGapStart, this.slotsGapLen, this.slots.length);
            if (iDataIndexToDataAnchor >= 0 && this.slotsGapOwner < i3) {
                iDataIndexToDataAnchor = -(((this.slots.length - this.slotsGapLen) - iDataIndexToDataAnchor) + 1);
            }
            SlotTableKt.initGroup(this.groups, iGroupIndexToAddress, i, z, r12, r13, this.parent, iDataIndexToDataAnchor);
            int i4 = (z ? 1 : 0) + r12 + r13;
            if (i4 > 0) {
                insertSlots(i4, i3);
                Object[] objArr2 = this.slots;
                int i5 = this.currentSlot;
                if (z) {
                    objArr2[i5] = obj2;
                    i5++;
                }
                if (r12 != 0) {
                    objArr2[i5] = obj;
                    i5++;
                }
                if (r13 != 0) {
                    objArr2[i5] = obj2;
                    i5++;
                }
                this.currentSlot = i5;
            }
            this.nodeCount = 0;
            iGroupSize = i3 + 1;
            this.parent = i3;
            this.currentGroup = iGroupSize;
            if (i2 >= 0 && (gapGroupSourceInformationSourceInformationOf$runtime = sourceInformationOf$runtime(i2)) != null) {
                gapGroupSourceInformationSourceInformationOf$runtime.reportGroup(this, i3);
            }
        } else {
            this.startStack.push(i2);
            saveCurrentGroupEnd();
            int i6 = this.currentGroup;
            int iGroupIndexToAddress2 = groupIndexToAddress(i6);
            if (!aa4.e(obj2, Composer.Companion.getEmpty())) {
                if (z) {
                    updateNode(obj2);
                } else {
                    updateAux(obj2);
                }
            }
            this.currentSlot = slotIndex(this.groups, iGroupIndexToAddress2);
            this.currentSlotEnd = dataIndex(this.groups, groupIndexToAddress(this.currentGroup + 1));
            int[] iArr = this.groups;
            this.nodeCount = iArr[(iGroupIndexToAddress2 * 5) + 1] & 67108863;
            this.parent = i6;
            this.currentGroup = i6 + 1;
            iGroupSize = i6 + SlotTableKt.groupSize(iArr, iGroupIndexToAddress2);
        }
        this.currentGroupEnd = iGroupSize;
    }

    private final void updateAnchors(int i, int i2) {
        GapAnchor gapAnchor;
        int location$runtime;
        GapAnchor gapAnchor2;
        int location$runtime2;
        int i3;
        int capacity = getCapacity() - this.groupGapLen;
        ArrayList<GapAnchor> arrayList = this.anchors;
        if (i >= i2) {
            for (int iLocationOf = SlotTableKt.locationOf(arrayList, i2, capacity); iLocationOf < this.anchors.size() && (location$runtime = (gapAnchor = this.anchors.get(iLocationOf)).getLocation$runtime()) >= 0; iLocationOf++) {
                gapAnchor.setLocation$runtime(-(capacity - location$runtime));
            }
            return;
        }
        for (int iLocationOf2 = SlotTableKt.locationOf(arrayList, i, capacity); iLocationOf2 < this.anchors.size() && (location$runtime2 = (gapAnchor2 = this.anchors.get(iLocationOf2)).getLocation$runtime()) < 0 && (i3 = location$runtime2 + capacity) < i2; iLocationOf2++) {
            gapAnchor2.setLocation$runtime(i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateContainsMark(int i) {
        if (i >= 0) {
            MutableIntList mutableIntListM5430constructorimpl$default = this.pendingRecalculateMarks;
            if (mutableIntListM5430constructorimpl$default == null) {
                mutableIntListM5430constructorimpl$default = PrioritySet.m5430constructorimpl$default(null, 1, null);
                this.pendingRecalculateMarks = mutableIntListM5430constructorimpl$default;
            }
            PrioritySet.m5427addimpl(mutableIntListM5430constructorimpl$default, i);
        }
    }

    /* JADX INFO: renamed from: updateContainsMarkNow-qrM0pCk, reason: not valid java name */
    private final void m5442updateContainsMarkNowqrM0pCk(int i, MutableIntList mutableIntList) {
        int iGroupIndexToAddress = groupIndexToAddress(i);
        boolean zChildContainsAnyMarks = childContainsAnyMarks(i);
        int[] iArr = this.groups;
        if (((iArr[(iGroupIndexToAddress * 5) + 1] & 67108864) != 0) != zChildContainsAnyMarks) {
            SlotTableKt.updateContainsMark(iArr, iGroupIndexToAddress, zChildContainsAnyMarks);
            int iParent = parent(i);
            if (iParent >= 0) {
                PrioritySet.m5427addimpl(mutableIntList, iParent);
            }
        }
    }

    private final void updateDataIndex(int[] iArr, int i, int i2) {
        iArr[(i * 5) + 4] = dataIndexToDataAnchor(i2, this.slotsGapStart, this.slotsGapLen, this.slots.length);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    private final void updateNodeOfGroup(int i, Object obj) {
        boolean z;
        int iGroupIndexToAddress = groupIndexToAddress(i);
        int[] iArr = this.groups;
        if (iGroupIndexToAddress < iArr.length) {
            z = (iArr[(iGroupIndexToAddress * 5) + 1] & 1073741824) != 0;
        }
        if (!z) {
            ComposerKt.composeImmediateRuntimeError("Updating the node of a group at " + i + " that was not created with as a node group");
        }
        this.slots[dataIndexToDataAddress(nodeIndex(this.groups, iGroupIndexToAddress))] = obj;
    }

    public final void advanceBy(int i) {
        boolean z = false;
        if (!(i >= 0)) {
            ComposerKt.composeImmediateRuntimeError("Cannot seek backwards");
        }
        if (!(this.insertCount <= 0)) {
            PreconditionsKt.throwIllegalStateException("Cannot call seek() while inserting");
        }
        if (i == 0) {
            return;
        }
        int i2 = this.currentGroup + i;
        if (i2 >= this.parent && i2 <= this.currentGroupEnd) {
            z = true;
        }
        if (!z) {
            ComposerKt.composeImmediateRuntimeError("Cannot seek outside the current group (" + this.parent + '-' + this.currentGroupEnd + ')');
        }
        this.currentGroup = i2;
        int iDataIndex = dataIndex(this.groups, groupIndexToAddress(i2));
        this.currentSlot = iDataIndex;
        this.currentSlotEnd = iDataIndex;
    }

    public final GapAnchor anchor(int i) {
        ArrayList<GapAnchor> arrayList = this.anchors;
        int iSearch = SlotTableKt.search(arrayList, i, getSize$runtime());
        if (iSearch >= 0) {
            return arrayList.get(iSearch);
        }
        if (i > this.groupGapStart) {
            i = -(getSize$runtime() - i);
        }
        GapAnchor gapAnchor = new GapAnchor(i);
        arrayList.add(-(iSearch + 1), gapAnchor);
        return gapAnchor;
    }

    public final int anchorIndex(GapAnchor gapAnchor) {
        int location$runtime = gapAnchor.getLocation$runtime();
        return location$runtime < 0 ? getSize$runtime() + location$runtime : location$runtime;
    }

    public final void appendSlot(GapAnchor gapAnchor, Object obj) {
        if (!(this.insertCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("Can only append a slot if not current inserting");
        }
        int i = this.currentSlot;
        int i2 = this.currentSlotEnd;
        int iAnchorIndex = anchorIndex(gapAnchor);
        int iDataIndex = dataIndex(this.groups, groupIndexToAddress(iAnchorIndex + 1));
        this.currentSlot = iDataIndex;
        this.currentSlotEnd = iDataIndex;
        insertSlots(1, iAnchorIndex);
        if (i >= iDataIndex) {
            i++;
            i2++;
        }
        this.slots[iDataIndex] = obj;
        this.currentSlot = i;
        this.currentSlotEnd = i2;
    }

    public final void bashCurrentGroup() {
        SlotTableKt.updateGroupKey(this.groups, this.currentGroup, -3);
    }

    public final void beginInsert() {
        int i = this.insertCount;
        this.insertCount = i + 1;
        if (i == 0) {
            saveCurrentGroupEnd();
        }
    }

    public final Object clear(int i) {
        int iDataIndexToDataAddress = dataIndexToDataAddress(i);
        Object[] objArr = this.slots;
        Object obj = objArr[iDataIndexToDataAddress];
        objArr[iDataIndexToDataAddress] = Composer.Companion.getEmpty();
        return obj;
    }

    public final void close(boolean z) {
        this.closed = true;
        if (z && this.startStack.tos == 0) {
            moveGroupGapTo(getSize$runtime());
            moveSlotGapTo(this.slots.length - this.slotsGapLen, this.groupGapStart);
            clearSlotGap();
            recalculateMarks();
        }
        this.table.close$runtime(this, this.groups, this.groupGapStart, this.slots, this.slotsGapStart, this.anchors, this.sourceInformationMap, this.calledByMap);
    }

    public final int endGroup() {
        MutableObjectList<Object> mutableObjectList;
        boolean z = this.insertCount > 0;
        int i = this.currentGroup;
        int i2 = this.currentGroupEnd;
        int i3 = this.parent;
        int iGroupIndexToAddress = groupIndexToAddress(i3);
        int i4 = this.nodeCount;
        int i5 = i - i3;
        int i6 = (iGroupIndexToAddress * 5) + 1;
        boolean z2 = (this.groups[i6] & 1073741824) != 0;
        if (z) {
            MutableIntObjectMap<MutableObjectList<Object>> mutableIntObjectMap = this.deferredSlotWrites;
            if (mutableIntObjectMap != null && (mutableObjectList = mutableIntObjectMap.get(i3)) != null) {
                Object[] objArr = mutableObjectList.content;
                int i7 = mutableObjectList._size;
                for (int i8 = 0; i8 < i7; i8++) {
                    rawUpdate(objArr[i8]);
                }
                mutableIntObjectMap.remove(i3);
            }
            SlotTableKt.updateGroupSize(this.groups, iGroupIndexToAddress, i5);
            SlotTableKt.updateNodeCount(this.groups, iGroupIndexToAddress, i4);
            this.nodeCount = this.nodeCountStack.pop() + (z2 ? 1 : i4);
            int iParent = parent(this.groups, i3);
            this.parent = iParent;
            int size$runtime = iParent < 0 ? getSize$runtime() : groupIndexToAddress(iParent + 1);
            int iDataIndex = size$runtime >= 0 ? dataIndex(this.groups, size$runtime) : 0;
            this.currentSlot = iDataIndex;
            this.currentSlotEnd = iDataIndex;
            return i4;
        }
        if (!(i == i2)) {
            ComposerKt.composeImmediateRuntimeError("Expected to be at the end of a group");
        }
        int iGroupSize = SlotTableKt.groupSize(this.groups, iGroupIndexToAddress);
        int[] iArr = this.groups;
        int i9 = iArr[i6] & 67108863;
        SlotTableKt.updateGroupSize(iArr, iGroupIndexToAddress, i5);
        SlotTableKt.updateNodeCount(this.groups, iGroupIndexToAddress, i4);
        int iPop = this.startStack.pop();
        restoreCurrentGroupEnd();
        this.parent = iPop;
        int iParent2 = parent(this.groups, i3);
        int iPop2 = this.nodeCountStack.pop();
        this.nodeCount = iPop2;
        if (iParent2 == iPop) {
            this.nodeCount = iPop2 + (z2 ? 0 : i4 - i9);
            return i4;
        }
        int i10 = i5 - iGroupSize;
        int i11 = z2 ? 0 : i4 - i9;
        if (i10 != 0 || i11 != 0) {
            while (iParent2 != 0 && iParent2 != iPop && (i11 != 0 || i10 != 0)) {
                int iGroupIndexToAddress2 = groupIndexToAddress(iParent2);
                if (i10 != 0) {
                    SlotTableKt.updateGroupSize(this.groups, iGroupIndexToAddress2, SlotTableKt.groupSize(this.groups, iGroupIndexToAddress2) + i10);
                }
                if (i11 != 0) {
                    int[] iArr2 = this.groups;
                    SlotTableKt.updateNodeCount(iArr2, iGroupIndexToAddress2, (iArr2[(iGroupIndexToAddress2 * 5) + 1] & 67108863) + i11);
                }
                int[] iArr3 = this.groups;
                if ((iArr3[(iGroupIndexToAddress2 * 5) + 1] & 1073741824) != 0) {
                    i11 = 0;
                }
                iParent2 = parent(iArr3, iParent2);
            }
        }
        this.nodeCount += i11;
        return i4;
    }

    public final void endInsert() {
        if (!(this.insertCount > 0)) {
            PreconditionsKt.throwIllegalStateException("Unbalanced begin/end insert");
        }
        int i = this.insertCount - 1;
        this.insertCount = i;
        if (i == 0) {
            if (!(this.nodeCountStack.tos == this.startStack.tos)) {
                ComposerKt.composeImmediateRuntimeError("startGroup/endGroup mismatch while inserting");
            }
            restoreCurrentGroupEnd();
        }
    }

    public final void ensureStarted(int i) {
        boolean z = false;
        if (!(this.insertCount <= 0)) {
            ComposerKt.composeImmediateRuntimeError("Cannot call ensureStarted() while inserting");
        }
        int i2 = this.parent;
        if (i2 != i) {
            if (i >= i2 && i < this.currentGroupEnd) {
                z = true;
            }
            if (!z) {
                ComposerKt.composeImmediateRuntimeError("Started group at " + i + " must be a subgroup of the group at " + i2);
            }
            int i3 = this.currentGroup;
            int i4 = this.currentSlot;
            int i5 = this.currentSlotEnd;
            this.currentGroup = i;
            startGroup();
            this.currentGroup = i3;
            this.currentSlot = i4;
            this.currentSlotEnd = i5;
        }
    }

    public final void forAllData(int i, bm3<? super Integer, Object, j59> bm3Var) {
        int iDataIndex = dataIndex(this.groups, groupIndexToAddress(groupSize(getCurrentGroup()) + getCurrentGroup()));
        for (int iDataIndex2 = dataIndex(this.groups, groupIndexToAddress(i)); iDataIndex2 < iDataIndex; iDataIndex2++) {
            bm3Var.invoke(Integer.valueOf(iDataIndex2), this.slots[dataIndexToDataAddress(iDataIndex2)]);
        }
    }

    public final void forAllDataInRememberOrder(int i, bm3<? super Integer, Object, j59> bm3Var) {
        int i2;
        int i3;
        int afterGroupIndex;
        int iParent = parent(i);
        int size$runtime = getSize$runtime();
        int iGroupSize = groupSize(i) + i;
        jh2 jh2Var = null;
        int i4 = i;
        MutableIntSet mutableIntSetMutableIntSetOf = null;
        MutableIntList mutableIntList = null;
        while (i4 < iGroupSize) {
            int iDataIndex = dataIndex(i4);
            int i5 = i4 + 1;
            int iDataIndex2 = dataIndex(i5);
            while (true) {
                i2 = 0;
                if (iDataIndex >= iDataIndex2) {
                    break;
                }
                Object obj = this.slots[dataIndexToDataAddress(iDataIndex)];
                if (!(obj instanceof RememberObserverHolder) || (afterGroupIndex = GapComposerKt.asGapRememberObserverHolder((RememberObserverHolder) obj).getAfterGroupIndex()) < 0) {
                    bm3Var.invoke(Integer.valueOf(iDataIndex), obj);
                } else {
                    int iChildGroupAtIndex = childGroupAtIndex(i4, afterGroupIndex);
                    if (mutableIntSetMutableIntSetOf == null) {
                        mutableIntSetMutableIntSetOf = IntSetKt.mutableIntSetOf();
                    }
                    if (mutableIntList == null) {
                        mutableIntList = new MutableIntList(i2, 1, jh2Var);
                    }
                    mutableIntSetMutableIntSetOf.add(iChildGroupAtIndex);
                    mutableIntList.add(iChildGroupAtIndex);
                    mutableIntList.add(iDataIndex);
                }
                iDataIndex++;
            }
            int iParent2 = i5 < size$runtime ? parent(i5) : -1;
            if (iParent2 != i4) {
                while (true) {
                    if (mutableIntList == null || mutableIntSetMutableIntSetOf == null || !mutableIntSetMutableIntSetOf.remove(i4)) {
                        i3 = size$runtime;
                    } else {
                        int i6 = mutableIntList._size;
                        int i7 = i6 / 2;
                        int i8 = i2;
                        int i9 = i8;
                        while (i9 < i7) {
                            int i10 = i9 * 2;
                            int i11 = size$runtime;
                            int i12 = mutableIntList.get(i10);
                            if (i12 == i4) {
                                int i13 = mutableIntList.get(i10 + 1);
                                bm3Var.invoke(Integer.valueOf(i13), this.slots[dataIndexToDataAddress(i13)]);
                            } else if (i10 != i8) {
                                int i14 = i8 + 1;
                                mutableIntList.set(i8, i12);
                                i8 += 2;
                                mutableIntList.set(i14, mutableIntList.get(i10 + 1));
                            } else {
                                i8 += 2;
                            }
                            i9++;
                            bm3Var = bm3Var;
                            size$runtime = i11;
                        }
                        i3 = size$runtime;
                        if (i8 != i6) {
                            mutableIntList.removeRange(i8, i6);
                        }
                    }
                    if (i4 == i || iParent == iParent2) {
                        break;
                    }
                    i4 = iParent;
                    size$runtime = i3;
                    i2 = 0;
                    iParent = parent(iParent);
                    bm3Var = bm3Var;
                }
            } else {
                i3 = size$runtime;
            }
            iParent = iParent2;
            i4 = i5;
            size$runtime = i3;
            jh2Var = null;
        }
    }

    public final void forEachTailSlot(int i, int i2, bm3<? super Integer, Object, j59> bm3Var) {
        int iSlotsStartIndex$runtime = slotsStartIndex$runtime(i);
        int iSlotsEndIndex$runtime = slotsEndIndex$runtime(i);
        for (int iMax = Math.max(iSlotsStartIndex$runtime, iSlotsEndIndex$runtime - i2); iMax < iSlotsEndIndex$runtime; iMax++) {
            bm3Var.invoke(Integer.valueOf(iMax), this.slots[dataIndexToDataAddress(iMax)]);
        }
    }

    public final boolean getClosed() {
        return this.closed;
    }

    public final boolean getCollectingCalledInformation() {
        return this.calledByMap != null;
    }

    public final boolean getCollectingSourceInformation() {
        return this.sourceInformationMap != null;
    }

    public final int getCurrentGroup() {
        return this.currentGroup;
    }

    public final int getCurrentGroupEnd() {
        return this.currentGroupEnd;
    }

    public final int getParent() {
        return this.parent;
    }

    public final int getSize$runtime() {
        return getCapacity() - this.groupGapLen;
    }

    public final int getSlotsSize() {
        return this.slots.length - this.slotsGapLen;
    }

    public final SlotTable getTable$runtime() {
        return this.table;
    }

    public final Object groupAux(int i) {
        int iGroupIndexToAddress = groupIndexToAddress(i);
        int[] iArr = this.groups;
        return (iArr[(iGroupIndexToAddress * 5) + 1] & 268435456) != 0 ? this.slots[auxIndex(iArr, iGroupIndexToAddress)] : Composer.Companion.getEmpty();
    }

    public final int groupKey(int i) {
        return this.groups[groupIndexToAddress(i) * 5];
    }

    public final Object groupObjectKey(int i) {
        int iGroupIndexToAddress = groupIndexToAddress(i);
        int[] iArr = this.groups;
        if ((iArr[(iGroupIndexToAddress * 5) + 1] & 536870912) != 0) {
            return this.slots[SlotTableKt.objectKeyIndex(iArr, iGroupIndexToAddress)];
        }
        return null;
    }

    public final int groupSize(int i) {
        return SlotTableKt.groupSize(this.groups, groupIndexToAddress(i));
    }

    public final int groupSlotIndex(int i) {
        MutableObjectList<Object> mutableObjectList;
        int iSlotsStartIndex$runtime = this.currentSlot - slotsStartIndex$runtime(i);
        MutableIntObjectMap<MutableObjectList<Object>> mutableIntObjectMap = this.deferredSlotWrites;
        return iSlotsStartIndex$runtime + ((mutableIntObjectMap == null || (mutableObjectList = mutableIntObjectMap.get(i)) == null) ? 0 : mutableObjectList.getSize());
    }

    public final Iterator<Object> groupSlots() {
        int iDataIndex = dataIndex(this.groups, groupIndexToAddress(this.currentGroup));
        int[] iArr = this.groups;
        int i = this.currentGroup;
        return new AnonymousClass1(iDataIndex, dataIndex(iArr, groupIndexToAddress(groupSize(i) + i)), this);
    }

    public final boolean hasObjectKey(int i) {
        return (this.groups[(groupIndexToAddress(i) * 5) + 1] & 536870912) != 0;
    }

    public final boolean inGroup(GapAnchor gapAnchor, GapAnchor gapAnchor2) {
        int iAnchorIndex = anchorIndex(gapAnchor);
        int iGroupSize = SlotTableKt.groupSize(this.groups, iAnchorIndex) + iAnchorIndex;
        int location$runtime = gapAnchor2.getLocation$runtime();
        return iAnchorIndex <= location$runtime && location$runtime < iGroupSize;
    }

    public final boolean indexInCurrentGroup(int i) {
        return indexInGroup(i, this.currentGroup);
    }

    public final boolean indexInGroup(int i, int i2) {
        int iIndexOf;
        int capacity;
        if (i2 == this.parent) {
            capacity = this.currentGroupEnd;
        } else if (i2 <= this.startStack.peekOr(0) && (iIndexOf = this.startStack.indexOf(i2)) >= 0) {
            capacity = (getCapacity() - this.groupGapLen) - this.endStack.peek(iIndexOf);
        } else {
            int iGroupSize = groupSize(i2);
            capacity = iGroupSize + i2;
        }
        return i > i2 && i < capacity;
    }

    public final boolean indexInParent(int i) {
        int i2 = this.parent;
        if (i <= i2 || i >= this.currentGroupEnd) {
            return i2 == 0 && i == 0;
        }
        return true;
    }

    public final void insertAux(Object obj) {
        if (!(this.insertCount >= 0)) {
            ComposerKt.composeImmediateRuntimeError("Cannot insert auxiliary data when not inserting");
        }
        int i = this.parent;
        int iGroupIndexToAddress = groupIndexToAddress(i);
        if ((this.groups[(iGroupIndexToAddress * 5) + 1] & 268435456) != 0) {
            ComposerKt.composeImmediateRuntimeError("Group already has auxiliary data");
        }
        insertSlots(1, i);
        int iAuxIndex = auxIndex(this.groups, iGroupIndexToAddress);
        int iDataIndexToDataAddress = dataIndexToDataAddress(iAuxIndex);
        int i2 = this.currentSlot;
        if (i2 > iAuxIndex) {
            int i3 = i2 - iAuxIndex;
            if (!(i3 < 3)) {
                PreconditionsKt.throwIllegalStateException("Moving more than two slot not supported");
            }
            if (i3 > 1) {
                Object[] objArr = this.slots;
                objArr[iDataIndexToDataAddress + 2] = objArr[iDataIndexToDataAddress + 1];
            }
            Object[] objArr2 = this.slots;
            objArr2[iDataIndexToDataAddress + 1] = objArr2[iDataIndexToDataAddress];
        }
        SlotTableKt.addAux(this.groups, iGroupIndexToAddress);
        this.slots[iDataIndexToDataAddress] = obj;
        this.currentSlot++;
    }

    public final boolean isGroupEnd() {
        return this.currentGroup == this.currentGroupEnd;
    }

    public final boolean isNode() {
        int i = this.currentGroup;
        return i < this.currentGroupEnd && (this.groups[(groupIndexToAddress(i) * 5) + 1] & 1073741824) != 0;
    }

    public final boolean isValid(int i) {
        return groupIndexToAddress(i) * 5 < this.groups.length;
    }

    public final void markGroup(int i) {
        int iGroupIndexToAddress = groupIndexToAddress(i);
        int[] iArr = this.groups;
        int i2 = (iGroupIndexToAddress * 5) + 1;
        if ((iArr[i2] & 134217728) != 0) {
            return;
        }
        SlotTableKt.updateMark(iArr, iGroupIndexToAddress, true);
        if ((this.groups[i2] & 67108864) != 0) {
            return;
        }
        updateContainsMark(parent(i));
    }

    public final List<GapAnchor> moveFrom(SlotTable slotTable, int i, boolean z) {
        boolean z2 = false;
        if (!(this.insertCount > 0 ? true : z2)) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        if (i != 0 || this.currentGroup != 0 || this.table.getGroupsSize() != 0 || SlotTableKt.groupSize(slotTable.getGroups(), i) != slotTable.getGroupsSize()) {
            SlotWriter slotWriterOpenWriter = slotTable.openWriter();
            try {
                return Companion.moveGroup(slotWriterOpenWriter, i, this, true, true, z);
            } finally {
                slotWriterOpenWriter.close(z2);
            }
        }
        int[] iArr = this.groups;
        Object[] objArr = this.slots;
        ArrayList<GapAnchor> arrayList = this.anchors;
        HashMap<GapAnchor, GapGroupSourceInformation> map = this.sourceInformationMap;
        MutableIntObjectMap<MutableIntSet> mutableIntObjectMap = this.calledByMap;
        int[] groups = slotTable.getGroups();
        int groupsSize = slotTable.getGroupsSize();
        Object[] objArrM5441getSlots = slotTable.m5441getSlots();
        int slotsSize = slotTable.getSlotsSize();
        HashMap<GapAnchor, GapGroupSourceInformation> sourceInformationMap$runtime = slotTable.getSourceInformationMap$runtime();
        MutableIntObjectMap<MutableIntSet> calledByMap$runtime = slotTable.getCalledByMap$runtime();
        this.groups = groups;
        this.slots = objArrM5441getSlots;
        this.anchors = slotTable.getAnchors$runtime();
        this.groupGapStart = groupsSize;
        this.groupGapLen = (groups.length / 5) - groupsSize;
        this.slotsGapStart = slotsSize;
        this.slotsGapLen = objArrM5441getSlots.length - slotsSize;
        this.slotsGapOwner = groupsSize;
        this.sourceInformationMap = sourceInformationMap$runtime;
        this.calledByMap = calledByMap$runtime;
        slotTable.setTo$runtime(iArr, 0, objArr, 0, arrayList, map, mutableIntObjectMap);
        return this.anchors;
    }

    public final void moveGroup(int i) {
        int[] iArr;
        if (this.insertCount != 0) {
            ComposerKt.composeImmediateRuntimeError("Cannot move a group while inserting");
        }
        if (i < 0) {
            ComposerKt.composeImmediateRuntimeError("Parameter offset is out of bounds");
        }
        if (i == 0) {
            return;
        }
        int i2 = this.currentGroup;
        int i3 = this.parent;
        int i4 = this.currentGroupEnd;
        int i5 = i;
        int iGroupSize = i2;
        while (true) {
            iArr = this.groups;
            if (i5 <= 0) {
                break;
            }
            iGroupSize += SlotTableKt.groupSize(iArr, groupIndexToAddress(iGroupSize));
            if (iGroupSize > i4) {
                ComposerKt.composeImmediateRuntimeError("Parameter offset is out of bounds");
            }
            i5--;
        }
        int iGroupSize2 = SlotTableKt.groupSize(iArr, groupIndexToAddress(iGroupSize));
        int iDataIndex = dataIndex(this.groups, groupIndexToAddress(this.currentGroup));
        int iDataIndex2 = dataIndex(this.groups, groupIndexToAddress(iGroupSize));
        int i6 = iGroupSize + iGroupSize2;
        int iDataIndex3 = dataIndex(this.groups, groupIndexToAddress(i6));
        int i7 = iDataIndex3 - iDataIndex2;
        insertSlots(i7, Math.max(this.currentGroup - 1, 0));
        insertGroups(iGroupSize2);
        int[] iArr2 = this.groups;
        int iGroupIndexToAddress = groupIndexToAddress(i6) * 5;
        aq5.h(groupIndexToAddress(i2) * 5, iGroupIndexToAddress, (iGroupSize2 * 5) + iGroupIndexToAddress, iArr2, iArr2);
        if (i7 > 0) {
            Object[] objArr = this.slots;
            int iDataIndexToDataAddress = dataIndexToDataAddress(iDataIndex2 + i7);
            System.arraycopy(objArr, iDataIndexToDataAddress, objArr, iDataIndex, dataIndexToDataAddress(iDataIndex3 + i7) - iDataIndexToDataAddress);
        }
        int i8 = iDataIndex2 + i7;
        int i9 = i8 - iDataIndex;
        int i10 = this.slotsGapStart;
        int i11 = this.slotsGapLen;
        int length = this.slots.length;
        int i12 = this.slotsGapOwner;
        int i13 = i2 + iGroupSize2;
        int i14 = i2;
        while (i14 < i13) {
            int iGroupIndexToAddress2 = groupIndexToAddress(i14);
            int i15 = i9;
            int iDataIndex4 = dataIndex(iArr2, iGroupIndexToAddress2) - i15;
            int i16 = i10;
            if (i12 < iGroupIndexToAddress2) {
                i10 = 0;
            }
            updateDataIndex(iArr2, iGroupIndexToAddress2, dataIndexToDataAnchor(iDataIndex4, i10, i11, length));
            i14++;
            i10 = i16;
            i9 = i15;
        }
        moveAnchors(i6, i2, iGroupSize2);
        if (removeGroups(i6, iGroupSize2)) {
            ComposerKt.composeImmediateRuntimeError("Unexpectedly removed anchors");
        }
        fixParentAnchorsFor(i3, this.currentGroupEnd, i2);
        if (i7 > 0) {
            removeSlots(i8, i7, i6 - 1);
        }
    }

    public final List<GapAnchor> moveIntoGroupFrom(int i, SlotTable slotTable, int i2) {
        if (!(this.insertCount <= 0 && groupSize(this.currentGroup + i) == 1)) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        int i3 = this.currentGroup;
        int i4 = this.currentSlot;
        int i5 = this.currentSlotEnd;
        advanceBy(i);
        startGroup();
        beginInsert();
        SlotWriter slotWriterOpenWriter = slotTable.openWriter();
        try {
            List<GapAnchor> listMoveGroup$default = Companion.moveGroup$default(Companion, slotWriterOpenWriter, i2, this, false, true, false, 32, null);
            slotWriterOpenWriter.close(true);
            endInsert();
            endGroup();
            this.currentGroup = i3;
            this.currentSlot = i4;
            this.currentSlotEnd = i5;
            return listMoveGroup$default;
        } catch (Throwable th) {
            slotWriterOpenWriter.close(false);
            throw th;
        }
    }

    public final List<GapAnchor> moveTo(GapAnchor gapAnchor, int i, SlotWriter slotWriter) {
        if (!(slotWriter.insertCount > 0)) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        if (!(this.insertCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        if (!gapAnchor.getValid()) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        int iAnchorIndex = anchorIndex(gapAnchor) + i;
        int i2 = this.currentGroup;
        if (!(i2 <= iAnchorIndex && iAnchorIndex < this.currentGroupEnd)) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        int iParent = parent(iAnchorIndex);
        int iGroupSize = groupSize(iAnchorIndex);
        int iNodeCount = isNode(iAnchorIndex) ? 1 : nodeCount(iAnchorIndex);
        List<GapAnchor> listMoveGroup$default = Companion.moveGroup$default(Companion, this, iAnchorIndex, slotWriter, false, false, false, 32, null);
        updateContainsMark(iParent);
        boolean z = iNodeCount > 0;
        while (iParent >= i2) {
            int iGroupIndexToAddress = groupIndexToAddress(iParent);
            int[] iArr = this.groups;
            SlotTableKt.updateGroupSize(iArr, iGroupIndexToAddress, SlotTableKt.groupSize(iArr, iGroupIndexToAddress) - iGroupSize);
            if (z) {
                int[] iArr2 = this.groups;
                int i3 = iArr2[(iGroupIndexToAddress * 5) + 1];
                if ((1073741824 & i3) != 0) {
                    z = false;
                } else {
                    SlotTableKt.updateNodeCount(iArr2, iGroupIndexToAddress, (i3 & 67108863) - iNodeCount);
                }
            }
            iParent = parent(iParent);
        }
        if (z) {
            if (!(this.nodeCount >= iNodeCount)) {
                ComposerKt.composeImmediateRuntimeError("Check failed");
            }
            this.nodeCount -= iNodeCount;
        }
        return listMoveGroup$default;
    }

    public final Object node(int i) {
        int iGroupIndexToAddress = groupIndexToAddress(i);
        int[] iArr = this.groups;
        if ((iArr[(iGroupIndexToAddress * 5) + 1] & 1073741824) != 0) {
            return this.slots[dataIndexToDataAddress(nodeIndex(iArr, iGroupIndexToAddress))];
        }
        return null;
    }

    public final int nodeCount(int i) {
        return this.groups[(groupIndexToAddress(i) * 5) + 1] & 67108863;
    }

    public final int parent(GapAnchor gapAnchor) {
        if (gapAnchor.getValid()) {
            return parent(this.groups, anchorIndex(gapAnchor));
        }
        return -1;
    }

    public final void recordGroupSourceInformation(String str) {
        if (this.insertCount > 0) {
            groupSourceInformationFor(this.parent, str);
        }
    }

    public final void recordGrouplessCallSourceInformationEnd() {
        GapGroupSourceInformation gapGroupSourceInformationGroupSourceInformationFor;
        if (this.insertCount <= 0 || (gapGroupSourceInformationGroupSourceInformationFor = groupSourceInformationFor(this.parent, null)) == null) {
            return;
        }
        gapGroupSourceInformationGroupSourceInformationFor.endGrouplessCall(getCurrentGroupSlotIndex());
    }

    public final void recordGrouplessCallSourceInformationStart(int i, String str) {
        if (this.insertCount > 0) {
            MutableIntObjectMap<MutableIntSet> mutableIntObjectMap = this.calledByMap;
            if (mutableIntObjectMap != null) {
                SlotTableKt.add(mutableIntObjectMap, i, groupKey(this.parent));
            }
            GapGroupSourceInformation gapGroupSourceInformationGroupSourceInformationFor = groupSourceInformationFor(this.parent, null);
            if (gapGroupSourceInformationGroupSourceInformationFor != null) {
                gapGroupSourceInformationGroupSourceInformationFor.startGrouplessCall(i, str, getCurrentGroupSlotIndex());
            }
        }
    }

    public final boolean removeGroup() {
        GapAnchor gapAnchorTryAnchor$runtime;
        if (!(this.insertCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("Cannot remove group while inserting");
        }
        int i = this.currentGroup;
        int i2 = this.currentSlot;
        int iDataIndex = dataIndex(this.groups, groupIndexToAddress(i));
        int iSkipGroup = skipGroup();
        GapGroupSourceInformation gapGroupSourceInformationSourceInformationOf$runtime = sourceInformationOf$runtime(this.parent);
        if (gapGroupSourceInformationSourceInformationOf$runtime != null && (gapAnchorTryAnchor$runtime = tryAnchor$runtime(i)) != null) {
            gapGroupSourceInformationSourceInformationOf$runtime.removeAnchor(gapAnchorTryAnchor$runtime);
        }
        MutableIntList mutableIntList = this.pendingRecalculateMarks;
        if (mutableIntList != null) {
            while (PrioritySet.m5435isNotEmptyimpl(mutableIntList) && PrioritySet.m5436peekimpl(mutableIntList) >= i) {
                PrioritySet.m5437takeMaximpl(mutableIntList);
            }
        }
        boolean zRemoveGroups = removeGroups(i, this.currentGroup - i);
        removeSlots(iDataIndex, this.currentSlot - iDataIndex, i - 1);
        this.currentGroup = i;
        this.currentSlot = i2;
        this.nodeCount -= iSkipGroup;
        return zRemoveGroups;
    }

    public final void reset() {
        if (!(this.insertCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("Cannot reset when inserting");
        }
        recalculateMarks();
        this.currentGroup = 0;
        this.currentGroupEnd = getCapacity() - this.groupGapLen;
        this.currentSlot = 0;
        this.currentSlotEnd = 0;
        this.nodeCount = 0;
    }

    public final void seek(GapAnchor gapAnchor) {
        advanceBy(gapAnchor.toIndexFor(this) - this.currentGroup);
    }

    public final void set(Object obj) {
        if (!(this.currentSlot <= this.currentSlotEnd)) {
            ComposerKt.composeImmediateRuntimeError("Writing to an invalid slot");
        }
        this.slots[dataIndexToDataAddress(this.currentSlot - 1)] = obj;
    }

    public final Object skip() {
        if (this.insertCount > 0) {
            insertSlots(1, this.parent);
        }
        Object[] objArr = this.slots;
        int i = this.currentSlot;
        this.currentSlot = i + 1;
        return objArr[dataIndexToDataAddress(i)];
    }

    public final int skipGroup() {
        int iGroupIndexToAddress = groupIndexToAddress(this.currentGroup);
        int iGroupSize = SlotTableKt.groupSize(this.groups, iGroupIndexToAddress) + this.currentGroup;
        this.currentGroup = iGroupSize;
        this.currentSlot = dataIndex(this.groups, groupIndexToAddress(iGroupSize));
        int i = this.groups[(iGroupIndexToAddress * 5) + 1];
        if ((1073741824 & i) != 0) {
            return 1;
        }
        return i & 67108863;
    }

    public final void skipToGroupEnd() {
        int i = this.currentGroupEnd;
        this.currentGroup = i;
        this.currentSlot = dataIndex(this.groups, groupIndexToAddress(i));
    }

    public final Object slot(int i, int i2) {
        int iSlotIndex = slotIndex(this.groups, groupIndexToAddress(i));
        int iDataIndex = dataIndex(this.groups, groupIndexToAddress(i + 1));
        int i3 = i2 + iSlotIndex;
        if (iSlotIndex > i3 || i3 >= iDataIndex) {
            return Composer.Companion.getEmpty();
        }
        return this.slots[dataIndexToDataAddress(i3)];
    }

    public final int slotIndexOfGroupSlotIndex(int i, int i2) {
        int iSlotIndex = slotIndex(this.groups, groupIndexToAddress(i));
        int i3 = iSlotIndex + i2;
        if (!(i3 >= iSlotIndex && i3 < dataIndex(this.groups, groupIndexToAddress(i + 1)))) {
            ComposerKt.composeImmediateRuntimeError("Write to an invalid slot index " + i2 + " for group " + i);
        }
        return i3;
    }

    public final int slotsEndAllIndex$runtime(int i) {
        return dataIndex(this.groups, groupIndexToAddress(groupSize(i) + i));
    }

    public final int slotsEndIndex$runtime(int i) {
        return dataIndex(this.groups, groupIndexToAddress(i + 1));
    }

    public final int slotsStartIndex$runtime(int i) {
        return slotIndex(this.groups, groupIndexToAddress(i));
    }

    public final GapGroupSourceInformation sourceInformationOf$runtime(int i) {
        GapAnchor gapAnchorTryAnchor$runtime;
        HashMap<GapAnchor, GapGroupSourceInformation> map = this.sourceInformationMap;
        if (map == null || (gapAnchorTryAnchor$runtime = tryAnchor$runtime(i)) == null) {
            return null;
        }
        return map.get(gapAnchorTryAnchor$runtime);
    }

    public final void startData(int i, Object obj) {
        startGroup(i, Composer.Companion.getEmpty(), false, obj);
    }

    public final void startNode(int i, Object obj) {
        startGroup(i, obj, true, Composer.Companion.getEmpty());
    }

    public final String toDebugString() {
        StringBuilder sb = new StringBuilder();
        sb.append(toString());
        sb.append('\n');
        sb.append("  parent:    " + this.parent);
        sb.append('\n');
        sb.append("  current:   " + this.currentGroup);
        sb.append('\n');
        sb.append("  group gap: " + this.groupGapStart + '-' + (this.groupGapStart + this.groupGapLen) + '(' + this.groupGapLen + ')');
        sb.append('\n');
        sb.append("  slots gap: " + this.slotsGapStart + '-' + (this.slotsGapStart + this.slotsGapLen) + '(' + this.slotsGapLen + ')');
        sb.append('\n');
        StringBuilder sb2 = new StringBuilder("  gap owner: ");
        sb2.append(this.slotsGapOwner);
        sb.append(sb2.toString());
        sb.append('\n');
        int size$runtime = getSize$runtime();
        for (int i = 0; i < size$runtime; i++) {
            groupAsString(sb, i);
            sb.append('\n');
        }
        return sb.toString();
    }

    public String toString() {
        return "SlotWriter(current = " + this.currentGroup + " end=" + this.currentGroupEnd + " size = " + getSize$runtime() + " gap=" + this.groupGapStart + '-' + (this.groupGapStart + this.groupGapLen) + ')';
    }

    public final void traverseGroupAndChildren(int i, nl3<? super Integer, j59> nl3Var, nl3<? super Integer, j59> nl3Var2) {
        int iParent = parent(i);
        int size$runtime = getSize$runtime();
        int iGroupSize = groupSize(i) + i;
        int i2 = i;
        while (i2 < iGroupSize) {
            nl3Var.invoke(Integer.valueOf(i2));
            int i3 = i2 + 1;
            int iParent2 = i3 < size$runtime ? parent(i3) : -1;
            if (iParent2 != i2) {
                while (true) {
                    nl3Var2.invoke(Integer.valueOf(i2));
                    if (i2 == i || iParent == iParent2) {
                        break;
                    }
                    i2 = iParent;
                    iParent = parent(iParent);
                }
            }
            i2 = i3;
            iParent = iParent2;
        }
    }

    public final void trimTailSlots(int i) {
        if (!(i > 0)) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        int i2 = this.parent;
        int iSlotIndex = slotIndex(this.groups, groupIndexToAddress(i2));
        int iDataIndex = dataIndex(this.groups, groupIndexToAddress(i2 + 1)) - i;
        if (!(iDataIndex >= iSlotIndex)) {
            ComposerKt.composeImmediateRuntimeError("Check failed");
        }
        removeSlots(iDataIndex, i, i2);
        int i3 = this.currentSlot;
        if (i3 >= iSlotIndex) {
            this.currentSlot = i3 - i;
        }
    }

    public final GapAnchor tryAnchor$runtime(int i) {
        if (i < 0 || i >= getSize$runtime()) {
            return null;
        }
        return SlotTableKt.find(this.anchors, i, getSize$runtime());
    }

    public final Object update(Object obj) {
        if (this.insertCount <= 0 || this.currentSlot == this.slotsGapStart) {
            return rawUpdate(obj);
        }
        MutableIntObjectMap<MutableObjectList<Object>> mutableIntObjectMap = this.deferredSlotWrites;
        jh2 jh2Var = null;
        int i = 1;
        int i2 = 0;
        if (mutableIntObjectMap == null) {
            mutableIntObjectMap = new MutableIntObjectMap<>(i2, i, jh2Var);
        }
        this.deferredSlotWrites = mutableIntObjectMap;
        int i3 = this.parent;
        MutableObjectList<Object> mutableObjectList = mutableIntObjectMap.get(i3);
        if (mutableObjectList == null) {
            mutableObjectList = new MutableObjectList<>(i2, i, jh2Var);
            mutableIntObjectMap.set(i3, mutableObjectList);
        }
        mutableObjectList.add(obj);
        return Composer.Companion.getEmpty();
    }

    public final void updateAux(Object obj) {
        int iGroupIndexToAddress = groupIndexToAddress(this.currentGroup);
        if (!((this.groups[(iGroupIndexToAddress * 5) + 1] & 268435456) != 0)) {
            ComposerKt.composeImmediateRuntimeError("Updating the data of a group that was not created with a data slot");
        }
        this.slots[dataIndexToDataAddress(auxIndex(this.groups, iGroupIndexToAddress))] = obj;
    }

    public final void updateNode(GapAnchor gapAnchor, Object obj) {
        updateNodeOfGroup(gapAnchor.toIndexFor(this), obj);
    }

    public final void updateParentNode(Object obj) {
        updateNodeOfGroup(this.parent, obj);
    }

    public final void updateToTableMaps() {
        this.sourceInformationMap = this.table.getSourceInformationMap$runtime();
        this.calledByMap = this.table.getCalledByMap$runtime();
    }

    public final void verifyDataAnchors$runtime() {
        int i = this.slotsGapOwner;
        int length = this.slots.length - this.slotsGapLen;
        int size$runtime = getSize$runtime();
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        while (i2 < size$runtime) {
            int iGroupIndexToAddress = groupIndexToAddress(i2);
            int[] iArr = this.groups;
            int i4 = iArr[(iGroupIndexToAddress * 5) + 4];
            int iDataIndex = dataIndex(iArr, iGroupIndexToAddress);
            if (!(iDataIndex >= i3)) {
                StringBuilder sbF = bg.f(i2, i3, "Data index out of order at ", ", previous = ", ", current = ");
                sbF.append(iDataIndex);
                PreconditionsKt.throwIllegalStateException(sbF.toString());
            }
            if (!(iDataIndex <= length)) {
                PreconditionsKt.throwIllegalStateException("Data index, " + iDataIndex + ", out of bound at " + i2);
            }
            if (i4 < 0 && !z) {
                if (!(i == i2)) {
                    PreconditionsKt.throwIllegalStateException("Expected the slot gap owner to be " + i + " found gap at " + i2);
                }
                z = true;
            }
            i2++;
            i3 = iDataIndex;
        }
    }

    public final void verifyParentAnchors$runtime() {
        int i = this.groupGapStart;
        int i2 = this.groupGapLen;
        int capacity = getCapacity();
        int i3 = 0;
        while (true) {
            if (i3 >= i) {
                break;
            }
            if (!(this.groups[(i3 * 5) + 2] > -2)) {
                PreconditionsKt.throwIllegalStateException("Expected a start relative anchor at " + i3);
            }
            i3++;
        }
        for (int i4 = i2 + i; i4 < capacity; i4++) {
            int i5 = this.groups[(i4 * 5) + 2];
            if (parentAnchorToIndex(i5) < i) {
                if (!(i5 > -2)) {
                    PreconditionsKt.throwIllegalStateException("Expected a start relative anchor at " + i4);
                }
            } else if (!(i5 <= -2)) {
                PreconditionsKt.throwIllegalStateException("Expected an end relative anchor at " + i4);
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<GapAnchor> moveGroup(SlotWriter slotWriter, int i, SlotWriter slotWriter2, boolean z, boolean z2, boolean z3) {
            boolean zRemoveGroups;
            List<GapAnchor> list;
            int iGroupSize = slotWriter.groupSize(i);
            int i2 = i + iGroupSize;
            int iDataIndex = slotWriter.dataIndex(i);
            int iDataIndex2 = slotWriter.dataIndex(i2);
            int i3 = iDataIndex2 - iDataIndex;
            boolean zContainsAnyGroupMarks = slotWriter.containsAnyGroupMarks(i);
            slotWriter2.insertGroups(iGroupSize);
            slotWriter2.insertSlots(i3, slotWriter2.getCurrentGroup());
            if (slotWriter.groupGapStart < i2) {
                slotWriter.moveGroupGapTo(i2);
            }
            if (slotWriter.slotsGapStart < iDataIndex2) {
                slotWriter.moveSlotGapTo(iDataIndex2, i2);
            }
            int[] iArr = slotWriter2.groups;
            int currentGroup = slotWriter2.getCurrentGroup();
            int i4 = currentGroup * 5;
            aq5.h(i4, i * 5, i2 * 5, slotWriter.groups, iArr);
            Object[] objArr = slotWriter2.slots;
            int i5 = slotWriter2.currentSlot;
            System.arraycopy(slotWriter.slots, iDataIndex, objArr, i5, i3);
            int parent = slotWriter2.getParent();
            iArr[i4 + 2] = parent;
            int i6 = currentGroup - i;
            int i7 = currentGroup + iGroupSize;
            int iDataIndex3 = i5 - slotWriter2.dataIndex(iArr, currentGroup);
            int i8 = slotWriter2.slotsGapOwner;
            int i9 = slotWriter2.slotsGapLen;
            int length = objArr.length;
            int i10 = i8;
            int i11 = currentGroup;
            while (true) {
                zRemoveGroups = false;
                if (i11 >= i7) {
                    break;
                }
                if (i11 != currentGroup) {
                    int i12 = (i11 * 5) + 2;
                    iArr[i12] = iArr[i12] + i6;
                }
                int[] iArr2 = iArr;
                int i13 = currentGroup;
                iArr2[(i11 * 5) + 4] = slotWriter2.dataIndexToDataAnchor(slotWriter2.dataIndex(iArr, i11) + iDataIndex3, i10 >= i11 ? slotWriter2.slotsGapStart : 0, i9, length);
                if (i11 == i10) {
                    i10++;
                }
                i11++;
                currentGroup = i13;
                iArr = iArr2;
            }
            int[] iArr3 = iArr;
            slotWriter2.slotsGapOwner = i10;
            int iLocationOf = SlotTableKt.locationOf(slotWriter.anchors, i, slotWriter.getSize$runtime());
            int iLocationOf2 = SlotTableKt.locationOf(slotWriter.anchors, i2, slotWriter.getSize$runtime());
            if (iLocationOf < iLocationOf2) {
                ArrayList arrayList = slotWriter.anchors;
                ArrayList arrayList2 = new ArrayList(iLocationOf2 - iLocationOf);
                for (int i14 = iLocationOf; i14 < iLocationOf2; i14++) {
                    GapAnchor gapAnchor = (GapAnchor) arrayList.get(i14);
                    gapAnchor.setLocation$runtime(gapAnchor.getLocation$runtime() + i6);
                    arrayList2.add(gapAnchor);
                }
                slotWriter2.anchors.addAll(SlotTableKt.locationOf(slotWriter2.anchors, slotWriter2.getCurrentGroup(), slotWriter2.getSize$runtime()), arrayList2);
                arrayList.subList(iLocationOf, iLocationOf2).clear();
                list = arrayList2;
            } else {
                list = kx2.b;
            }
            List<GapAnchor> list2 = list;
            if (!list2.isEmpty()) {
                HashMap map = slotWriter.sourceInformationMap;
                HashMap map2 = slotWriter2.sourceInformationMap;
                if (map != null && map2 != null) {
                    int size = list2.size();
                    for (int i15 = 0; i15 < size; i15++) {
                        GapAnchor gapAnchor2 = list.get(i15);
                        GapGroupSourceInformation gapGroupSourceInformation = (GapGroupSourceInformation) map.get(gapAnchor2);
                        if (gapGroupSourceInformation != null) {
                            map.remove(gapAnchor2);
                            map2.put(gapAnchor2, gapGroupSourceInformation);
                        }
                    }
                }
            }
            int parent2 = slotWriter2.getParent();
            GapGroupSourceInformation gapGroupSourceInformationSourceInformationOf$runtime = slotWriter2.sourceInformationOf$runtime(parent);
            if (gapGroupSourceInformationSourceInformationOf$runtime != null) {
                int iGroupSize2 = parent2 + 1;
                int currentGroup2 = slotWriter2.getCurrentGroup();
                int i16 = -1;
                while (iGroupSize2 < currentGroup2) {
                    i16 = iGroupSize2;
                    iGroupSize2 = SlotTableKt.groupSize(slotWriter2.groups, iGroupSize2) + iGroupSize2;
                }
                gapGroupSourceInformationSourceInformationOf$runtime.addGroupAfter(slotWriter2, i16, currentGroup2);
            }
            int iParent = slotWriter.parent(i);
            if (z3) {
                if (z) {
                    boolean z4 = iParent >= 0;
                    if (z4) {
                        slotWriter.startGroup();
                        slotWriter.advanceBy(iParent - slotWriter.getCurrentGroup());
                        slotWriter.startGroup();
                    }
                    slotWriter.advanceBy(i - slotWriter.getCurrentGroup());
                    boolean zRemoveGroup = slotWriter.removeGroup();
                    if (z4) {
                        slotWriter.skipToGroupEnd();
                        slotWriter.endGroup();
                        slotWriter.skipToGroupEnd();
                        slotWriter.endGroup();
                    }
                    zRemoveGroups = zRemoveGroup;
                } else {
                    zRemoveGroups = slotWriter.removeGroups(i, iGroupSize);
                    slotWriter.removeSlots(iDataIndex, i3, i - 1);
                }
            }
            if (zRemoveGroups) {
                ComposerKt.composeImmediateRuntimeError("Unexpectedly removed anchors");
            }
            int i17 = slotWriter2.nodeCount;
            int i18 = iArr3[i4 + 1];
            slotWriter2.nodeCount = i17 + ((1073741824 & i18) == 0 ? i18 & 67108863 : 1);
            if (z2) {
                slotWriter2.currentGroup = i7;
                slotWriter2.currentSlot = i5 + i3;
            }
            if (zContainsAnyGroupMarks) {
                slotWriter2.updateContainsMark(parent);
            }
            return list;
        }

        public static /* synthetic */ List moveGroup$default(Companion companion, SlotWriter slotWriter, int i, SlotWriter slotWriter2, boolean z, boolean z2, boolean z3, int i2, Object obj) {
            if ((i2 & 32) != 0) {
                z3 = true;
            }
            return companion.moveGroup(slotWriter, i, slotWriter2, z, z2, z3);
        }

        private Companion() {
        }
    }

    public final void updateNode(Object obj) {
        updateNodeOfGroup(this.currentGroup, obj);
    }

    public final void startData(int i, Object obj, Object obj2) {
        startGroup(i, obj, false, obj2);
    }

    public final void startNode(int i, Object obj, Object obj2) {
        startGroup(i, obj, true, obj2);
    }

    public final int parent(int i) {
        return parent(this.groups, i);
    }

    private final int parent(int[] iArr, int i) {
        return parentAnchorToIndex(iArr[(groupIndexToAddress(i) * 5) + 2]);
    }

    public final boolean isNode(int i) {
        return (this.groups[(groupIndexToAddress(i) * 5) + 1] & 1073741824) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int dataIndex(int i) {
        return dataIndex(this.groups, groupIndexToAddress(i));
    }

    public final Object set(int i, Object obj) {
        return set(getCurrentGroup(), i, obj);
    }

    public final Object set(int i, int i2, Object obj) {
        int iDataIndexToDataAddress = dataIndexToDataAddress(slotIndexOfGroupSlotIndex(i, i2));
        Object[] objArr = this.slots;
        Object obj2 = objArr[iDataIndexToDataAddress];
        objArr[iDataIndexToDataAddress] = obj;
        return obj2;
    }

    public final Object node(GapAnchor gapAnchor) {
        return node(gapAnchor.toIndexFor(this));
    }

    public final Object slot(GapAnchor gapAnchor, int i) {
        return slot(anchorIndex(gapAnchor), i);
    }

    public final void ensureStarted(GapAnchor gapAnchor) {
        ensureStarted(gapAnchor.toIndexFor(this));
    }

    public final void startGroup(int i) {
        Composer.Companion companion = Composer.Companion;
        startGroup(i, companion.getEmpty(), false, companion.getEmpty());
    }

    public final void startGroup(int i, Object obj) {
        startGroup(i, obj, false, Composer.Companion.getEmpty());
    }

    public final void startGroup() {
        if (!(this.insertCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("Key must be supplied when inserting");
        }
        Composer.Companion companion = Composer.Companion;
        startGroup(0, companion.getEmpty(), false, companion.getEmpty());
    }
}
