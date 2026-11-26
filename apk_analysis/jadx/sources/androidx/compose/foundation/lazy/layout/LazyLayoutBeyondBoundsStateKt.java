package androidx.compose.foundation.lazy.layout;

import defpackage.kx2;
import defpackage.y74;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyLayoutBeyondBoundsStateKt {
    public static final List<Integer> calculateLazyLayoutPinnedIndices(LazyLayoutItemProvider lazyLayoutItemProvider, LazyLayoutPinnedItemList lazyLayoutPinnedItemList, LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo) {
        y74 y74Var;
        if (!lazyLayoutBeyondBoundsInfo.hasIntervals() && lazyLayoutPinnedItemList.isEmpty()) {
            return kx2.b;
        }
        ArrayList arrayList = new ArrayList();
        if (lazyLayoutBeyondBoundsInfo.hasIntervals()) {
            y74Var = new y74(lazyLayoutBeyondBoundsInfo.getStart(), Math.min(lazyLayoutBeyondBoundsInfo.getEnd(), lazyLayoutItemProvider.getItemCount() - 1), 1);
        } else {
            y74 y74Var2 = y74.e;
            y74Var = y74.e;
        }
        int size = lazyLayoutPinnedItemList.size();
        for (int i = 0; i < size; i++) {
            LazyLayoutPinnedItemList.PinnedItem pinnedItem = lazyLayoutPinnedItemList.get(i);
            int iFindIndexByKey = LazyLayoutItemProviderKt.findIndexByKey(lazyLayoutItemProvider, pinnedItem.getKey(), pinnedItem.getIndex());
            int i2 = y74Var.b;
            if ((iFindIndexByKey > y74Var.c || i2 > iFindIndexByKey) && iFindIndexByKey >= 0 && iFindIndexByKey < lazyLayoutItemProvider.getItemCount()) {
                arrayList.add(Integer.valueOf(iFindIndexByKey));
            }
        }
        int i3 = y74Var.b;
        int i4 = y74Var.c;
        if (i3 <= i4) {
            while (true) {
                arrayList.add(Integer.valueOf(i3));
                if (i3 == i4) {
                    break;
                }
                i3++;
            }
        }
        return arrayList;
    }
}
