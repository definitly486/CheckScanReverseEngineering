package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.unit.IntOffset;
import defpackage.aa4;
import defpackage.kx2;
import defpackage.nn1;
import defpackage.qn1;
import defpackage.wm4;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyLayoutMeasuredItemKt {
    private static final Comparator<LazyLayoutMeasuredItem> LazyLayoutMeasuredItemIndexComparator = new wm4();

    /* JADX INFO: Access modifiers changed from: private */
    public static final int LazyLayoutMeasuredItemIndexComparator$lambda$0(LazyLayoutMeasuredItem lazyLayoutMeasuredItem, LazyLayoutMeasuredItem lazyLayoutMeasuredItem2) {
        return aa4.f(lazyLayoutMeasuredItem.getIndex(), lazyLayoutMeasuredItem2.getIndex());
    }

    private static final int getMainAxisOffset(LazyLayoutMeasuredItem lazyLayoutMeasuredItem) {
        long jMo2164getOffsetBjo55l4 = lazyLayoutMeasuredItem.mo2164getOffsetBjo55l4(0);
        return lazyLayoutMeasuredItem.isVertical() ? IntOffset.m9171getYimpl(jMo2164getOffsetBjo55l4) : IntOffset.m9170getXimpl(jMo2164getOffsetBjo55l4);
    }

    public static final <T extends LazyLayoutMeasuredItem> List<T> updatedVisibleItems(int i, int i2, List<? extends T> list, List<? extends T> list2) {
        if (list.isEmpty()) {
            return kx2.b;
        }
        ArrayList arrayListV0 = qn1.v0(list2);
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            T t = list.get(i3);
            int index = t.getIndex();
            if (i <= index && index <= i2) {
                arrayListV0.add(t);
            }
        }
        nn1.J(LazyLayoutMeasuredItemIndexComparator, arrayListV0);
        return arrayListV0;
    }
}
