package androidx.compose.foundation;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.unit.Dp;
import defpackage.aa4;
import defpackage.ch;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class BorderStroke {
    public static final int $stable = 0;
    private final Brush brush;
    private final float width;

    private BorderStroke(float f, Brush brush) {
        this.width = f;
        this.brush = brush;
    }

    /* JADX INFO: renamed from: copy-D5KLDUw$default, reason: not valid java name */
    public static /* synthetic */ BorderStroke m1312copyD5KLDUw$default(BorderStroke borderStroke, float f, Brush brush, int i, Object obj) {
        if ((i & 1) != 0) {
            f = borderStroke.width;
        }
        if ((i & 2) != 0) {
            brush = borderStroke.brush;
        }
        return borderStroke.m1313copyD5KLDUw(f, brush);
    }

    /* JADX INFO: renamed from: copy-D5KLDUw, reason: not valid java name */
    public final BorderStroke m1313copyD5KLDUw(float f, Brush brush) {
        return new BorderStroke(f, brush, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BorderStroke)) {
            return false;
        }
        BorderStroke borderStroke = (BorderStroke) obj;
        return Dp.m9047equalsimpl0(this.width, borderStroke.width) && aa4.e(this.brush, borderStroke.brush);
    }

    public final Brush getBrush() {
        return this.brush;
    }

    /* JADX INFO: renamed from: getWidth-D9Ej5fM, reason: not valid java name */
    public final float m1314getWidthD9Ej5fM() {
        return this.width;
    }

    public int hashCode() {
        return this.brush.hashCode() + (Dp.m9048hashCodeimpl(this.width) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BorderStroke(width=");
        ch.d(sb, ", brush=", this.width);
        sb.append(this.brush);
        sb.append(')');
        return sb.toString();
    }

    public /* synthetic */ BorderStroke(float f, Brush brush, jh2 jh2Var) {
        this(f, brush);
    }
}
