package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.r01;

/* JADX INFO: loaded from: classes2.dex */
public final class RichTooltipColors {
    public static final int $stable = 0;
    private final long actionContentColor;
    private final long containerColor;
    private final long contentColor;
    private final long titleContentColor;

    private RichTooltipColors(long j, long j2, long j3, long j4) {
        this.containerColor = j;
        this.contentColor = j2;
        this.titleContentColor = j3;
        this.actionContentColor = j4;
    }

    /* JADX INFO: renamed from: copy-jRlVdoo$default, reason: not valid java name */
    public static /* synthetic */ RichTooltipColors m3767copyjRlVdoo$default(RichTooltipColors richTooltipColors, long j, long j2, long j3, long j4, int i, Object obj) {
        if ((i & 1) != 0) {
            j = richTooltipColors.containerColor;
        }
        long j5 = j;
        if ((i & 2) != 0) {
            j2 = richTooltipColors.contentColor;
        }
        long j6 = j2;
        if ((i & 4) != 0) {
            j3 = richTooltipColors.titleContentColor;
        }
        return richTooltipColors.m3768copyjRlVdoo(j5, j6, j3, (i & 8) != 0 ? richTooltipColors.actionContentColor : j4);
    }

    /* JADX INFO: renamed from: copy-jRlVdoo, reason: not valid java name */
    public final RichTooltipColors m3768copyjRlVdoo(long j, long j2, long j3, long j4) {
        return new RichTooltipColors(j != 16 ? j : this.containerColor, j2 != 16 ? j2 : this.contentColor, j3 != 16 ? j3 : this.titleContentColor, j4 != 16 ? j4 : this.actionContentColor, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RichTooltipColors)) {
            return false;
        }
        RichTooltipColors richTooltipColors = (RichTooltipColors) obj;
        return Color.m6233equalsimpl0(this.containerColor, richTooltipColors.containerColor) && Color.m6233equalsimpl0(this.contentColor, richTooltipColors.contentColor) && Color.m6233equalsimpl0(this.titleContentColor, richTooltipColors.titleContentColor) && Color.m6233equalsimpl0(this.actionContentColor, richTooltipColors.actionContentColor);
    }

    /* JADX INFO: renamed from: getActionContentColor-0d7_KjU, reason: not valid java name */
    public final long m3769getActionContentColor0d7_KjU() {
        return this.actionContentColor;
    }

    /* JADX INFO: renamed from: getContainerColor-0d7_KjU, reason: not valid java name */
    public final long m3770getContainerColor0d7_KjU() {
        return this.containerColor;
    }

    /* JADX INFO: renamed from: getContentColor-0d7_KjU, reason: not valid java name */
    public final long m3771getContentColor0d7_KjU() {
        return this.contentColor;
    }

    /* JADX INFO: renamed from: getTitleContentColor-0d7_KjU, reason: not valid java name */
    public final long m3772getTitleContentColor0d7_KjU() {
        return this.titleContentColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.actionContentColor) + r01.b(r01.b(Color.m6239hashCodeimpl(this.containerColor) * 31, 31, this.contentColor), 31, this.titleContentColor);
    }

    public /* synthetic */ RichTooltipColors(long j, long j2, long j3, long j4, jh2 jh2Var) {
        this(j, j2, j3, j4);
    }
}
