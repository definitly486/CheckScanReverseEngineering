package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.r01;

/* JADX INFO: loaded from: classes2.dex */
public final class SwitchColors {
    public static final int $stable = 0;
    private final long checkedBorderColor;
    private final long checkedIconColor;
    private final long checkedThumbColor;
    private final long checkedTrackColor;
    private final long disabledCheckedBorderColor;
    private final long disabledCheckedIconColor;
    private final long disabledCheckedThumbColor;
    private final long disabledCheckedTrackColor;
    private final long disabledUncheckedBorderColor;
    private final long disabledUncheckedIconColor;
    private final long disabledUncheckedThumbColor;
    private final long disabledUncheckedTrackColor;
    private final long uncheckedBorderColor;
    private final long uncheckedIconColor;
    private final long uncheckedThumbColor;
    private final long uncheckedTrackColor;

    private SwitchColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
        this.checkedThumbColor = j;
        this.checkedTrackColor = j2;
        this.checkedBorderColor = j3;
        this.checkedIconColor = j4;
        this.uncheckedThumbColor = j5;
        this.uncheckedTrackColor = j6;
        this.uncheckedBorderColor = j7;
        this.uncheckedIconColor = j8;
        this.disabledCheckedThumbColor = j9;
        this.disabledCheckedTrackColor = j10;
        this.disabledCheckedBorderColor = j11;
        this.disabledCheckedIconColor = j12;
        this.disabledUncheckedThumbColor = j13;
        this.disabledUncheckedTrackColor = j14;
        this.disabledUncheckedBorderColor = j15;
        this.disabledUncheckedIconColor = j16;
    }

    /* JADX INFO: renamed from: copy-Q_H9qLU$default, reason: not valid java name */
    public static /* synthetic */ SwitchColors m3950copyQ_H9qLU$default(SwitchColors switchColors, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, int i, Object obj) {
        long j17;
        long j18;
        long j19 = (i & 1) != 0 ? switchColors.checkedThumbColor : j;
        long j20 = (i & 2) != 0 ? switchColors.checkedTrackColor : j2;
        long j21 = (i & 4) != 0 ? switchColors.checkedBorderColor : j3;
        long j22 = (i & 8) != 0 ? switchColors.checkedIconColor : j4;
        long j23 = (i & 16) != 0 ? switchColors.uncheckedThumbColor : j5;
        long j24 = (i & 32) != 0 ? switchColors.uncheckedTrackColor : j6;
        long j25 = (i & 64) != 0 ? switchColors.uncheckedBorderColor : j7;
        long j26 = j19;
        long j27 = (i & 128) != 0 ? switchColors.uncheckedIconColor : j8;
        long j28 = (i & 256) != 0 ? switchColors.disabledCheckedThumbColor : j9;
        long j29 = (i & 512) != 0 ? switchColors.disabledCheckedTrackColor : j10;
        long j30 = (i & 1024) != 0 ? switchColors.disabledCheckedBorderColor : j11;
        long j31 = (i & 2048) != 0 ? switchColors.disabledCheckedIconColor : j12;
        long j32 = (i & 4096) != 0 ? switchColors.disabledUncheckedThumbColor : j13;
        long j33 = (i & 8192) != 0 ? switchColors.disabledUncheckedTrackColor : j14;
        long j34 = (i & 16384) != 0 ? switchColors.disabledUncheckedBorderColor : j15;
        if ((i & 32768) != 0) {
            j18 = j34;
            j17 = switchColors.disabledUncheckedIconColor;
        } else {
            j17 = j16;
            j18 = j34;
        }
        return switchColors.m3952copyQ_H9qLU(j26, j20, j21, j22, j23, j24, j25, j27, j28, j29, j30, j31, j32, j33, j18, j17);
    }

    /* JADX INFO: renamed from: borderColor-WaAFU9c$material3, reason: not valid java name */
    public final long m3951borderColorWaAFU9c$material3(boolean z, boolean z2) {
        if (z) {
            return z2 ? this.checkedBorderColor : this.uncheckedBorderColor;
        }
        return z2 ? this.disabledCheckedBorderColor : this.disabledUncheckedBorderColor;
    }

    /* JADX INFO: renamed from: copy-Q_H9qLU, reason: not valid java name */
    public final SwitchColors m3952copyQ_H9qLU(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
        return new SwitchColors(j != 16 ? j : this.checkedThumbColor, j2 != 16 ? j2 : this.checkedTrackColor, j3 != 16 ? j3 : this.checkedBorderColor, j4 != 16 ? j4 : this.checkedIconColor, j5 != 16 ? j5 : this.uncheckedThumbColor, j6 != 16 ? j6 : this.uncheckedTrackColor, j7 != 16 ? j7 : this.uncheckedBorderColor, j8 != 16 ? j8 : this.uncheckedIconColor, j9 != 16 ? j9 : this.disabledCheckedThumbColor, j10 != 16 ? j10 : this.disabledCheckedTrackColor, j11 != 16 ? j11 : this.disabledCheckedBorderColor, j12 != 16 ? j12 : this.disabledCheckedIconColor, j13 != 16 ? j13 : this.disabledUncheckedThumbColor, j14 != 16 ? j14 : this.disabledUncheckedTrackColor, j15 != 16 ? j15 : this.disabledUncheckedBorderColor, j16 != 16 ? j16 : this.disabledUncheckedIconColor, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SwitchColors)) {
            return false;
        }
        SwitchColors switchColors = (SwitchColors) obj;
        return Color.m6233equalsimpl0(this.checkedThumbColor, switchColors.checkedThumbColor) && Color.m6233equalsimpl0(this.checkedTrackColor, switchColors.checkedTrackColor) && Color.m6233equalsimpl0(this.checkedBorderColor, switchColors.checkedBorderColor) && Color.m6233equalsimpl0(this.checkedIconColor, switchColors.checkedIconColor) && Color.m6233equalsimpl0(this.uncheckedThumbColor, switchColors.uncheckedThumbColor) && Color.m6233equalsimpl0(this.uncheckedTrackColor, switchColors.uncheckedTrackColor) && Color.m6233equalsimpl0(this.uncheckedBorderColor, switchColors.uncheckedBorderColor) && Color.m6233equalsimpl0(this.uncheckedIconColor, switchColors.uncheckedIconColor) && Color.m6233equalsimpl0(this.disabledCheckedThumbColor, switchColors.disabledCheckedThumbColor) && Color.m6233equalsimpl0(this.disabledCheckedTrackColor, switchColors.disabledCheckedTrackColor) && Color.m6233equalsimpl0(this.disabledCheckedBorderColor, switchColors.disabledCheckedBorderColor) && Color.m6233equalsimpl0(this.disabledCheckedIconColor, switchColors.disabledCheckedIconColor) && Color.m6233equalsimpl0(this.disabledUncheckedThumbColor, switchColors.disabledUncheckedThumbColor) && Color.m6233equalsimpl0(this.disabledUncheckedTrackColor, switchColors.disabledUncheckedTrackColor) && Color.m6233equalsimpl0(this.disabledUncheckedBorderColor, switchColors.disabledUncheckedBorderColor) && Color.m6233equalsimpl0(this.disabledUncheckedIconColor, switchColors.disabledUncheckedIconColor);
    }

    /* JADX INFO: renamed from: getCheckedBorderColor-0d7_KjU, reason: not valid java name */
    public final long m3953getCheckedBorderColor0d7_KjU() {
        return this.checkedBorderColor;
    }

    /* JADX INFO: renamed from: getCheckedIconColor-0d7_KjU, reason: not valid java name */
    public final long m3954getCheckedIconColor0d7_KjU() {
        return this.checkedIconColor;
    }

    /* JADX INFO: renamed from: getCheckedThumbColor-0d7_KjU, reason: not valid java name */
    public final long m3955getCheckedThumbColor0d7_KjU() {
        return this.checkedThumbColor;
    }

    /* JADX INFO: renamed from: getCheckedTrackColor-0d7_KjU, reason: not valid java name */
    public final long m3956getCheckedTrackColor0d7_KjU() {
        return this.checkedTrackColor;
    }

    /* JADX INFO: renamed from: getDisabledCheckedBorderColor-0d7_KjU, reason: not valid java name */
    public final long m3957getDisabledCheckedBorderColor0d7_KjU() {
        return this.disabledCheckedBorderColor;
    }

    /* JADX INFO: renamed from: getDisabledCheckedIconColor-0d7_KjU, reason: not valid java name */
    public final long m3958getDisabledCheckedIconColor0d7_KjU() {
        return this.disabledCheckedIconColor;
    }

    /* JADX INFO: renamed from: getDisabledCheckedThumbColor-0d7_KjU, reason: not valid java name */
    public final long m3959getDisabledCheckedThumbColor0d7_KjU() {
        return this.disabledCheckedThumbColor;
    }

    /* JADX INFO: renamed from: getDisabledCheckedTrackColor-0d7_KjU, reason: not valid java name */
    public final long m3960getDisabledCheckedTrackColor0d7_KjU() {
        return this.disabledCheckedTrackColor;
    }

    /* JADX INFO: renamed from: getDisabledUncheckedBorderColor-0d7_KjU, reason: not valid java name */
    public final long m3961getDisabledUncheckedBorderColor0d7_KjU() {
        return this.disabledUncheckedBorderColor;
    }

    /* JADX INFO: renamed from: getDisabledUncheckedIconColor-0d7_KjU, reason: not valid java name */
    public final long m3962getDisabledUncheckedIconColor0d7_KjU() {
        return this.disabledUncheckedIconColor;
    }

    /* JADX INFO: renamed from: getDisabledUncheckedThumbColor-0d7_KjU, reason: not valid java name */
    public final long m3963getDisabledUncheckedThumbColor0d7_KjU() {
        return this.disabledUncheckedThumbColor;
    }

    /* JADX INFO: renamed from: getDisabledUncheckedTrackColor-0d7_KjU, reason: not valid java name */
    public final long m3964getDisabledUncheckedTrackColor0d7_KjU() {
        return this.disabledUncheckedTrackColor;
    }

    /* JADX INFO: renamed from: getUncheckedBorderColor-0d7_KjU, reason: not valid java name */
    public final long m3965getUncheckedBorderColor0d7_KjU() {
        return this.uncheckedBorderColor;
    }

    /* JADX INFO: renamed from: getUncheckedIconColor-0d7_KjU, reason: not valid java name */
    public final long m3966getUncheckedIconColor0d7_KjU() {
        return this.uncheckedIconColor;
    }

    /* JADX INFO: renamed from: getUncheckedThumbColor-0d7_KjU, reason: not valid java name */
    public final long m3967getUncheckedThumbColor0d7_KjU() {
        return this.uncheckedThumbColor;
    }

    /* JADX INFO: renamed from: getUncheckedTrackColor-0d7_KjU, reason: not valid java name */
    public final long m3968getUncheckedTrackColor0d7_KjU() {
        return this.uncheckedTrackColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.disabledUncheckedIconColor) + r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(Color.m6239hashCodeimpl(this.checkedThumbColor) * 31, 31, this.checkedTrackColor), 31, this.checkedBorderColor), 31, this.checkedIconColor), 31, this.uncheckedThumbColor), 31, this.uncheckedTrackColor), 31, this.uncheckedBorderColor), 31, this.uncheckedIconColor), 31, this.disabledCheckedThumbColor), 31, this.disabledCheckedTrackColor), 31, this.disabledCheckedBorderColor), 31, this.disabledCheckedIconColor), 31, this.disabledUncheckedThumbColor), 31, this.disabledUncheckedTrackColor), 31, this.disabledUncheckedBorderColor);
    }

    /* JADX INFO: renamed from: iconColor-WaAFU9c$material3, reason: not valid java name */
    public final long m3969iconColorWaAFU9c$material3(boolean z, boolean z2) {
        if (z) {
            return z2 ? this.checkedIconColor : this.uncheckedIconColor;
        }
        return z2 ? this.disabledCheckedIconColor : this.disabledUncheckedIconColor;
    }

    /* JADX INFO: renamed from: thumbColor-WaAFU9c$material3, reason: not valid java name */
    public final long m3970thumbColorWaAFU9c$material3(boolean z, boolean z2) {
        if (z) {
            return z2 ? this.checkedThumbColor : this.uncheckedThumbColor;
        }
        return z2 ? this.disabledCheckedThumbColor : this.disabledUncheckedThumbColor;
    }

    /* JADX INFO: renamed from: trackColor-WaAFU9c$material3, reason: not valid java name */
    public final long m3971trackColorWaAFU9c$material3(boolean z, boolean z2) {
        if (z) {
            return z2 ? this.checkedTrackColor : this.uncheckedTrackColor;
        }
        return z2 ? this.disabledCheckedTrackColor : this.disabledUncheckedTrackColor;
    }

    public /* synthetic */ SwitchColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, jh2 jh2Var) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16);
    }
}
