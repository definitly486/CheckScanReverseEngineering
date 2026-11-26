package androidx.compose.material3.internal;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.aa4;
import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class AnchorAlignmentOffsetPosition {
    public static final int $stable = 0;
    public static final AnchorAlignmentOffsetPosition INSTANCE = new AnchorAlignmentOffsetPosition();

    public static final class Horizontal implements MenuPosition.Horizontal {
        public static final int $stable = 0;
        private final Alignment.Horizontal anchorAlignment;
        private final Alignment.Horizontal menuAlignment;
        private final int offset;

        public Horizontal(Alignment.Horizontal horizontal, Alignment.Horizontal horizontal2, int i) {
            this.menuAlignment = horizontal;
            this.anchorAlignment = horizontal2;
            this.offset = i;
        }

        private final Alignment.Horizontal component1() {
            return this.menuAlignment;
        }

        private final Alignment.Horizontal component2() {
            return this.anchorAlignment;
        }

        private final int component3() {
            return this.offset;
        }

        public static /* synthetic */ Horizontal copy$default(Horizontal horizontal, Alignment.Horizontal horizontal2, Alignment.Horizontal horizontal3, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                horizontal2 = horizontal.menuAlignment;
            }
            if ((i2 & 2) != 0) {
                horizontal3 = horizontal.anchorAlignment;
            }
            if ((i2 & 4) != 0) {
                i = horizontal.offset;
            }
            return horizontal.copy(horizontal2, horizontal3, i);
        }

        public final Horizontal copy(Alignment.Horizontal horizontal, Alignment.Horizontal horizontal2, int i) {
            return new Horizontal(horizontal, horizontal2, i);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Horizontal)) {
                return false;
            }
            Horizontal horizontal = (Horizontal) obj;
            return aa4.e(this.menuAlignment, horizontal.menuAlignment) && aa4.e(this.anchorAlignment, horizontal.anchorAlignment) && this.offset == horizontal.offset;
        }

        public int hashCode() {
            return Integer.hashCode(this.offset) + ((this.anchorAlignment.hashCode() + (this.menuAlignment.hashCode() * 31)) * 31);
        }

        @Override // androidx.compose.material3.internal.MenuPosition.Horizontal
        /* JADX INFO: renamed from: position-95KtPRI, reason: not valid java name */
        public int mo4355position95KtPRI(IntRect intRect, long j, int i, LayoutDirection layoutDirection) {
            int iAlign = this.anchorAlignment.align(0, intRect.getWidth(), layoutDirection);
            int i2 = -this.menuAlignment.align(0, i, layoutDirection);
            LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
            int i3 = this.offset;
            if (layoutDirection != layoutDirection2) {
                i3 = -i3;
            }
            return intRect.getLeft() + iAlign + i2 + i3;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Horizontal(menuAlignment=");
            sb.append(this.menuAlignment);
            sb.append(", anchorAlignment=");
            sb.append(this.anchorAlignment);
            sb.append(", offset=");
            return rg.h(sb, this.offset, ')');
        }
    }

    public static final class Vertical implements MenuPosition.Vertical {
        public static final int $stable = 0;
        private final Alignment.Vertical anchorAlignment;
        private final Alignment.Vertical menuAlignment;
        private final int offset;

        public Vertical(Alignment.Vertical vertical, Alignment.Vertical vertical2, int i) {
            this.menuAlignment = vertical;
            this.anchorAlignment = vertical2;
            this.offset = i;
        }

        private final Alignment.Vertical component1() {
            return this.menuAlignment;
        }

        private final Alignment.Vertical component2() {
            return this.anchorAlignment;
        }

        private final int component3() {
            return this.offset;
        }

        public static /* synthetic */ Vertical copy$default(Vertical vertical, Alignment.Vertical vertical2, Alignment.Vertical vertical3, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                vertical2 = vertical.menuAlignment;
            }
            if ((i2 & 2) != 0) {
                vertical3 = vertical.anchorAlignment;
            }
            if ((i2 & 4) != 0) {
                i = vertical.offset;
            }
            return vertical.copy(vertical2, vertical3, i);
        }

        public final Vertical copy(Alignment.Vertical vertical, Alignment.Vertical vertical2, int i) {
            return new Vertical(vertical, vertical2, i);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Vertical)) {
                return false;
            }
            Vertical vertical = (Vertical) obj;
            return aa4.e(this.menuAlignment, vertical.menuAlignment) && aa4.e(this.anchorAlignment, vertical.anchorAlignment) && this.offset == vertical.offset;
        }

        public int hashCode() {
            return Integer.hashCode(this.offset) + ((this.anchorAlignment.hashCode() + (this.menuAlignment.hashCode() * 31)) * 31);
        }

        @Override // androidx.compose.material3.internal.MenuPosition.Vertical
        /* JADX INFO: renamed from: position-JVtK1S4, reason: not valid java name */
        public int mo4356positionJVtK1S4(IntRect intRect, long j, int i) {
            int iAlign = this.anchorAlignment.align(0, intRect.getHeight());
            return intRect.getTop() + iAlign + (-this.menuAlignment.align(0, i)) + this.offset;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Vertical(menuAlignment=");
            sb.append(this.menuAlignment);
            sb.append(", anchorAlignment=");
            sb.append(this.anchorAlignment);
            sb.append(", offset=");
            return rg.h(sb, this.offset, ')');
        }
    }

    private AnchorAlignmentOffsetPosition() {
    }
}
