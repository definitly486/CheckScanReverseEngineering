package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import defpackage.jh2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface GridCells {

    public static final class Fixed implements GridCells {
        public static final int $stable = 0;
        private final int count;

        public Fixed(int i) {
            this.count = i;
            if (i > 0) {
                return;
            }
            InlineClassHelperKt.throwIllegalArgumentException("Provided count should be larger than zero");
        }

        @Override // androidx.compose.foundation.lazy.grid.GridCells
        public List<Integer> calculateCrossAxisCellSizes(Density density, int i, int i2) {
            return LazyGridDslKt.calculateCellsCrossAxisSizeImpl(i, this.count, i2);
        }

        public boolean equals(Object obj) {
            return (obj instanceof Fixed) && this.count == ((Fixed) obj).count;
        }

        public int hashCode() {
            return -this.count;
        }
    }

    List<Integer> calculateCrossAxisCellSizes(Density density, int i, int i2);

    public static final class Adaptive implements GridCells {
        public static final int $stable = 0;
        private final float minSize;

        private Adaptive(float f) {
            this.minSize = f;
            if (Dp.m9041compareTo0680j_4(f, Dp.m9042constructorimpl(0.0f)) > 0) {
                return;
            }
            InlineClassHelperKt.throwIllegalArgumentException("Provided min size should be larger than zero.");
        }

        @Override // androidx.compose.foundation.lazy.grid.GridCells
        public List<Integer> calculateCrossAxisCellSizes(Density density, int i, int i2) {
            return LazyGridDslKt.calculateCellsCrossAxisSizeImpl(i, Math.max((i + i2) / (density.mo1428roundToPx0680j_4(this.minSize) + i2), 1), i2);
        }

        public boolean equals(Object obj) {
            return (obj instanceof Adaptive) && Dp.m9047equalsimpl0(this.minSize, ((Adaptive) obj).minSize);
        }

        public int hashCode() {
            return Dp.m9048hashCodeimpl(this.minSize);
        }

        public /* synthetic */ Adaptive(float f, jh2 jh2Var) {
            this(f);
        }
    }

    public static final class FixedSize implements GridCells {
        public static final int $stable = 0;
        private final float size;

        private FixedSize(float f) {
            this.size = f;
            if (Dp.m9041compareTo0680j_4(f, Dp.m9042constructorimpl(0.0f)) > 0) {
                return;
            }
            InlineClassHelperKt.throwIllegalArgumentException("Provided size should be larger than zero.");
        }

        @Override // androidx.compose.foundation.lazy.grid.GridCells
        public List<Integer> calculateCrossAxisCellSizes(Density density, int i, int i2) {
            int iMo1428roundToPx0680j_4 = density.mo1428roundToPx0680j_4(this.size);
            int i3 = iMo1428roundToPx0680j_4 + i2;
            int i4 = i2 + i;
            if (i3 >= i4) {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(Integer.valueOf(i));
                return arrayList;
            }
            int i5 = i4 / i3;
            ArrayList arrayList2 = new ArrayList(i5);
            for (int i6 = 0; i6 < i5; i6++) {
                arrayList2.add(Integer.valueOf(iMo1428roundToPx0680j_4));
            }
            return arrayList2;
        }

        public boolean equals(Object obj) {
            return (obj instanceof FixedSize) && Dp.m9047equalsimpl0(this.size, ((FixedSize) obj).size);
        }

        public int hashCode() {
            return Dp.m9048hashCodeimpl(this.size);
        }

        public /* synthetic */ FixedSize(float f, jh2 jh2Var) {
            this(f);
        }
    }
}
