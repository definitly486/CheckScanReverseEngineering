package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
final class ExcludeInsets implements WindowInsets {
    private final WindowInsets excluded;
    private final WindowInsets included;

    public ExcludeInsets(WindowInsets windowInsets, WindowInsets windowInsets2) {
        this.included = windowInsets;
        this.excluded = windowInsets2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExcludeInsets)) {
            return false;
        }
        ExcludeInsets excludeInsets = (ExcludeInsets) obj;
        return aa4.e(excludeInsets.included, this.included) && aa4.e(excludeInsets.excluded, this.excluded);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getBottom(Density density) {
        int bottom = this.included.getBottom(density) - this.excluded.getBottom(density);
        if (bottom < 0) {
            return 0;
        }
        return bottom;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getLeft(Density density, LayoutDirection layoutDirection) {
        int left = this.included.getLeft(density, layoutDirection) - this.excluded.getLeft(density, layoutDirection);
        if (left < 0) {
            return 0;
        }
        return left;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getRight(Density density, LayoutDirection layoutDirection) {
        int right = this.included.getRight(density, layoutDirection) - this.excluded.getRight(density, layoutDirection);
        if (right < 0) {
            return 0;
        }
        return right;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getTop(Density density) {
        int top = this.included.getTop(density) - this.excluded.getTop(density);
        if (top < 0) {
            return 0;
        }
        return top;
    }

    public int hashCode() {
        return this.excluded.hashCode() + (this.included.hashCode() * 31);
    }

    public String toString() {
        return "(" + this.included + " - " + this.excluded + ')';
    }
}
