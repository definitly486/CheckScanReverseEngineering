package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.r01;

/* JADX INFO: loaded from: classes2.dex */
public final class ChipColors {
    public static final int $stable = 0;
    private final long containerColor;
    private final long disabledContainerColor;
    private final long disabledLabelColor;
    private final long disabledLeadingIconContentColor;
    private final long disabledTrailingIconContentColor;
    private final long labelColor;
    private final long leadingIconContentColor;
    private final long trailingIconContentColor;

    private ChipColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8) {
        this.containerColor = j;
        this.labelColor = j2;
        this.leadingIconContentColor = j3;
        this.trailingIconContentColor = j4;
        this.disabledContainerColor = j5;
        this.disabledLabelColor = j6;
        this.disabledLeadingIconContentColor = j7;
        this.disabledTrailingIconContentColor = j8;
    }

    /* JADX INFO: renamed from: copy-FD3wquc$default, reason: not valid java name */
    public static /* synthetic */ ChipColors m3180copyFD3wquc$default(ChipColors chipColors, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, int i, Object obj) {
        long j9;
        long j10;
        long j11 = (i & 1) != 0 ? chipColors.containerColor : j;
        long j12 = (i & 2) != 0 ? chipColors.labelColor : j2;
        long j13 = (i & 4) != 0 ? chipColors.leadingIconContentColor : j3;
        long j14 = (i & 8) != 0 ? chipColors.trailingIconContentColor : j4;
        long j15 = (i & 16) != 0 ? chipColors.disabledContainerColor : j5;
        long j16 = (i & 32) != 0 ? chipColors.disabledLabelColor : j6;
        long j17 = (i & 64) != 0 ? chipColors.disabledLeadingIconContentColor : j7;
        if ((i & 128) != 0) {
            j9 = chipColors.disabledTrailingIconContentColor;
            j10 = j11;
        } else {
            j9 = j8;
            j10 = j11;
        }
        return chipColors.m3182copyFD3wquc(j10, j12, j13, j14, j15, j16, j17, j9);
    }

    /* JADX INFO: renamed from: containerColor-vNxB06k$material3, reason: not valid java name */
    public final long m3181containerColorvNxB06k$material3(boolean z) {
        return z ? this.containerColor : this.disabledContainerColor;
    }

    /* JADX INFO: renamed from: copy-FD3wquc, reason: not valid java name */
    public final ChipColors m3182copyFD3wquc(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8) {
        return new ChipColors(j != 16 ? j : this.containerColor, j2 != 16 ? j2 : this.labelColor, j3 != 16 ? j3 : this.leadingIconContentColor, j4 != 16 ? j4 : this.trailingIconContentColor, j5 != 16 ? j5 : this.disabledContainerColor, j6 != 16 ? j6 : this.disabledLabelColor, j7 != 16 ? j7 : this.disabledLeadingIconContentColor, j8 != 16 ? j8 : this.disabledTrailingIconContentColor, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ChipColors)) {
            return false;
        }
        ChipColors chipColors = (ChipColors) obj;
        return Color.m6233equalsimpl0(this.containerColor, chipColors.containerColor) && Color.m6233equalsimpl0(this.labelColor, chipColors.labelColor) && Color.m6233equalsimpl0(this.leadingIconContentColor, chipColors.leadingIconContentColor) && Color.m6233equalsimpl0(this.trailingIconContentColor, chipColors.trailingIconContentColor) && Color.m6233equalsimpl0(this.disabledContainerColor, chipColors.disabledContainerColor) && Color.m6233equalsimpl0(this.disabledLabelColor, chipColors.disabledLabelColor) && Color.m6233equalsimpl0(this.disabledLeadingIconContentColor, chipColors.disabledLeadingIconContentColor) && Color.m6233equalsimpl0(this.disabledTrailingIconContentColor, chipColors.disabledTrailingIconContentColor);
    }

    /* JADX INFO: renamed from: getContainerColor-0d7_KjU, reason: not valid java name */
    public final long m3183getContainerColor0d7_KjU() {
        return this.containerColor;
    }

    /* JADX INFO: renamed from: getDisabledContainerColor-0d7_KjU, reason: not valid java name */
    public final long m3184getDisabledContainerColor0d7_KjU() {
        return this.disabledContainerColor;
    }

    /* JADX INFO: renamed from: getDisabledLabelColor-0d7_KjU, reason: not valid java name */
    public final long m3185getDisabledLabelColor0d7_KjU() {
        return this.disabledLabelColor;
    }

    /* JADX INFO: renamed from: getDisabledLeadingIconContentColor-0d7_KjU, reason: not valid java name */
    public final long m3186getDisabledLeadingIconContentColor0d7_KjU() {
        return this.disabledLeadingIconContentColor;
    }

    /* JADX INFO: renamed from: getDisabledTrailingIconContentColor-0d7_KjU, reason: not valid java name */
    public final long m3187getDisabledTrailingIconContentColor0d7_KjU() {
        return this.disabledTrailingIconContentColor;
    }

    /* JADX INFO: renamed from: getLabelColor-0d7_KjU, reason: not valid java name */
    public final long m3188getLabelColor0d7_KjU() {
        return this.labelColor;
    }

    /* JADX INFO: renamed from: getLeadingIconContentColor-0d7_KjU, reason: not valid java name */
    public final long m3189getLeadingIconContentColor0d7_KjU() {
        return this.leadingIconContentColor;
    }

    /* JADX INFO: renamed from: getTrailingIconContentColor-0d7_KjU, reason: not valid java name */
    public final long m3190getTrailingIconContentColor0d7_KjU() {
        return this.trailingIconContentColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.disabledTrailingIconContentColor) + r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(Color.m6239hashCodeimpl(this.containerColor) * 31, 31, this.labelColor), 31, this.leadingIconContentColor), 31, this.trailingIconContentColor), 31, this.disabledContainerColor), 31, this.disabledLabelColor), 31, this.disabledLeadingIconContentColor);
    }

    /* JADX INFO: renamed from: labelColor-vNxB06k$material3, reason: not valid java name */
    public final long m3191labelColorvNxB06k$material3(boolean z) {
        return z ? this.labelColor : this.disabledLabelColor;
    }

    /* JADX INFO: renamed from: leadingIconContentColor-vNxB06k$material3, reason: not valid java name */
    public final long m3192leadingIconContentColorvNxB06k$material3(boolean z) {
        return z ? this.leadingIconContentColor : this.disabledLeadingIconContentColor;
    }

    /* JADX INFO: renamed from: trailingIconContentColor-vNxB06k$material3, reason: not valid java name */
    public final long m3193trailingIconContentColorvNxB06k$material3(boolean z) {
        return z ? this.trailingIconContentColor : this.disabledTrailingIconContentColor;
    }

    public /* synthetic */ ChipColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, jh2 jh2Var) {
        this(j, j2, j3, j4, j5, j6, j7, j8);
    }
}
