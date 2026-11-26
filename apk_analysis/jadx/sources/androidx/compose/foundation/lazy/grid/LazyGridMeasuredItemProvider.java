package androidx.compose.foundation.lazy.grid;

import androidx.collection.IntList;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class LazyGridMeasuredItemProvider extends LazyLayoutMeasuredItemProvider<LazyGridMeasuredItem> {
    public static final int $stable = 8;
    private final int defaultMainAxisSpacing;
    private final LazyGridItemProvider itemProvider;
    private final LazyLayoutMeasureScope measureScope;

    public LazyGridMeasuredItemProvider(LazyGridItemProvider lazyGridItemProvider, LazyLayoutMeasureScope lazyLayoutMeasureScope, int i) {
        this.itemProvider = lazyGridItemProvider;
        this.measureScope = lazyLayoutMeasureScope;
        this.defaultMainAxisSpacing = i;
    }

    /* JADX INFO: renamed from: createItem-O3s9Psw */
    public abstract LazyGridMeasuredItem mo2186createItemO3s9Psw(int i, Object obj, Object obj2, int i2, int i3, List<? extends Placeable> list, long j, int i4, int i5);

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider
    /* JADX INFO: renamed from: getAndMeasure--hBUhpc */
    public LazyGridMeasuredItem mo2166getAndMeasurehBUhpc(int i, int i2, int i3, long j) {
        return m2191getAndMeasurem8Kt_7k(i, j, i2, i3, this.defaultMainAxisSpacing);
    }

    /* JADX INFO: renamed from: getAndMeasure-m8Kt_7k, reason: not valid java name */
    public final LazyGridMeasuredItem m2191getAndMeasurem8Kt_7k(int i, long j, int i2, int i3, int i4) {
        int iM8996getMinHeightimpl;
        Object key = this.itemProvider.getKey(i);
        Object contentType = this.itemProvider.getContentType(i);
        List<Placeable> listM2222getPlaceables3p2s80s = m2222getPlaceables3p2s80s(this.measureScope, i, j);
        if (Constraints.m8993getHasFixedWidthimpl(j)) {
            iM8996getMinHeightimpl = Constraints.m8997getMinWidthimpl(j);
        } else {
            if (!Constraints.m8992getHasFixedHeightimpl(j)) {
                InlineClassHelperKt.throwIllegalArgumentException("does not have fixed height");
            }
            iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
        }
        return mo2186createItemO3s9Psw(i, key, contentType, iM8996getMinHeightimpl, i4, listM2222getPlaceables3p2s80s, j, i2, i3);
    }

    public final IntList getHeaderIndices() {
        return this.itemProvider.getHeaderIndexes();
    }

    public final LazyLayoutKeyIndexMap getKeyIndexMap() {
        return this.itemProvider.getKeyIndexMap();
    }
}
