package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import defpackage.aq5;
import defpackage.fr;
import defpackage.jh2;
import defpackage.qn1;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyStaggeredGridLaneInfo {
    public static final int LaneFullSpan = -2;
    public static final int LaneUnset = -1;
    private static final int MaxCapacity = 131072;
    private int anchor;
    private int[] lanes = new int[16];
    private final fr<SpannedItem> spannedItems = new fr<>();
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    public static final class SpannedItem {
        private int[] gaps;
        private final int index;

        public SpannedItem(int i, int[] iArr) {
            this.index = i;
            this.gaps = iArr;
        }

        public final int[] getGaps() {
            return this.gaps;
        }

        public final int getIndex() {
            return this.index;
        }

        public final void setGaps(int[] iArr) {
            this.gaps = iArr;
        }
    }

    private final void ensureCapacity(int i, int i2) {
        if (i > 131072) {
            InlineClassHelperKt.throwIllegalArgumentException("Requested item capacity " + i + " is larger than max supported: 131072!");
        }
        int[] iArr = this.lanes;
        if (iArr.length < i) {
            int length = iArr.length;
            while (length < i) {
                length *= 2;
            }
            int[] iArr2 = new int[length];
            aq5.n(i2, 0, 12, this.lanes, iArr2);
            this.lanes = iArr2;
        }
    }

    public static /* synthetic */ void ensureCapacity$default(LazyStaggeredGridLaneInfo lazyStaggeredGridLaneInfo, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        lazyStaggeredGridLaneInfo.ensureCapacity(i, i2);
    }

    private final int searchByIndex(List<SpannedItem> list, int i) {
        int size = list.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            int index = list.get(i3).getIndex() - i;
            if (index < 0) {
                i2 = i3 + 1;
            } else {
                if (index <= 0) {
                    return i3;
                }
                size = i3 - 1;
            }
        }
        return -(i2 + 1);
    }

    public final boolean assignedToLane(int i, int i2) {
        int lane = getLane(i);
        return lane == i2 || lane == -1 || lane == -2;
    }

    public final void ensureValidIndex(int i) {
        int i2 = this.anchor;
        int i3 = i - i2;
        if (i3 < 0 || i3 >= 131072) {
            int iMax = Math.max(i - (this.lanes.length / 2), 0);
            this.anchor = iMax;
            int i4 = iMax - i2;
            int[] iArr = this.lanes;
            if (i4 >= 0) {
                if (i4 < iArr.length) {
                    aq5.h(0, i4, iArr.length, iArr, iArr);
                }
                int[] iArr2 = this.lanes;
                Arrays.fill(iArr2, Math.max(0, iArr2.length - i4), this.lanes.length, 0);
            } else {
                int i5 = -i4;
                if (iArr.length + i5 < 131072) {
                    ensureCapacity(iArr.length + i5 + 1, i5);
                } else {
                    if (i5 < iArr.length) {
                        aq5.h(i5, 0, iArr.length - i5, iArr, iArr);
                    }
                    int[] iArr3 = this.lanes;
                    Arrays.fill(iArr3, 0, Math.min(iArr3.length, i5), 0);
                }
            }
        } else {
            ensureCapacity$default(this, i3 + 1, 0, 2, null);
        }
        while (!this.spannedItems.isEmpty() && this.spannedItems.first().getIndex() < lowerBound()) {
            this.spannedItems.removeFirst();
        }
        while (!this.spannedItems.isEmpty() && this.spannedItems.last().getIndex() > upperBound()) {
            this.spannedItems.removeLast();
        }
    }

    public final int findNextItemIndex(int i, int i2) {
        int iUpperBound = upperBound();
        for (int i3 = i + 1; i3 < iUpperBound; i3++) {
            if (assignedToLane(i3, i2)) {
                return i3;
            }
        }
        return upperBound();
    }

    public final int findPreviousItemIndex(int i, int i2) {
        do {
            i--;
            if (-1 >= i) {
                return -1;
            }
        } while (!assignedToLane(i, i2));
        return i;
    }

    public final int[] getGaps(int i) {
        SpannedItem spannedItem = (SpannedItem) qn1.W(searchByIndex(this.spannedItems, i), this.spannedItems);
        if (spannedItem != null) {
            return spannedItem.getGaps();
        }
        return null;
    }

    public final int getLane(int i) {
        if (i < lowerBound() || i >= upperBound()) {
            return -1;
        }
        return this.lanes[i - this.anchor] - 1;
    }

    public final int lowerBound() {
        return this.anchor;
    }

    public final void reset() {
        aq5.u(0, 0, 6, this.lanes);
        this.spannedItems.clear();
    }

    public final void setGaps(int i, int[] iArr) {
        int iSearchByIndex = searchByIndex(this.spannedItems, i);
        if (iSearchByIndex < 0) {
            if (iArr == null) {
                return;
            }
            this.spannedItems.add(-(iSearchByIndex + 1), new SpannedItem(i, iArr));
            return;
        }
        fr<SpannedItem> frVar = this.spannedItems;
        if (iArr == null) {
            frVar.remove(iSearchByIndex);
        } else {
            frVar.get(iSearchByIndex).setGaps(iArr);
        }
    }

    public final void setLane(int i, int i2) {
        if (!(i >= 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("Negative lanes are not supported");
        }
        ensureValidIndex(i);
        this.lanes[i - this.anchor] = i2 + 1;
    }

    public final int upperBound() {
        return this.anchor + this.lanes.length;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
