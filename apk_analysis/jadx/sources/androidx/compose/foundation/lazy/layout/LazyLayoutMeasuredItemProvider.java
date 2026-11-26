package androidx.compose.foundation.lazy.layout;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import defpackage.il1;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class LazyLayoutMeasuredItemProvider<T extends LazyLayoutMeasuredItem> {
    public static final int $stable = 8;
    private final MutableIntObjectMap<List<Placeable>> placeablesCache = IntObjectMapKt.mutableIntObjectMapOf();

    /* JADX INFO: renamed from: getAndMeasure--hBUhpc */
    public abstract T mo2166getAndMeasurehBUhpc(int i, int i2, int i3, long j);

    /* JADX INFO: renamed from: getPlaceables-3p2s80s, reason: not valid java name */
    public final List<Placeable> m2222getPlaceables3p2s80s(LazyLayoutMeasureScope lazyLayoutMeasureScope, int i, long j) {
        List<Placeable> list = this.placeablesCache.get(i);
        if (list != null) {
            return list;
        }
        List<Measurable> listCompose = lazyLayoutMeasureScope.compose(i);
        int size = listCompose.size();
        ArrayList arrayList = new ArrayList(size);
        int iB = 0;
        while (iB < size) {
            iB = il1.b(listCompose.get(iB), j, arrayList, iB, 1);
        }
        this.placeablesCache.set(i, arrayList);
        return arrayList;
    }
}
