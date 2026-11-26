package androidx.compose.foundation.pager;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public interface PageSize {

    public static final class Fill implements PageSize {
        public static final int $stable = 0;
        public static final Fill INSTANCE = new Fill();

        private Fill() {
        }

        @Override // androidx.compose.foundation.pager.PageSize
        public int calculateMainAxisPageSize(Density density, int i, int i2) {
            return i;
        }
    }

    int calculateMainAxisPageSize(Density density, int i, int i2);

    public static final class Fixed implements PageSize {
        public static final int $stable = 0;
        private final float pageSize;

        private Fixed(float f) {
            this.pageSize = f;
        }

        @Override // androidx.compose.foundation.pager.PageSize
        public int calculateMainAxisPageSize(Density density, int i, int i2) {
            return density.mo1428roundToPx0680j_4(this.pageSize);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Fixed) {
                return Dp.m9047equalsimpl0(this.pageSize, ((Fixed) obj).pageSize);
            }
            return false;
        }

        /* JADX INFO: renamed from: getPageSize-D9Ej5fM, reason: not valid java name */
        public final float m2295getPageSizeD9Ej5fM() {
            return this.pageSize;
        }

        public int hashCode() {
            return Dp.m9048hashCodeimpl(this.pageSize);
        }

        public /* synthetic */ Fixed(float f, jh2 jh2Var) {
            this(f);
        }
    }
}
