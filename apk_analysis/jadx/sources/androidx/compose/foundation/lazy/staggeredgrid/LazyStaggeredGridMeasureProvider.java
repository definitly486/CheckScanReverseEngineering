package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.media3.muxer.MuxerUtil;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class LazyStaggeredGridMeasureProvider extends LazyLayoutMeasuredItemProvider<LazyStaggeredGridMeasuredItem> {
    public static final int $stable = 8;
    private final boolean isVertical;
    private final LazyStaggeredGridItemProvider itemProvider;
    private final LazyLayoutMeasureScope measureScope;
    private final LazyStaggeredGridSlots resolvedSlots;

    public LazyStaggeredGridMeasureProvider(boolean z, LazyStaggeredGridItemProvider lazyStaggeredGridItemProvider, LazyLayoutMeasureScope lazyLayoutMeasureScope, LazyStaggeredGridSlots lazyStaggeredGridSlots) {
        this.isVertical = z;
        this.itemProvider = lazyStaggeredGridItemProvider;
        this.measureScope = lazyLayoutMeasureScope;
        this.resolvedSlots = lazyStaggeredGridSlots;
    }

    /* JADX INFO: renamed from: childConstraints-JhjzzOo, reason: not valid java name */
    private final long m2271childConstraintsJhjzzOo(int i, int i2) {
        int i3;
        LazyStaggeredGridSlots lazyStaggeredGridSlots = this.resolvedSlots;
        if (i2 == 1) {
            i3 = lazyStaggeredGridSlots.getSizes()[i];
        } else {
            int i4 = lazyStaggeredGridSlots.getPositions()[i];
            int i5 = (i + i2) - 1;
            i3 = (this.resolvedSlots.getPositions()[i5] + this.resolvedSlots.getSizes()[i5]) - i4;
        }
        return this.isVertical ? Constraints.Companion.m9007fixedWidthOenEA2s(i3) : Constraints.Companion.m9006fixedHeightOenEA2s(i3);
    }

    /* JADX INFO: renamed from: createItem-pitSLOA */
    public abstract LazyStaggeredGridMeasuredItem mo2266createItempitSLOA(int i, int i2, int i3, Object obj, Object obj2, List<? extends Placeable> list, long j);

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider
    /* JADX INFO: renamed from: getAndMeasure--hBUhpc */
    public LazyStaggeredGridMeasuredItem mo2166getAndMeasurehBUhpc(int i, int i2, int i3, long j) {
        return mo2266createItempitSLOA(i, i2, i3, this.itemProvider.getKey(i), this.itemProvider.getContentType(i), m2222getPlaceables3p2s80s(this.measureScope, i, j), j);
    }

    /* JADX INFO: renamed from: getAndMeasure-jy6DScQ, reason: not valid java name */
    public final LazyStaggeredGridMeasuredItem m2272getAndMeasurejy6DScQ(int i, long j) {
        Object key = this.itemProvider.getKey(i);
        Object contentType = this.itemProvider.getContentType(i);
        int length = this.resolvedSlots.getSizes().length;
        int i2 = (int) (j >> 32);
        int i3 = length - 1;
        int i4 = i2 > i3 ? i3 : i2;
        int i5 = ((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - i2;
        int i6 = length - i4;
        int i7 = i5 > i6 ? i6 : i5;
        long jM2271childConstraintsJhjzzOo = m2271childConstraintsJhjzzOo(i4, i7);
        return mo2266createItempitSLOA(i, i4, i7, key, contentType, m2222getPlaceables3p2s80s(this.measureScope, i, jM2271childConstraintsJhjzzOo), jM2271childConstraintsJhjzzOo);
    }

    public final LazyLayoutKeyIndexMap getKeyIndexMap() {
        return this.itemProvider.getKeyIndexMap();
    }
}
