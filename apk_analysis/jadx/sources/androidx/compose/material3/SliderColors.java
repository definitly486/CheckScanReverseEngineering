package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.r01;

/* JADX INFO: loaded from: classes2.dex */
public final class SliderColors {
    public static final int $stable = 0;
    private final long activeTickColor;
    private final long activeTrackColor;
    private final long disabledActiveTickColor;
    private final long disabledActiveTrackColor;
    private final long disabledInactiveTickColor;
    private final long disabledInactiveTrackColor;
    private final long disabledThumbColor;
    private final long inactiveTickColor;
    private final long inactiveTrackColor;
    private final long thumbColor;

    private SliderColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10) {
        this.thumbColor = j;
        this.activeTrackColor = j2;
        this.activeTickColor = j3;
        this.inactiveTrackColor = j4;
        this.inactiveTickColor = j5;
        this.disabledThumbColor = j6;
        this.disabledActiveTrackColor = j7;
        this.disabledActiveTickColor = j8;
        this.disabledInactiveTrackColor = j9;
        this.disabledInactiveTickColor = j10;
    }

    /* JADX INFO: renamed from: copy--K518z4$default, reason: not valid java name */
    public static /* synthetic */ SliderColors m3869copyK518z4$default(SliderColors sliderColors, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, int i, Object obj) {
        long j11;
        long j12;
        long j13 = (i & 1) != 0 ? sliderColors.thumbColor : j;
        long j14 = (i & 2) != 0 ? sliderColors.activeTrackColor : j2;
        long j15 = (i & 4) != 0 ? sliderColors.activeTickColor : j3;
        long j16 = (i & 8) != 0 ? sliderColors.inactiveTrackColor : j4;
        long j17 = (i & 16) != 0 ? sliderColors.inactiveTickColor : j5;
        long j18 = (i & 32) != 0 ? sliderColors.disabledThumbColor : j6;
        long j19 = (i & 64) != 0 ? sliderColors.disabledActiveTrackColor : j7;
        long j20 = j13;
        long j21 = (i & 128) != 0 ? sliderColors.disabledActiveTickColor : j8;
        long j22 = (i & 256) != 0 ? sliderColors.disabledInactiveTrackColor : j9;
        if ((i & 512) != 0) {
            j12 = j22;
            j11 = sliderColors.disabledInactiveTickColor;
        } else {
            j11 = j10;
            j12 = j22;
        }
        return sliderColors.m3870copyK518z4(j20, j14, j15, j16, j17, j18, j19, j21, j12, j11);
    }

    /* JADX INFO: renamed from: copy--K518z4, reason: not valid java name */
    public final SliderColors m3870copyK518z4(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10) {
        return new SliderColors(j != 16 ? j : this.thumbColor, j2 != 16 ? j2 : this.activeTrackColor, j3 != 16 ? j3 : this.activeTickColor, j4 != 16 ? j4 : this.inactiveTrackColor, j5 != 16 ? j5 : this.inactiveTickColor, j6 != 16 ? j6 : this.disabledThumbColor, j7 != 16 ? j7 : this.disabledActiveTrackColor, j8 != 16 ? j8 : this.disabledActiveTickColor, j9 != 16 ? j9 : this.disabledInactiveTrackColor, j10 != 16 ? j10 : this.disabledInactiveTickColor, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SliderColors)) {
            return false;
        }
        SliderColors sliderColors = (SliderColors) obj;
        return Color.m6233equalsimpl0(this.thumbColor, sliderColors.thumbColor) && Color.m6233equalsimpl0(this.activeTrackColor, sliderColors.activeTrackColor) && Color.m6233equalsimpl0(this.activeTickColor, sliderColors.activeTickColor) && Color.m6233equalsimpl0(this.inactiveTrackColor, sliderColors.inactiveTrackColor) && Color.m6233equalsimpl0(this.inactiveTickColor, sliderColors.inactiveTickColor) && Color.m6233equalsimpl0(this.disabledThumbColor, sliderColors.disabledThumbColor) && Color.m6233equalsimpl0(this.disabledActiveTrackColor, sliderColors.disabledActiveTrackColor) && Color.m6233equalsimpl0(this.disabledActiveTickColor, sliderColors.disabledActiveTickColor) && Color.m6233equalsimpl0(this.disabledInactiveTrackColor, sliderColors.disabledInactiveTrackColor) && Color.m6233equalsimpl0(this.disabledInactiveTickColor, sliderColors.disabledInactiveTickColor);
    }

    /* JADX INFO: renamed from: getActiveTickColor-0d7_KjU, reason: not valid java name */
    public final long m3871getActiveTickColor0d7_KjU() {
        return this.activeTickColor;
    }

    /* JADX INFO: renamed from: getActiveTrackColor-0d7_KjU, reason: not valid java name */
    public final long m3872getActiveTrackColor0d7_KjU() {
        return this.activeTrackColor;
    }

    /* JADX INFO: renamed from: getDisabledActiveTickColor-0d7_KjU, reason: not valid java name */
    public final long m3873getDisabledActiveTickColor0d7_KjU() {
        return this.disabledActiveTickColor;
    }

    /* JADX INFO: renamed from: getDisabledActiveTrackColor-0d7_KjU, reason: not valid java name */
    public final long m3874getDisabledActiveTrackColor0d7_KjU() {
        return this.disabledActiveTrackColor;
    }

    /* JADX INFO: renamed from: getDisabledInactiveTickColor-0d7_KjU, reason: not valid java name */
    public final long m3875getDisabledInactiveTickColor0d7_KjU() {
        return this.disabledInactiveTickColor;
    }

    /* JADX INFO: renamed from: getDisabledInactiveTrackColor-0d7_KjU, reason: not valid java name */
    public final long m3876getDisabledInactiveTrackColor0d7_KjU() {
        return this.disabledInactiveTrackColor;
    }

    /* JADX INFO: renamed from: getDisabledThumbColor-0d7_KjU, reason: not valid java name */
    public final long m3877getDisabledThumbColor0d7_KjU() {
        return this.disabledThumbColor;
    }

    /* JADX INFO: renamed from: getInactiveTickColor-0d7_KjU, reason: not valid java name */
    public final long m3878getInactiveTickColor0d7_KjU() {
        return this.inactiveTickColor;
    }

    /* JADX INFO: renamed from: getInactiveTrackColor-0d7_KjU, reason: not valid java name */
    public final long m3879getInactiveTrackColor0d7_KjU() {
        return this.inactiveTrackColor;
    }

    /* JADX INFO: renamed from: getThumbColor-0d7_KjU, reason: not valid java name */
    public final long m3880getThumbColor0d7_KjU() {
        return this.thumbColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.disabledInactiveTickColor) + r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(Color.m6239hashCodeimpl(this.thumbColor) * 31, 31, this.activeTrackColor), 31, this.activeTickColor), 31, this.inactiveTrackColor), 31, this.inactiveTickColor), 31, this.disabledThumbColor), 31, this.disabledActiveTrackColor), 31, this.disabledActiveTickColor), 31, this.disabledInactiveTrackColor);
    }

    /* JADX INFO: renamed from: thumbColor-vNxB06k$material3, reason: not valid java name */
    public final long m3881thumbColorvNxB06k$material3(boolean z) {
        return z ? this.thumbColor : this.disabledThumbColor;
    }

    /* JADX INFO: renamed from: tickColor-WaAFU9c$material3, reason: not valid java name */
    public final long m3882tickColorWaAFU9c$material3(boolean z, boolean z2) {
        if (z) {
            return z2 ? this.activeTickColor : this.inactiveTickColor;
        }
        return z2 ? this.disabledActiveTickColor : this.disabledInactiveTickColor;
    }

    /* JADX INFO: renamed from: trackColor-WaAFU9c$material3, reason: not valid java name */
    public final long m3883trackColorWaAFU9c$material3(boolean z, boolean z2) {
        if (z) {
            return z2 ? this.activeTrackColor : this.inactiveTrackColor;
        }
        return z2 ? this.disabledActiveTrackColor : this.disabledInactiveTrackColor;
    }

    public /* synthetic */ SliderColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, jh2 jh2Var) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10);
    }
}
