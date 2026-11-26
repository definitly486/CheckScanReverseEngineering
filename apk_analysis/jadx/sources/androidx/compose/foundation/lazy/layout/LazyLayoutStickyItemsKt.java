package androidx.compose.foundation.lazy.layout;

import androidx.collection.IntList;
import androidx.compose.ui.unit.IntOffset;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyLayoutStickyItemsKt {
    private static final boolean Debug = false;

    public static final <T extends LazyLayoutMeasuredItem> List<T> applyStickyItems(StickyItemsPlacement stickyItemsPlacement, int i, int i2, List<T> list, IntList intList, int i3, int i4, int i5, int i6, nl3<? super Integer, ? extends T> nl3Var) {
        StickyItemsPlacement stickyItemsPlacement2 = stickyItemsPlacement;
        if (stickyItemsPlacement2 == null || list.isEmpty() || intList._size == 0) {
            return kx2.b;
        }
        IntList stickingIndices = stickyItemsPlacement2.getStickingIndices(i, i2, intList);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(list.size());
        int size = list.size();
        for (int i7 = 0; i7 < size; i7++) {
            T t = list.get(i7);
            if (intList.contains(t.getIndex())) {
                arrayList2.add(t);
            }
        }
        int[] iArr = stickingIndices.content;
        int i8 = stickingIndices._size;
        int i9 = 0;
        while (i9 < i8) {
            int i10 = iArr[i9];
            Iterator<T> it = list.iterator();
            int i11 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i11 = -1;
                    break;
                }
                if (it.next().getIndex() == i10) {
                    break;
                }
                i11++;
            }
            T tInvoke = i11 == -1 ? nl3Var.invoke(Integer.valueOf(i10)) : list.remove(i11);
            ArrayList arrayList3 = arrayList2;
            T t2 = tInvoke;
            int iCalculateStickingItemOffset = stickyItemsPlacement2.calculateStickingItemOffset(arrayList3, i10, tInvoke.getMainAxisSizeWithSpacings(), i11 == -1 ? Integer.MIN_VALUE : getMainAxisOffset(tInvoke), i3, i4, i5, i6);
            t2.setNonScrollableItem(true);
            t2.position(iCalculateStickingItemOffset, 0, i5, i6);
            arrayList.add(t2);
            i9++;
            stickyItemsPlacement2 = stickyItemsPlacement;
            arrayList2 = arrayList3;
        }
        return arrayList;
    }

    private static final void debugLog(ll3<String> ll3Var) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int getMainAxisOffset(LazyLayoutMeasuredItem lazyLayoutMeasuredItem) {
        long jMo2164getOffsetBjo55l4 = lazyLayoutMeasuredItem.mo2164getOffsetBjo55l4(0);
        return lazyLayoutMeasuredItem.isVertical() ? IntOffset.m9171getYimpl(jMo2164getOffsetBjo55l4) : IntOffset.m9170getXimpl(jMo2164getOffsetBjo55l4);
    }
}
