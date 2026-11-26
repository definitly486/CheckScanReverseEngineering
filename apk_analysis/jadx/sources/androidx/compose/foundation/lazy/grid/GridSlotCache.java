package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import defpackage.bm3;

/* JADX INFO: loaded from: classes.dex */
final class GridSlotCache implements LazyGridSlotsProvider {
    private long cachedConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null);
    private float cachedDensity;
    private LazyGridSlots cachedSizes;
    private final bm3<Density, Constraints, LazyGridSlots> calculation;

    /* JADX WARN: Multi-variable type inference failed */
    public GridSlotCache(bm3<? super Density, ? super Constraints, LazyGridSlots> bm3Var) {
        this.calculation = bm3Var;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridSlotsProvider
    /* JADX INFO: renamed from: invoke-0kLqBqw, reason: not valid java name */
    public LazyGridSlots mo2179invoke0kLqBqw(Density density, long j) {
        if (this.cachedSizes != null && Constraints.m8988equalsimpl0(this.cachedConstraints, j) && this.cachedDensity == density.getDensity()) {
            LazyGridSlots lazyGridSlots = this.cachedSizes;
            lazyGridSlots.getClass();
            return lazyGridSlots;
        }
        this.cachedConstraints = j;
        this.cachedDensity = density.getDensity();
        LazyGridSlots lazyGridSlotsInvoke = this.calculation.invoke(density, Constraints.m8982boximpl(j));
        this.cachedSizes = lazyGridSlotsInvoke;
        return lazyGridSlotsInvoke;
    }
}
