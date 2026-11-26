package androidx.compose.runtime.composer.linkbuffer;

import androidx.collection.IntSetKt;
import androidx.collection.MutableIntSet;
import androidx.compose.runtime.tooling.ComposeStackTraceBuilder;
import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import defpackage.aa4;
import defpackage.aq5;
import defpackage.h2;
import defpackage.ud;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SlotTableAddresSpaceKt {
    public static final int LAZY_ADDRESS = 0;
    public static final int NULL_ADDRESS = -1;
    private static final int SLOT_TABLE_GROUP_CHILD_OFFSET = 3;
    private static final int SLOT_TABLE_GROUP_FLAGS_OFFSET = 4;
    private static final int SLOT_TABLE_GROUP_KEY_OFFSET = 0;
    private static final int SLOT_TABLE_GROUP_NEXT_OFFSET = 1;
    private static final int SLOT_TABLE_GROUP_PARENT_OFFSET = 2;
    public static final int SLOT_TABLE_GROUP_SIZE = 6;
    private static final int SLOT_TABLE_GROUP_SLOTS_OFFSET = 5;
    private static final int SLOT_TABLE_INITIAL_GROUPS_SIZE = 768;
    private static final int SLOT_TABLE_INITIAL_SLOTS_SIZE = 256;
    private static final int SLOT_TABLE_SLOT_LARGE_SENTINEL = 15;
    public static final int SLOT_TABLE_SLOT_MAX_SMALL_SIZE = 15;
    private static final int SLOT_TABLE_SLOT_MOVE_BUFFER_SIZE = 8;
    public static final int SLOT_TABLE_SLOT_SHIFT = 4;
    private static final int SLOT_TABLE_SLOT_SMALL_SIZE_MASK = 15;
    private static final Object Unallocated = new Object() { // from class: androidx.compose.runtime.composer.linkbuffer.SlotTableAddresSpaceKt$Unallocated$1
        public String toString() {
            return "Unallocated";
        }
    };

    private static final boolean allUnallocated(Object[] objArr, int i, int i2) {
        int i3 = i2 + i;
        if (i3 >= objArr.length) {
            return false;
        }
        while (i < i3) {
            if (objArr[i] != Unallocated) {
                return false;
            }
            i++;
        }
        return true;
    }

    public static final List<ComposeStackTraceFrame> buildTrace(SlotTableAddressSpace slotTableAddressSpace, int i, Object obj, ComposeStackTraceBuilder composeStackTraceBuilder) {
        Object obj2;
        int[] groups = slotTableAddressSpace.getGroups();
        int i2 = i;
        while (i2 > 0) {
            int i3 = slotTableAddressSpace.getGroups()[i2 + 4];
            if ((i3 & 16777216) == 16777216) {
                obj2 = slotTableAddressSpace.getSlots()[Integer.bitCount(i3 & 8388608) + (slotTableAddressSpace.getGroups()[i2 + 5] >> 4)];
            } else {
                obj2 = null;
            }
            composeStackTraceBuilder.processEdge(slotTableAddressSpace.getGroups()[i2], obj2, slotTableAddressSpace.sourceInformationOf(i2), obj);
            obj = slotTableAddressSpace.anchorOfAddress(i2);
            i2 = groups[i2 + 2];
        }
        if (!(i2 != 0)) {
            h2.b(i, "Traversing parent of group not in the slot table: ");
        }
        return composeStackTraceBuilder.trace();
    }

    private static final void clearRange(Object[] objArr, int i, int i2) {
        if (i2 == i + 1) {
            objArr[i] = Unallocated;
        } else {
            aq5.t(Unallocated, objArr, i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int groupAllocate(int[] iArr, int i, int i2, int i3) {
        if (iArr == null || iArr.length < 6) {
            return -1;
        }
        int i4 = iArr[3];
        if (i4 >= iArr.length) {
            i4 = iArr[1];
            if (i4 < 0) {
                return -1;
            }
            iArr[1] = iArr[i4 + 1];
        } else {
            iArr[3] = i4 + 6;
        }
        iArr[i4] = i;
        iArr[i4 + 2] = i2;
        iArr[i4 + 1] = -1;
        iArr[i4 + 3] = -1;
        iArr[i4 + 4] = i3;
        iArr[i4 + 5] = -1;
        return i4;
    }

    public static final int groupChild(int[] iArr, int i) {
        return iArr[i + 3];
    }

    public static final int groupChildNodeCount(int[] iArr, int i, int i2) {
        int i3 = i + 4;
        int i4 = i2 | (iArr[i3] & (-8388608));
        iArr[i3] = i4;
        return i4;
    }

    public static final int groupFlags(int[] iArr, int i) {
        return iArr[i + 4];
    }

    public static final int groupKey(int[] iArr, int i) {
        return iArr[i];
    }

    public static final int groupNext(int[] iArr, int i) {
        return iArr[i + 1];
    }

    public static final int groupNodeCount(int[] iArr, int i) {
        int i2 = iArr[i + 4];
        if ((i2 & 8388608) == 8388608) {
            return 1;
        }
        return i2 & GroupFlagsSpec.CHILD_NODE_COUNT_MASK;
    }

    public static final int groupParent(int[] iArr, int i) {
        return iArr[i + 2];
    }

    public static final int groupSlotRange(int[] iArr, int i) {
        return iArr[i + 5];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initGroups(int[] iArr, int i) {
        if (iArr == null) {
            return;
        }
        iArr[1] = -1;
        iArr[3] = i;
    }

    public static final boolean isLargeSlotRangeSize(int i) {
        return i > 15;
    }

    public static final boolean isUnallocated(Object obj) {
        return aa4.e(obj, Unallocated);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int[] newGroupsArray(int i) {
        int[] iArr = new int[i];
        iArr[1] = -1;
        initGroups(iArr, 6);
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object[] newSlotsArray(int i) {
        Object[] objArr = new Object[i];
        aq5.t(Unallocated, objArr, 0, i);
        return objArr;
    }

    public static final int slotAddressOf(int i) {
        return i >> 4;
    }

    public static final int slotRangeFromAddressAndSize(int i, int i2) {
        return (i << 4) | (i2 <= 15 ? i2 - 1 : 15);
    }

    public static final int slotSmallSizeOf(int i) {
        return (i & 15) + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int validateFreeList(int[] iArr) {
        int i = iArr[1];
        MutableIntSet mutableIntSetMutableIntSetOf = IntSetKt.mutableIntSetOf();
        while (i >= 1) {
            if (!mutableIntSetMutableIntSetOf.contains(i)) {
                mutableIntSetMutableIntSetOf.add(i);
                int i2 = iArr[i + 1];
                if (i2 == -1) {
                    break;
                }
                if (i2 % 6 != 0 || i2 < 0) {
                    ud.e(i, "Invalid free link at ");
                    return 0;
                }
                i = i2;
            } else {
                ud.e(i, "Loop at ");
                return 0;
            }
        }
        return mutableIntSetMutableIntSetOf.getSize();
    }

    public static final void groupKey(int[] iArr, int i, int i2) {
        iArr[i] = i2;
    }

    public static final void groupChild(int[] iArr, int i, int i2) {
        iArr[i + 3] = i2;
    }

    public static final void groupFlags(int[] iArr, int i, int i2) {
        iArr[i + 4] = i2;
    }

    public static final void groupNext(int[] iArr, int i, int i2) {
        iArr[i + 1] = i2;
    }

    public static final void groupParent(int[] iArr, int i, int i2) {
        iArr[i + 2] = i2;
    }

    public static final void groupSlotRange(int[] iArr, int i, int i2) {
        iArr[i + 5] = i2;
    }

    public static final int groupChildNodeCount(int[] iArr, int i) {
        return iArr[i + 4] & GroupFlagsSpec.CHILD_NODE_COUNT_MASK;
    }
}
