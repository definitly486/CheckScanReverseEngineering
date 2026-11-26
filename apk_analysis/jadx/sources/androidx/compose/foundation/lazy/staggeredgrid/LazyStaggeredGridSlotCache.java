package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import defpackage.bm3;

/* JADX INFO: loaded from: classes.dex */
final class LazyStaggeredGridSlotCache implements LazyGridStaggeredGridSlotsProvider {
    private long cachedConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null);
    private float cachedDensity;
    private LazyStaggeredGridSlots cachedSizes;
    private final bm3<Density, Constraints, LazyStaggeredGridSlots> calculation;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyStaggeredGridSlotCache(bm3<? super Density, ? super Constraints, LazyStaggeredGridSlots> bm3Var) {
        this.calculation = bm3Var;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyGridStaggeredGridSlotsProvider
    /* JADX INFO: renamed from: invoke-0kLqBqw */
    public LazyStaggeredGridSlots mo2252invoke0kLqBqw(Density density, long j) {
        if (this.cachedSizes != null && Constraints.m8988equalsimpl0(this.cachedConstraints, j) && this.cachedDensity == density.getDensity()) {
            LazyStaggeredGridSlots lazyStaggeredGridSlots = this.cachedSizes;
            lazyStaggeredGridSlots.getClass();
            return lazyStaggeredGridSlots;
        }
        this.cachedConstraints = j;
        this.cachedDensity = density.getDensity();
        LazyStaggeredGridSlots lazyStaggeredGridSlotsInvoke = this.calculation.invoke(density, Constraints.m8982boximpl(j));
        this.cachedSizes = lazyStaggeredGridSlotsInvoke;
        return lazyStaggeredGridSlotsInvoke;
    }
}
