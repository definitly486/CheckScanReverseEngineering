package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
final class LimitInsets implements WindowInsets {
    private final WindowInsets insets;
    private final int sides;

    private LimitInsets(WindowInsets windowInsets, int i) {
        this.insets = windowInsets;
        this.sides = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LimitInsets)) {
            return false;
        }
        LimitInsets limitInsets = (LimitInsets) obj;
        return aa4.e(this.insets, limitInsets.insets) && WindowInsetsSides.m2135equalsimpl0(this.sides, limitInsets.sides);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getBottom(Density density) {
        if (WindowInsetsSides.m2136hasAnybkgdKaI$foundation_layout(this.sides, WindowInsetsSides.Companion.m2146getBottomJoeWqyM())) {
            return this.insets.getBottom(density);
        }
        return 0;
    }

    public final WindowInsets getInsets() {
        return this.insets;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getLeft(Density density, LayoutDirection layoutDirection) {
        if (WindowInsetsSides.m2136hasAnybkgdKaI$foundation_layout(this.sides, layoutDirection == LayoutDirection.Ltr ? WindowInsetsSides.Companion.m2142getAllowLeftInLtrJoeWqyM$foundation_layout() : WindowInsetsSides.Companion.m2143getAllowLeftInRtlJoeWqyM$foundation_layout())) {
            return this.insets.getLeft(density, layoutDirection);
        }
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getRight(Density density, LayoutDirection layoutDirection) {
        if (WindowInsetsSides.m2136hasAnybkgdKaI$foundation_layout(this.sides, layoutDirection == LayoutDirection.Ltr ? WindowInsetsSides.Companion.m2144getAllowRightInLtrJoeWqyM$foundation_layout() : WindowInsetsSides.Companion.m2145getAllowRightInRtlJoeWqyM$foundation_layout())) {
            return this.insets.getRight(density, layoutDirection);
        }
        return 0;
    }

    /* JADX INFO: renamed from: getSides-JoeWqyM, reason: not valid java name */
    public final int m1987getSidesJoeWqyM() {
        return this.sides;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getTop(Density density) {
        if (WindowInsetsSides.m2136hasAnybkgdKaI$foundation_layout(this.sides, WindowInsetsSides.Companion.m2152getTopJoeWqyM())) {
            return this.insets.getTop(density);
        }
        return 0;
    }

    public int hashCode() {
        return WindowInsetsSides.m2137hashCodeimpl(this.sides) + (this.insets.hashCode() * 31);
    }

    public String toString() {
        return "(" + this.insets + " only " + ((Object) WindowInsetsSides.m2139toStringimpl(this.sides)) + ')';
    }

    public /* synthetic */ LimitInsets(WindowInsets windowInsets, int i, jh2 jh2Var) {
        this(windowInsets, i);
    }
}
