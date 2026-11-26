package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
final class PaddingValuesInsets implements WindowInsets {
    private final PaddingValues paddingValues;

    public PaddingValuesInsets(PaddingValues paddingValues) {
        this.paddingValues = paddingValues;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PaddingValuesInsets) {
            return aa4.e(((PaddingValuesInsets) obj).paddingValues, this.paddingValues);
        }
        return false;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getBottom(Density density) {
        return density.mo1428roundToPx0680j_4(this.paddingValues.mo1982calculateBottomPaddingD9Ej5fM());
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getLeft(Density density, LayoutDirection layoutDirection) {
        return density.mo1428roundToPx0680j_4(this.paddingValues.mo1983calculateLeftPaddingu2uoSUM(layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getRight(Density density, LayoutDirection layoutDirection) {
        return density.mo1428roundToPx0680j_4(this.paddingValues.mo1984calculateRightPaddingu2uoSUM(layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getTop(Density density) {
        return density.mo1428roundToPx0680j_4(this.paddingValues.mo1985calculateTopPaddingD9Ej5fM());
    }

    public int hashCode() {
        return this.paddingValues.hashCode();
    }

    public String toString() {
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        return "PaddingValues(" + ((Object) Dp.m9053toStringimpl(this.paddingValues.mo1983calculateLeftPaddingu2uoSUM(layoutDirection))) + ", " + ((Object) Dp.m9053toStringimpl(this.paddingValues.mo1985calculateTopPaddingD9Ej5fM())) + ", " + ((Object) Dp.m9053toStringimpl(this.paddingValues.mo1984calculateRightPaddingu2uoSUM(layoutDirection))) + ", " + ((Object) Dp.m9053toStringimpl(this.paddingValues.mo1982calculateBottomPaddingD9Ej5fM())) + ')';
    }
}
