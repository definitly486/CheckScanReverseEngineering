package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.ch;
import defpackage.jh2;
import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
final class FixedDpInsets implements WindowInsets {
    private final float bottomDp;
    private final float leftDp;
    private final float rightDp;
    private final float topDp;

    private FixedDpInsets(float f, float f2, float f3, float f4) {
        this.leftDp = f;
        this.topDp = f2;
        this.rightDp = f3;
        this.bottomDp = f4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FixedDpInsets)) {
            return false;
        }
        FixedDpInsets fixedDpInsets = (FixedDpInsets) obj;
        return Dp.m9047equalsimpl0(this.leftDp, fixedDpInsets.leftDp) && Dp.m9047equalsimpl0(this.topDp, fixedDpInsets.topDp) && Dp.m9047equalsimpl0(this.rightDp, fixedDpInsets.rightDp) && Dp.m9047equalsimpl0(this.bottomDp, fixedDpInsets.bottomDp);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getBottom(Density density) {
        return density.mo1428roundToPx0680j_4(this.bottomDp);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getLeft(Density density, LayoutDirection layoutDirection) {
        return density.mo1428roundToPx0680j_4(this.leftDp);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getRight(Density density, LayoutDirection layoutDirection) {
        return density.mo1428roundToPx0680j_4(this.rightDp);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int getTop(Density density) {
        return density.mo1428roundToPx0680j_4(this.topDp);
    }

    public int hashCode() {
        return Dp.m9048hashCodeimpl(this.bottomDp) + rg.c(this.rightDp, rg.c(this.topDp, Dp.m9048hashCodeimpl(this.leftDp) * 31, 31), 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Insets(left=");
        ch.d(sb, ", top=", this.leftDp);
        ch.d(sb, ", right=", this.topDp);
        ch.d(sb, ", bottom=", this.rightDp);
        sb.append((Object) Dp.m9053toStringimpl(this.bottomDp));
        sb.append(')');
        return sb.toString();
    }

    public /* synthetic */ FixedDpInsets(float f, float f2, float f3, float f4, jh2 jh2Var) {
        this(f, f2, f3, f4);
    }
}
