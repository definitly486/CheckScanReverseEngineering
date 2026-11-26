package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.r01;

/* JADX INFO: loaded from: classes2.dex */
public final class SelectableChipColors {
    public static final int $stable = 0;
    private final long containerColor;
    private final long disabledContainerColor;
    private final long disabledLabelColor;
    private final long disabledLeadingIconColor;
    private final long disabledSelectedContainerColor;
    private final long disabledTrailingIconColor;
    private final long labelColor;
    private final long leadingIconColor;
    private final long selectedContainerColor;
    private final long selectedLabelColor;
    private final long selectedLeadingIconColor;
    private final long selectedTrailingIconColor;
    private final long trailingIconColor;

    private SelectableChipColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13) {
        this.containerColor = j;
        this.labelColor = j2;
        this.leadingIconColor = j3;
        this.trailingIconColor = j4;
        this.disabledContainerColor = j5;
        this.disabledLabelColor = j6;
        this.disabledLeadingIconColor = j7;
        this.disabledTrailingIconColor = j8;
        this.selectedContainerColor = j9;
        this.disabledSelectedContainerColor = j10;
        this.selectedLabelColor = j11;
        this.selectedLeadingIconColor = j12;
        this.selectedTrailingIconColor = j13;
    }

    /* JADX INFO: renamed from: copy-daRQuJA$default, reason: not valid java name */
    public static /* synthetic */ SelectableChipColors m3837copydaRQuJA$default(SelectableChipColors selectableChipColors, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, int i, Object obj) {
        long j14;
        long j15;
        long j16 = (i & 1) != 0 ? selectableChipColors.containerColor : j;
        long j17 = (i & 2) != 0 ? selectableChipColors.labelColor : j2;
        long j18 = (i & 4) != 0 ? selectableChipColors.leadingIconColor : j3;
        long j19 = (i & 8) != 0 ? selectableChipColors.trailingIconColor : j4;
        long j20 = (i & 16) != 0 ? selectableChipColors.disabledContainerColor : j5;
        long j21 = (i & 32) != 0 ? selectableChipColors.disabledLabelColor : j6;
        long j22 = (i & 64) != 0 ? selectableChipColors.disabledLeadingIconColor : j7;
        long j23 = j16;
        long j24 = (i & 128) != 0 ? selectableChipColors.disabledTrailingIconColor : j8;
        long j25 = (i & 256) != 0 ? selectableChipColors.selectedContainerColor : j9;
        long j26 = (i & 512) != 0 ? selectableChipColors.disabledSelectedContainerColor : j10;
        long j27 = (i & 1024) != 0 ? selectableChipColors.selectedLabelColor : j11;
        long j28 = (i & 2048) != 0 ? selectableChipColors.selectedLeadingIconColor : j12;
        if ((i & 4096) != 0) {
            j15 = j28;
            j14 = selectableChipColors.selectedTrailingIconColor;
        } else {
            j14 = j13;
            j15 = j28;
        }
        return selectableChipColors.m3839copydaRQuJA(j23, j17, j18, j19, j20, j21, j22, j24, j25, j26, j27, j15, j14);
    }

    /* JADX INFO: renamed from: containerColor-WaAFU9c$material3, reason: not valid java name */
    public final long m3838containerColorWaAFU9c$material3(boolean z, boolean z2) {
        if (z) {
            return !z2 ? this.containerColor : this.selectedContainerColor;
        }
        return z2 ? this.disabledSelectedContainerColor : this.disabledContainerColor;
    }

    /* JADX INFO: renamed from: copy-daRQuJA, reason: not valid java name */
    public final SelectableChipColors m3839copydaRQuJA(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13) {
        return new SelectableChipColors(j != 16 ? j : this.containerColor, j2 != 16 ? j2 : this.labelColor, j3 != 16 ? j3 : this.leadingIconColor, j4 != 16 ? j4 : this.trailingIconColor, j5 != 16 ? j5 : this.disabledContainerColor, j6 != 16 ? j6 : this.disabledLabelColor, j7 != 16 ? j7 : this.disabledLeadingIconColor, j8 != 16 ? j8 : this.disabledTrailingIconColor, j9 != 16 ? j9 : this.selectedContainerColor, j10 != 16 ? j10 : this.disabledSelectedContainerColor, j11 != 16 ? j11 : this.selectedLabelColor, j12 != 16 ? j12 : this.selectedLeadingIconColor, j13 != 16 ? j13 : this.selectedTrailingIconColor, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SelectableChipColors)) {
            return false;
        }
        SelectableChipColors selectableChipColors = (SelectableChipColors) obj;
        return Color.m6233equalsimpl0(this.containerColor, selectableChipColors.containerColor) && Color.m6233equalsimpl0(this.labelColor, selectableChipColors.labelColor) && Color.m6233equalsimpl0(this.leadingIconColor, selectableChipColors.leadingIconColor) && Color.m6233equalsimpl0(this.trailingIconColor, selectableChipColors.trailingIconColor) && Color.m6233equalsimpl0(this.disabledContainerColor, selectableChipColors.disabledContainerColor) && Color.m6233equalsimpl0(this.disabledLabelColor, selectableChipColors.disabledLabelColor) && Color.m6233equalsimpl0(this.disabledLeadingIconColor, selectableChipColors.disabledLeadingIconColor) && Color.m6233equalsimpl0(this.disabledTrailingIconColor, selectableChipColors.disabledTrailingIconColor) && Color.m6233equalsimpl0(this.selectedContainerColor, selectableChipColors.selectedContainerColor) && Color.m6233equalsimpl0(this.disabledSelectedContainerColor, selectableChipColors.disabledSelectedContainerColor) && Color.m6233equalsimpl0(this.selectedLabelColor, selectableChipColors.selectedLabelColor) && Color.m6233equalsimpl0(this.selectedLeadingIconColor, selectableChipColors.selectedLeadingIconColor) && Color.m6233equalsimpl0(this.selectedTrailingIconColor, selectableChipColors.selectedTrailingIconColor);
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.selectedTrailingIconColor) + r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(Color.m6239hashCodeimpl(this.containerColor) * 31, 31, this.labelColor), 31, this.leadingIconColor), 31, this.trailingIconColor), 31, this.disabledContainerColor), 31, this.disabledLabelColor), 31, this.disabledLeadingIconColor), 31, this.disabledTrailingIconColor), 31, this.selectedContainerColor), 31, this.disabledSelectedContainerColor), 31, this.selectedLabelColor), 31, this.selectedLeadingIconColor);
    }

    /* JADX INFO: renamed from: labelColor-WaAFU9c$material3, reason: not valid java name */
    public final long m3840labelColorWaAFU9c$material3(boolean z, boolean z2) {
        if (z) {
            return !z2 ? this.labelColor : this.selectedLabelColor;
        }
        return this.disabledLabelColor;
    }

    /* JADX INFO: renamed from: leadingIconContentColor-WaAFU9c$material3, reason: not valid java name */
    public final long m3841leadingIconContentColorWaAFU9c$material3(boolean z, boolean z2) {
        if (z) {
            return !z2 ? this.leadingIconColor : this.selectedLeadingIconColor;
        }
        return this.disabledLeadingIconColor;
    }

    /* JADX INFO: renamed from: trailingIconContentColor-WaAFU9c$material3, reason: not valid java name */
    public final long m3842trailingIconContentColorWaAFU9c$material3(boolean z, boolean z2) {
        if (z) {
            return !z2 ? this.trailingIconColor : this.selectedTrailingIconColor;
        }
        return this.disabledTrailingIconColor;
    }

    public /* synthetic */ SelectableChipColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, jh2 jh2Var) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13);
    }
}
