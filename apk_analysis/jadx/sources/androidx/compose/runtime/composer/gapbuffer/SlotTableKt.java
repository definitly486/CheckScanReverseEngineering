package androidx.compose.runtime.composer.gapbuffer;

import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.compose.runtime.SlotStorage;
import androidx.compose.runtime.tooling.CompositionGroup;
import defpackage.aa4;
import defpackage.av;
import defpackage.j59;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.ra8;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SlotTableKt {
    private static final int Aux_Mask = 268435456;
    private static final int Aux_Shift = 28;
    private static final int ContainsMark_Mask = 67108864;
    private static final int ContainsMark_Shift = 26;
    private static final int DataAnchor_Offset = 4;
    private static final long[] EmptyLongArray = new long[0];
    private static final int GroupInfo_Offset = 1;
    private static final int Group_Fields_Size = 5;
    private static final int Key_Offset = 0;
    private static final int LIVE_EDIT_INVALID_KEY = -3;
    private static final int Mark_Mask = 134217728;
    private static final int Mark_Shift = 27;
    private static final int MinGroupGrowthSize = 32;
    private static final int MinSlotsGrowthSize = 32;
    private static final int NodeBit_Mask = 1073741824;
    private static final int NodeBit_Shift = 30;
    private static final int NodeCount_Mask = 67108863;
    private static final int ObjectKey_Mask = 536870912;
    private static final int ObjectKey_Shift = 29;
    private static final int ParentAnchor_Offset = 2;
    private static final int Size_Offset = 3;
    private static final int Slots_Shift = 28;
    private static final int parentAnchorPivot = -2;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void add(MutableIntObjectMap<MutableIntSet> mutableIntObjectMap, int i, int i2) {
        MutableIntSet mutableIntSet = mutableIntObjectMap.get(i);
        if (mutableIntSet == null) {
            mutableIntSet = new MutableIntSet(0, 1, null);
            mutableIntObjectMap.set(i, mutableIntSet);
        }
        mutableIntSet.add(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addAux(int[] iArr, int i) {
        int i2 = (i * 5) + 1;
        iArr[i2] = iArr[i2] | 268435456;
    }

    public static final SlotTable asGapBufferSlotTable(SlotStorage slotStorage) {
        SlotTable slotTable = slotStorage instanceof SlotTable ? (SlotTable) slotStorage : null;
        if (slotTable != null) {
            return slotTable;
        }
        throw av.b("Inconsistent composition");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int auxIndex(int[] iArr, int i) {
        int i2 = i * 5;
        if (i2 >= iArr.length) {
            return iArr.length;
        }
        return Integer.bitCount(iArr[i2 + 1] >> 29) + iArr[i2 + 4];
    }

    public static final CompositionGroup compositionGroupOf(SlotTable slotTable, int i) {
        return new SlotTableGroup(slotTable, i, slotTable.getVersion$runtime());
    }

    private static final boolean containsAnyMark(int[] iArr, int i) {
        return (iArr[(i * 5) + 1] & 201326592) != 0;
    }

    private static final boolean containsMark(int[] iArr, int i) {
        return (iArr[(i * 5) + 1] & 67108864) != 0;
    }

    private static final int countOneBits(int i) {
        return Integer.bitCount(i);
    }

    private static final int dataAnchor(int[] iArr, int i) {
        return iArr[(i * 5) + 4];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Integer> dataAnchors(int[] iArr, int i) {
        return slice(iArr, kx6.m(5, kx6.n(4, i)));
    }

    public static /* synthetic */ List dataAnchors$default(int[] iArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = iArr.length;
        }
        return dataAnchors(iArr, i);
    }

    private static final <T> void fastForEach(T[] tArr, nl3<? super T, j59> nl3Var) {
        for (T t : tArr) {
            nl3Var.invoke(t);
        }
    }

    private static final <T> int fastIndexOf(ArrayList<T> arrayList, nl3<? super T, Boolean> nl3Var) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (nl3Var.invoke(arrayList.get(i)).booleanValue()) {
                return i;
            }
        }
        return -1;
    }

    private static final <T> T fastLastOrNull(ArrayList<T> arrayList, nl3<? super T, Boolean> nl3Var) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            T t = arrayList.get(size);
            if (nl3Var.invoke(t).booleanValue()) {
                return t;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GapAnchor find(ArrayList<GapAnchor> arrayList, int i, int i2) {
        int iSearch = search(arrayList, i, i2);
        if (iSearch >= 0) {
            return arrayList.get(iSearch);
        }
        return null;
    }

    private static final int getFirstBitSet(long j) {
        return Long.numberOfTrailingZeros(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int getNextGroup(SlotWriter slotWriter) {
        return slotWriter.groupSize(slotWriter.getCurrentGroup()) + slotWriter.getCurrentGroup();
    }

    private static final GapAnchor getOrAdd(ArrayList<GapAnchor> arrayList, int i, int i2, ll3<GapAnchor> ll3Var) {
        int iSearch = search(arrayList, i, i2);
        if (iSearch >= 0) {
            return arrayList.get(iSearch);
        }
        GapAnchor gapAnchorInvoke = ll3Var.invoke();
        arrayList.add(-(iSearch + 1), gapAnchorInvoke);
        return gapAnchorInvoke;
    }

    private static final int groupInfo(int[] iArr, int i) {
        return iArr[(i * 5) + 1];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int groupSize(int[] iArr, int i) {
        return iArr[(i * 5) + 3];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Integer> groupSizes(int[] iArr, int i) {
        return slice(iArr, kx6.m(5, kx6.n(3, i)));
    }

    public static /* synthetic */ List groupSizes$default(int[] iArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = iArr.length;
        }
        return groupSizes(iArr, i);
    }

    private static final boolean hasAux(int[] iArr, int i) {
        return (iArr[(i * 5) + 1] & 268435456) != 0;
    }

    private static final boolean hasMark(int[] iArr, int i) {
        return (iArr[(i * 5) + 1] & 134217728) != 0;
    }

    private static final boolean hasObjectKey(int[] iArr, int i) {
        return (iArr[(i * 5) + 1] & 536870912) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initGroup(int[] iArr, int i, int i2, boolean z, boolean z2, boolean z3, int i3, int i4) {
        int i5 = i * 5;
        iArr[i5] = i2;
        iArr[i5 + 1] = ((z ? 1 : 0) << 30) | ((z2 ? 1 : 0) << 29) | ((z3 ? 1 : 0) << 28);
        iArr[i5 + 2] = i3;
        iArr[i5 + 3] = 0;
        iArr[i5 + 4] = i4;
    }

    private static final boolean isNode(int[] iArr, int i) {
        return (iArr[(i * 5) + 1] & 1073741824) != 0;
    }

    private static final int key(int[] iArr, int i) {
        return iArr[i * 5];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Integer> keys(int[] iArr, int i) {
        return slice(iArr, kx6.m(5, kx6.n(0, i)));
    }

    public static /* synthetic */ List keys$default(int[] iArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = iArr.length;
        }
        return keys(iArr, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int locationOf(ArrayList<GapAnchor> arrayList, int i, int i2) {
        int iSearch = search(arrayList, i, i2);
        return iSearch >= 0 ? iSearch : -(iSearch + 1);
    }

    private static final int nodeCount(int[] iArr, int i) {
        return iArr[(i * 5) + 1] & NodeCount_Mask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Integer> nodeCounts(int[] iArr, int i) {
        List<Integer> listSlice = slice(iArr, kx6.m(5, kx6.n(1, i)));
        ArrayList arrayList = new ArrayList(listSlice.size());
        int size = listSlice.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(Integer.valueOf(listSlice.get(i2).intValue() & NodeCount_Mask));
        }
        return arrayList;
    }

    public static /* synthetic */ List nodeCounts$default(int[] iArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = iArr.length;
        }
        return nodeCounts(iArr, i);
    }

    private static final int nodeIndex(int[] iArr, int i) {
        return iArr[(i * 5) + 4];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int objectKeyIndex(int[] iArr, int i) {
        int i2 = i * 5;
        return Integer.bitCount(iArr[i2 + 1] >> 30) + iArr[i2 + 4];
    }

    private static final int parentAnchor(int[] iArr, int i) {
        return iArr[(i * 5) + 2];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Integer> parentAnchors(int[] iArr, int i) {
        return slice(iArr, kx6.m(5, kx6.n(2, i)));
    }

    public static /* synthetic */ List parentAnchors$default(int[] iArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = iArr.length;
        }
        return parentAnchors(iArr, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int search(ArrayList<GapAnchor> arrayList, int i, int i2) {
        int size = arrayList.size() - 1;
        int i3 = 0;
        while (i3 <= size) {
            int i4 = (i3 + size) >>> 1;
            int location$runtime = arrayList.get(i4).getLocation$runtime();
            if (location$runtime < 0) {
                location$runtime += i2;
            }
            int iF = aa4.f(location$runtime, i);
            if (iF < 0) {
                i3 = i4 + 1;
            } else {
                if (iF <= 0) {
                    return i4;
                }
                size = i4 - 1;
            }
        }
        return -(i3 + 1);
    }

    private static final List<Integer> slice(int[] iArr, Iterable<Integer> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(iArr[it.next().intValue()]));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int slotAnchor(int[] iArr, int i) {
        int i2 = i * 5;
        return Integer.bitCount(iArr[i2 + 1] >> 28) + iArr[i2 + 4];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String summarize(String str, int i) {
        String strY = ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(ra8.y(str, "androidx.", "a."), "compose.", "c."), "runtime.", "r."), "internal.", "ι."), "ui.", "u."), "Modifier", "μ"), "material.", "m."), "Function", "λ"), "OpaqueKey", "κ"), "MutableState", "σ");
        return strY.substring(0, Math.min(i, strY.length()));
    }

    public static final void throwConcurrentModificationException() {
        throw new ConcurrentModificationException();
    }

    private static final int toBit(boolean z) {
        return z ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateContainsMark(int[] iArr, int i, boolean z) {
        int i2 = (i * 5) + 1;
        iArr[i2] = ((z ? 1 : 0) << 26) | (iArr[i2] & (-67108865));
    }

    private static final void updateDataAnchor(int[] iArr, int i, int i2) {
        iArr[(i * 5) + 4] = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateGroupKey(int[] iArr, int i, int i2) {
        iArr[i * 5] = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateGroupSize(int[] iArr, int i, int i2) {
        iArr[(i * 5) + 3] = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateMark(int[] iArr, int i, boolean z) {
        int i2 = (i * 5) + 1;
        iArr[i2] = ((z ? 1 : 0) << 27) | (iArr[i2] & (-134217729));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateNodeCount(int[] iArr, int i, int i2) {
        if (i2 >= 0) {
        }
        int i3 = (i * 5) + 1;
        iArr[i3] = i2 | (iArr[i3] & (-67108864));
    }

    private static final void updateParentAnchor(int[] iArr, int i, int i2) {
        iArr[(i * 5) + 2] = i2;
    }
}
