package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.IntervalList;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyGridSpanLayoutProvider {
    public static final int $stable = 8;
    private final ArrayList<Bucket> buckets;
    private final List<Integer> cachedBucket;
    private int cachedBucketIndex;
    private final LazyGridIntervalContent gridContent;
    private int lastLineIndex;
    private int lastLineStartItemIndex;
    private int lastLineStartKnownSpan;
    private List<GridItemSpan> previousDefaultSpans;
    private int slotsPerLine;

    public static final class LazyGridItemSpanScopeImpl implements LazyGridItemSpanScope {
        public static final LazyGridItemSpanScopeImpl INSTANCE = new LazyGridItemSpanScopeImpl();
        private static int maxCurrentLineSpan;
        private static int maxLineSpan;

        private LazyGridItemSpanScopeImpl() {
        }

        @Override // androidx.compose.foundation.lazy.grid.LazyGridItemSpanScope
        public int getMaxCurrentLineSpan() {
            return maxCurrentLineSpan;
        }

        @Override // androidx.compose.foundation.lazy.grid.LazyGridItemSpanScope
        public int getMaxLineSpan() {
            return maxLineSpan;
        }

        public void setMaxCurrentLineSpan(int i) {
            maxCurrentLineSpan = i;
        }

        public void setMaxLineSpan(int i) {
            maxLineSpan = i;
        }
    }

    public static final class LineConfiguration {
        public static final int $stable = 8;
        private final int firstItemIndex;
        private final List<GridItemSpan> spans;

        public LineConfiguration(int i, List<GridItemSpan> list) {
            this.firstItemIndex = i;
            this.spans = list;
        }

        public final int getFirstItemIndex() {
            return this.firstItemIndex;
        }

        public final List<GridItemSpan> getSpans() {
            return this.spans;
        }
    }

    public LazyGridSpanLayoutProvider(LazyGridIntervalContent lazyGridIntervalContent) {
        this.gridContent = lazyGridIntervalContent;
        ArrayList<Bucket> arrayList = new ArrayList<>();
        int i = 0;
        arrayList.add(new Bucket(i, i, 2, null));
        this.buckets = arrayList;
        this.cachedBucketIndex = -1;
        this.cachedBucket = new ArrayList();
        this.previousDefaultSpans = kx2.b;
    }

    private final int getBucketSize() {
        return ((int) Math.sqrt((((double) getTotalSize()) * 1.0d) / ((double) this.slotsPerLine))) + 1;
    }

    private final List<GridItemSpan> getDefaultSpans(int i) {
        if (i == this.previousDefaultSpans.size()) {
            return this.previousDefaultSpans;
        }
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(GridItemSpan.m2171boximpl(LazyGridSpanKt.GridItemSpan(1)));
        }
        this.previousDefaultSpans = arrayList;
        return arrayList;
    }

    private static final int getLineIndexOfItem$lambda$1(int i, Bucket bucket) {
        return bucket.getFirstItemIndex() - i;
    }

    private final void invalidateCache() {
        this.buckets.clear();
        int i = 0;
        this.buckets.add(new Bucket(i, i, 2, null));
        this.lastLineIndex = 0;
        this.lastLineStartItemIndex = 0;
        this.lastLineStartKnownSpan = 0;
        this.cachedBucketIndex = -1;
        this.cachedBucket.clear();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x008e  */
    public final LineConfiguration getLineConfiguration(int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        if (!this.gridContent.getHasCustomSpans$foundation()) {
            int i5 = this.slotsPerLine;
            int i6 = i * i5;
            int totalSize = getTotalSize() - i6;
            if (i5 > totalSize) {
                i5 = totalSize;
            }
            return new LineConfiguration(i6, getDefaultSpans(i5 >= 0 ? i5 : 0));
        }
        int iMin = Math.min(i / getBucketSize(), this.buckets.size() - 1);
        int bucketSize = getBucketSize() * iMin;
        int firstItemIndex = this.buckets.get(iMin).getFirstItemIndex();
        int firstItemKnownSpan = this.buckets.get(iMin).getFirstItemKnownSpan();
        int i7 = this.lastLineIndex;
        if (bucketSize <= i7 && i7 <= i) {
            firstItemIndex = this.lastLineStartItemIndex;
            firstItemKnownSpan = this.lastLineStartKnownSpan;
            bucketSize = i7;
        } else if (iMin == this.cachedBucketIndex && (i2 = i - bucketSize) < this.cachedBucket.size()) {
            firstItemIndex = this.cachedBucket.get(i2).intValue();
            bucketSize = i;
            firstItemKnownSpan = 0;
        }
        if (bucketSize % getBucketSize() == 0) {
            int bucketSize2 = getBucketSize();
            int i8 = i - bucketSize;
            if (2 > i8 || i8 >= bucketSize2) {
                z = false;
            } else {
                z = true;
            }
        } else {
            z = false;
        }
        if (z) {
            this.cachedBucketIndex = iMin;
            this.cachedBucket.clear();
        }
        if (!(bucketSize <= i)) {
            InlineClassHelperKt.throwIllegalStateException("currentLine (" + bucketSize + ") > lineIndex (" + i + ')');
        }
        while (bucketSize < i && firstItemIndex < getTotalSize()) {
            if (z) {
                this.cachedBucket.add(Integer.valueOf(firstItemIndex));
            }
            int i9 = 0;
            while (i9 < this.slotsPerLine && firstItemIndex < getTotalSize()) {
                if (firstItemKnownSpan == 0) {
                    i4 = firstItemKnownSpan;
                    firstItemKnownSpan = spanOf(firstItemIndex, this.slotsPerLine - i9);
                } else {
                    i4 = 0;
                }
                i9 += firstItemKnownSpan;
                if (i9 > this.slotsPerLine) {
                    break;
                }
                firstItemIndex++;
                firstItemKnownSpan = i4;
            }
            bucketSize++;
            if (bucketSize % getBucketSize() == 0 && firstItemIndex < getTotalSize()) {
                if (!(this.buckets.size() == bucketSize / getBucketSize())) {
                    InlineClassHelperKt.throwIllegalStateException("invalid starting point");
                }
                this.buckets.add(new Bucket(firstItemIndex, firstItemKnownSpan));
            }
        }
        this.lastLineIndex = i;
        this.lastLineStartItemIndex = firstItemIndex;
        this.lastLineStartKnownSpan = firstItemKnownSpan;
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        int i11 = firstItemIndex;
        while (i10 < this.slotsPerLine && i11 < getTotalSize()) {
            if (firstItemKnownSpan == 0) {
                int i12 = firstItemKnownSpan;
                firstItemKnownSpan = spanOf(i11, this.slotsPerLine - i10);
                i3 = i12;
            } else {
                i3 = 0;
            }
            i10 += firstItemKnownSpan;
            if (i10 > this.slotsPerLine) {
                break;
            }
            i11++;
            arrayList.add(GridItemSpan.m2171boximpl(LazyGridSpanKt.GridItemSpan(firstItemKnownSpan)));
            firstItemKnownSpan = i3;
        }
        return new LineConfiguration(firstItemIndex, arrayList);
    }

    public final int getLineIndexOfItem(int i) {
        int i2;
        int i3;
        int i4 = 0;
        if (getTotalSize() <= 0) {
            return 0;
        }
        if (i >= getTotalSize()) {
            InlineClassHelperKt.throwIllegalArgumentException("ItemIndex > total count");
        }
        if (!this.gridContent.getHasCustomSpans$foundation()) {
            return i / this.slotsPerLine;
        }
        ArrayList<Bucket> arrayList = this.buckets;
        int size = arrayList.size();
        u96.m(arrayList.size(), size);
        int i5 = size - 1;
        int i6 = 0;
        while (true) {
            if (i6 > i5) {
                i2 = -(i6 + 1);
                break;
            }
            i2 = (i6 + i5) >>> 1;
            int lineIndexOfItem$lambda$1 = getLineIndexOfItem$lambda$1(i, arrayList.get(i2));
            if (lineIndexOfItem$lambda$1 >= 0) {
                if (lineIndexOfItem$lambda$1 <= 0) {
                    break;
                }
                i5 = i2 - 1;
            } else {
                i6 = i2 + 1;
            }
        }
        int i7 = 2;
        if (i2 < 0) {
            i2 = (-i2) - 2;
        }
        int bucketSize = getBucketSize() * i2;
        int firstItemIndex = this.buckets.get(i2).getFirstItemIndex();
        if (firstItemIndex > i) {
            InlineClassHelperKt.throwIllegalArgumentException("currentItemIndex > itemIndex");
        }
        int i8 = 0;
        while (true) {
            i3 = this.slotsPerLine;
            if (firstItemIndex >= i) {
                break;
            }
            int i9 = firstItemIndex + 1;
            int iSpanOf = spanOf(firstItemIndex, i3 - i8);
            i8 += iSpanOf;
            int i10 = this.slotsPerLine;
            if (i8 >= i10) {
                if (i8 == i10) {
                    bucketSize++;
                    i8 = 0;
                } else {
                    bucketSize++;
                    i8 = iSpanOf;
                }
            }
            if (bucketSize % getBucketSize() == 0 && bucketSize / getBucketSize() >= this.buckets.size()) {
                this.buckets.add(new Bucket(i9 - (i8 > 0 ? 1 : 0), i4, i7, null));
            }
            firstItemIndex = i9;
        }
        return spanOf(i, i3 - i8) + i8 > this.slotsPerLine ? bucketSize + 1 : bucketSize;
    }

    public final int getSlotsPerLine() {
        return this.slotsPerLine;
    }

    public final int getTotalSize() {
        return this.gridContent.getIntervals().getSize();
    }

    public final void setSlotsPerLine(int i) {
        if (i != this.slotsPerLine) {
            this.slotsPerLine = i;
            invalidateCache();
        }
    }

    public final int spanOf(int i, int i2) {
        LazyGridItemSpanScopeImpl lazyGridItemSpanScopeImpl = LazyGridItemSpanScopeImpl.INSTANCE;
        lazyGridItemSpanScopeImpl.setMaxCurrentLineSpan(i2);
        lazyGridItemSpanScopeImpl.setMaxLineSpan(this.slotsPerLine);
        IntervalList.Interval<LazyGridInterval> interval = this.gridContent.getIntervals().get(i);
        return GridItemSpan.m2175getCurrentLineSpanimpl(interval.getValue().getSpan().invoke(lazyGridItemSpanScopeImpl, Integer.valueOf(i - interval.getStartIndex())).m2178unboximpl());
    }

    public static final class Bucket {
        private final int firstItemIndex;
        private final int firstItemKnownSpan;

        public /* synthetic */ Bucket(int i, int i2, int i3, jh2 jh2Var) {
            this(i, (i3 & 2) != 0 ? 0 : i2);
        }

        public final int getFirstItemIndex() {
            return this.firstItemIndex;
        }

        public final int getFirstItemKnownSpan() {
            return this.firstItemKnownSpan;
        }

        public Bucket(int i, int i2) {
            this.firstItemIndex = i;
            this.firstItemKnownSpan = i2;
        }
    }
}
