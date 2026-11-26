package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.IntervalList;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class LazyStaggeredGridSpanProvider {
    public static final int $stable = 8;
    private final IntervalList<LazyStaggeredGridInterval> intervals;

    public LazyStaggeredGridSpanProvider(IntervalList<LazyStaggeredGridInterval> intervalList) {
        this.intervals = intervalList;
    }

    public final IntervalList<LazyStaggeredGridInterval> getIntervals() {
        return this.intervals;
    }

    public final boolean isFullSpan(int i) {
        if (i >= 0 && i < this.intervals.getSize()) {
            IntervalList.Interval<LazyStaggeredGridInterval> interval = this.intervals.get(i);
            nl3<Integer, StaggeredGridItemSpan> span = interval.getValue().getSpan();
            int startIndex = i - interval.getStartIndex();
            if (span != null && span.invoke(Integer.valueOf(startIndex)) == StaggeredGridItemSpan.Companion.getFullLine()) {
                return true;
            }
        }
        return false;
    }
}
