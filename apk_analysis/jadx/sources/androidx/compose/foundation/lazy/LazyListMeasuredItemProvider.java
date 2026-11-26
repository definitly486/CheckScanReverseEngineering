package androidx.compose.foundation.lazy;

import androidx.collection.IntList;
import androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.jh2;
import defpackage.n1;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class LazyListMeasuredItemProvider extends LazyLayoutMeasuredItemProvider<LazyListMeasuredItem> {
    public static final int $stable = 8;
    private final long childConstraints;
    private final LazyListItemProvider itemProvider;
    private final LazyLayoutMeasureScope measureScope;

    private LazyListMeasuredItemProvider(long j, boolean z, LazyListItemProvider lazyListItemProvider, LazyLayoutMeasureScope lazyLayoutMeasureScope) {
        this.itemProvider = lazyListItemProvider;
        this.measureScope = lazyLayoutMeasureScope;
        this.childConstraints = ConstraintsKt.Constraints$default(0, z ? Constraints.m8995getMaxWidthimpl(j) : Integer.MAX_VALUE, 0, z ? Integer.MAX_VALUE : Constraints.m8994getMaxHeightimpl(j), 5, null);
    }

    /* JADX INFO: renamed from: getAndMeasure-0kLqBqw$default, reason: not valid java name */
    public static /* synthetic */ LazyListMeasuredItem m2165getAndMeasure0kLqBqw$default(LazyListMeasuredItemProvider lazyListMeasuredItemProvider, int i, long j, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: getAndMeasure-0kLqBqw");
            return null;
        }
        if ((i2 & 2) != 0) {
            j = lazyListMeasuredItemProvider.childConstraints;
        }
        return lazyListMeasuredItemProvider.m2167getAndMeasure0kLqBqw(i, j);
    }

    /* JADX INFO: renamed from: createItem-X9ElhV4 */
    public abstract LazyListMeasuredItem mo2155createItemX9ElhV4(int i, Object obj, Object obj2, List<? extends Placeable> list, long j);

    /* JADX INFO: renamed from: getAndMeasure-0kLqBqw, reason: not valid java name */
    public final LazyListMeasuredItem m2167getAndMeasure0kLqBqw(int i, long j) {
        return mo2155createItemX9ElhV4(i, this.itemProvider.getKey(i), this.itemProvider.getContentType(i), m2222getPlaceables3p2s80s(this.measureScope, i, j), j);
    }

    /* JADX INFO: renamed from: getChildConstraints-msEJaDk, reason: not valid java name */
    public final long m2168getChildConstraintsmsEJaDk() {
        return this.childConstraints;
    }

    public final IntList getHeaderIndexes() {
        return this.itemProvider.getHeaderIndexes();
    }

    public final LazyLayoutKeyIndexMap getKeyIndexMap() {
        return this.itemProvider.getKeyIndexMap();
    }

    public final void keepAround(int i) {
        if (i < 0 || i >= this.itemProvider.getItemCount()) {
            return;
        }
        this.measureScope.compose(i);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemProvider
    /* JADX INFO: renamed from: getAndMeasure--hBUhpc, reason: not valid java name */
    public LazyListMeasuredItem mo2166getAndMeasurehBUhpc(int i, int i2, int i3, long j) {
        return m2167getAndMeasure0kLqBqw(i, j);
    }

    public /* synthetic */ LazyListMeasuredItemProvider(long j, boolean z, LazyListItemProvider lazyListItemProvider, LazyLayoutMeasureScope lazyLayoutMeasureScope, jh2 jh2Var) {
        this(j, z, lazyListItemProvider, lazyLayoutMeasureScope);
    }
}
