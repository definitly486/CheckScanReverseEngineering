package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.r01;

/* JADX INFO: loaded from: classes2.dex */
public final class IconButtonColors {
    public static final int $stable = 0;
    private final long containerColor;
    private final long contentColor;
    private final long disabledContainerColor;
    private final long disabledContentColor;

    private IconButtonColors(long j, long j2, long j3, long j4) {
        this.containerColor = j;
        this.contentColor = j2;
        this.disabledContainerColor = j3;
        this.disabledContentColor = j4;
    }

    /* JADX INFO: renamed from: copy-jRlVdoo$default, reason: not valid java name */
    public static /* synthetic */ IconButtonColors m3495copyjRlVdoo$default(IconButtonColors iconButtonColors, long j, long j2, long j3, long j4, int i, Object obj) {
        if ((i & 1) != 0) {
            j = iconButtonColors.containerColor;
        }
        long j5 = j;
        if ((i & 2) != 0) {
            j2 = iconButtonColors.contentColor;
        }
        long j6 = j2;
        if ((i & 4) != 0) {
            j3 = iconButtonColors.disabledContainerColor;
        }
        return iconButtonColors.m3498copyjRlVdoo(j5, j6, j3, (i & 8) != 0 ? iconButtonColors.disabledContentColor : j4);
    }

    /* JADX INFO: renamed from: containerColor-vNxB06k$material3, reason: not valid java name */
    public final long m3496containerColorvNxB06k$material3(boolean z) {
        return z ? this.containerColor : this.disabledContainerColor;
    }

    /* JADX INFO: renamed from: contentColor-vNxB06k$material3, reason: not valid java name */
    public final long m3497contentColorvNxB06k$material3(boolean z) {
        return z ? this.contentColor : this.disabledContentColor;
    }

    /* JADX INFO: renamed from: copy-jRlVdoo, reason: not valid java name */
    public final IconButtonColors m3498copyjRlVdoo(long j, long j2, long j3, long j4) {
        return new IconButtonColors(j != 16 ? j : this.containerColor, j2 != 16 ? j2 : this.contentColor, j3 != 16 ? j3 : this.disabledContainerColor, j4 != 16 ? j4 : this.disabledContentColor, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof IconButtonColors)) {
            return false;
        }
        IconButtonColors iconButtonColors = (IconButtonColors) obj;
        return Color.m6233equalsimpl0(this.containerColor, iconButtonColors.containerColor) && Color.m6233equalsimpl0(this.contentColor, iconButtonColors.contentColor) && Color.m6233equalsimpl0(this.disabledContainerColor, iconButtonColors.disabledContainerColor) && Color.m6233equalsimpl0(this.disabledContentColor, iconButtonColors.disabledContentColor);
    }

    /* JADX INFO: renamed from: getContainerColor-0d7_KjU, reason: not valid java name */
    public final long m3499getContainerColor0d7_KjU() {
        return this.containerColor;
    }

    /* JADX INFO: renamed from: getContentColor-0d7_KjU, reason: not valid java name */
    public final long m3500getContentColor0d7_KjU() {
        return this.contentColor;
    }

    /* JADX INFO: renamed from: getDisabledContainerColor-0d7_KjU, reason: not valid java name */
    public final long m3501getDisabledContainerColor0d7_KjU() {
        return this.disabledContainerColor;
    }

    /* JADX INFO: renamed from: getDisabledContentColor-0d7_KjU, reason: not valid java name */
    public final long m3502getDisabledContentColor0d7_KjU() {
        return this.disabledContentColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.disabledContentColor) + r01.b(r01.b(Color.m6239hashCodeimpl(this.containerColor) * 31, 31, this.contentColor), 31, this.disabledContainerColor);
    }

    public /* synthetic */ IconButtonColors(long j, long j2, long j3, long j4, jh2 jh2Var) {
        this(j, j2, j3, j4);
    }
}
