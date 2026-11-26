package androidx.compose.material3;

import androidx.compose.ui.unit.Dp;
import defpackage.ch;
import defpackage.jh2;
import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class TabPosition {
    public static final int $stable = 0;
    private final float contentWidth;
    private final float left;
    private final float width;

    private TabPosition(float f, float f2, float f3) {
        this.left = f;
        this.width = f2;
        this.contentWidth = f3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TabPosition)) {
            return false;
        }
        TabPosition tabPosition = (TabPosition) obj;
        return Dp.m9047equalsimpl0(this.left, tabPosition.left) && Dp.m9047equalsimpl0(this.width, tabPosition.width) && Dp.m9047equalsimpl0(this.contentWidth, tabPosition.contentWidth);
    }

    /* JADX INFO: renamed from: getContentWidth-D9Ej5fM, reason: not valid java name */
    public final float m3978getContentWidthD9Ej5fM() {
        return this.contentWidth;
    }

    /* JADX INFO: renamed from: getLeft-D9Ej5fM, reason: not valid java name */
    public final float m3979getLeftD9Ej5fM() {
        return this.left;
    }

    /* JADX INFO: renamed from: getRight-D9Ej5fM, reason: not valid java name */
    public final float m3980getRightD9Ej5fM() {
        return Dp.m9042constructorimpl(this.left + this.width);
    }

    /* JADX INFO: renamed from: getWidth-D9Ej5fM, reason: not valid java name */
    public final float m3981getWidthD9Ej5fM() {
        return this.width;
    }

    public int hashCode() {
        return Dp.m9048hashCodeimpl(this.contentWidth) + rg.c(this.width, Dp.m9048hashCodeimpl(this.left) * 31, 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("TabPosition(left=");
        sb.append((Object) Dp.m9053toStringimpl(this.left));
        sb.append(", right=");
        sb.append((Object) Dp.m9053toStringimpl(m3980getRightD9Ej5fM()));
        sb.append(", width=");
        ch.d(sb, ", contentWidth=", this.width);
        sb.append((Object) Dp.m9053toStringimpl(this.contentWidth));
        sb.append(')');
        return sb.toString();
    }

    public /* synthetic */ TabPosition(float f, float f2, float f3, jh2 jh2Var) {
        this(f, f2, f3);
    }
}
