package androidx.compose.foundation.contextmenu;

import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.ln;
import defpackage.r01;

/* JADX INFO: loaded from: classes.dex */
public final class ContextMenuColors {
    public static final int $stable = 0;
    private final long backgroundColor;
    private final long disabledIconColor;
    private final long disabledTextColor;
    private final long iconColor;
    private final long textColor;

    private ContextMenuColors(long j, long j2, long j3, long j4, long j5) {
        this.backgroundColor = j;
        this.textColor = j2;
        this.iconColor = j3;
        this.disabledTextColor = j4;
        this.disabledIconColor = j5;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ContextMenuColors)) {
            return false;
        }
        ContextMenuColors contextMenuColors = (ContextMenuColors) obj;
        return Color.m6233equalsimpl0(this.backgroundColor, contextMenuColors.backgroundColor) && Color.m6233equalsimpl0(this.textColor, contextMenuColors.textColor) && Color.m6233equalsimpl0(this.iconColor, contextMenuColors.iconColor) && Color.m6233equalsimpl0(this.disabledTextColor, contextMenuColors.disabledTextColor) && Color.m6233equalsimpl0(this.disabledIconColor, contextMenuColors.disabledIconColor);
    }

    /* JADX INFO: renamed from: getBackgroundColor-0d7_KjU, reason: not valid java name */
    public final long m1397getBackgroundColor0d7_KjU() {
        return this.backgroundColor;
    }

    /* JADX INFO: renamed from: getDisabledIconColor-0d7_KjU, reason: not valid java name */
    public final long m1398getDisabledIconColor0d7_KjU() {
        return this.disabledIconColor;
    }

    /* JADX INFO: renamed from: getDisabledTextColor-0d7_KjU, reason: not valid java name */
    public final long m1399getDisabledTextColor0d7_KjU() {
        return this.disabledTextColor;
    }

    /* JADX INFO: renamed from: getIconColor-0d7_KjU, reason: not valid java name */
    public final long m1400getIconColor0d7_KjU() {
        return this.iconColor;
    }

    /* JADX INFO: renamed from: getTextColor-0d7_KjU, reason: not valid java name */
    public final long m1401getTextColor0d7_KjU() {
        return this.textColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.disabledIconColor) + r01.b(r01.b(r01.b(Color.m6239hashCodeimpl(this.backgroundColor) * 31, 31, this.textColor), 31, this.iconColor), 31, this.disabledTextColor);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ContextMenuColors(backgroundColor=");
        ln.g(this.backgroundColor, ", textColor=", sb);
        ln.g(this.textColor, ", iconColor=", sb);
        ln.g(this.iconColor, ", disabledTextColor=", sb);
        ln.g(this.disabledTextColor, ", disabledIconColor=", sb);
        sb.append((Object) Color.m6240toStringimpl(this.disabledIconColor));
        sb.append(')');
        return sb.toString();
    }

    public /* synthetic */ ContextMenuColors(long j, long j2, long j3, long j4, long j5, jh2 jh2Var) {
        this(j, j2, j3, j4, j5);
    }
}
