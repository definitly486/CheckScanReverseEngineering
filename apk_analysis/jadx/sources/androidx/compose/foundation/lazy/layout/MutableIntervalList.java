package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.collection.MutableVector;
import defpackage.j59;
import defpackage.n7;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class MutableIntervalList<T> implements IntervalList<T> {
    public static final int $stable = 8;
    private final MutableVector<IntervalList.Interval<T>> intervals = new MutableVector<>(new IntervalList.Interval[16], 0);
    private IntervalList.Interval<? extends T> lastInterval;
    private int size;

    private final void checkIndexBounds(int i) {
        if (i < 0 || i >= getSize()) {
            StringBuilder sbC = n7.c(i, "Index ", ", size ");
            sbC.append(getSize());
            InlineClassHelperKt.throwIndexOutOfBoundsException(sbC.toString());
        }
    }

    private final boolean contains(IntervalList.Interval<? extends T> interval, int i) {
        return i < interval.getSize() + interval.getStartIndex() && interval.getStartIndex() <= i;
    }

    private final IntervalList.Interval<T> getIntervalForIndex(int i) {
        IntervalList.Interval<? extends T> interval = this.lastInterval;
        if (interval != null && contains(interval, i)) {
            return interval;
        }
        MutableVector<IntervalList.Interval<T>> mutableVector = this.intervals;
        IntervalList.Interval interval2 = (IntervalList.Interval<? extends T>) mutableVector.content[IntervalListKt.binarySearch(mutableVector, i)];
        this.lastInterval = interval2;
        return interval2;
    }

    public final void addInterval(int i, T t) {
        if (i < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("size should be >=0");
        }
        if (i == 0) {
            return;
        }
        IntervalList.Interval<T> interval = new IntervalList.Interval<>(getSize(), i, t);
        this.size = getSize() + i;
        this.intervals.add(interval);
    }

    @Override // androidx.compose.foundation.lazy.layout.IntervalList
    public void forEach(int i, int i2, nl3<? super IntervalList.Interval<? extends T>, j59> nl3Var) {
        if (i < 0 || i >= getSize()) {
            StringBuilder sbC = n7.c(i, "Index ", ", size ");
            sbC.append(getSize());
            InlineClassHelperKt.throwIndexOutOfBoundsException(sbC.toString());
        }
        if (i2 < 0 || i2 >= getSize()) {
            StringBuilder sbC2 = n7.c(i2, "Index ", ", size ");
            sbC2.append(getSize());
            InlineClassHelperKt.throwIndexOutOfBoundsException(sbC2.toString());
        }
        if (!(i2 >= i)) {
            InlineClassHelperKt.throwIllegalArgumentException("toIndex (" + i2 + ") should be not smaller than fromIndex (" + i + ')');
        }
        int iBinarySearch = IntervalListKt.binarySearch(this.intervals, i);
        int startIndex = this.intervals.content[iBinarySearch].getStartIndex();
        while (startIndex <= i2) {
            IntervalList.Interval<T> interval = this.intervals.content[iBinarySearch];
            nl3Var.invoke(interval);
            startIndex += interval.getSize();
            iBinarySearch++;
        }
    }

    @Override // androidx.compose.foundation.lazy.layout.IntervalList
    public IntervalList.Interval<T> get(int i) {
        if (i < 0 || i >= getSize()) {
            StringBuilder sbC = n7.c(i, "Index ", ", size ");
            sbC.append(getSize());
            InlineClassHelperKt.throwIndexOutOfBoundsException(sbC.toString());
        }
        return getIntervalForIndex(i);
    }

    @Override // androidx.compose.foundation.lazy.layout.IntervalList
    public int getSize() {
        return this.size;
    }
}
