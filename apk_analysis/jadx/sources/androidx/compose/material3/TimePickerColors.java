package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.r01;

/* JADX INFO: loaded from: classes2.dex */
public final class TimePickerColors {
    public static final int $stable = 0;
    private final long clockDialColor;
    private final long clockDialSelectedContentColor;
    private final long clockDialUnselectedContentColor;
    private final long containerColor;
    private final long periodSelectorBorderColor;
    private final long periodSelectorSelectedContainerColor;
    private final long periodSelectorSelectedContentColor;
    private final long periodSelectorUnselectedContainerColor;
    private final long periodSelectorUnselectedContentColor;
    private final long selectorColor;
    private final long timeSelectorSelectedContainerColor;
    private final long timeSelectorSelectedContentColor;
    private final long timeSelectorUnselectedContainerColor;
    private final long timeSelectorUnselectedContentColor;

    private TimePickerColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14) {
        this.clockDialColor = j;
        this.selectorColor = j2;
        this.containerColor = j3;
        this.periodSelectorBorderColor = j4;
        this.clockDialSelectedContentColor = j5;
        this.clockDialUnselectedContentColor = j6;
        this.periodSelectorSelectedContainerColor = j7;
        this.periodSelectorUnselectedContainerColor = j8;
        this.periodSelectorSelectedContentColor = j9;
        this.periodSelectorUnselectedContentColor = j10;
        this.timeSelectorSelectedContainerColor = j11;
        this.timeSelectorUnselectedContainerColor = j12;
        this.timeSelectorSelectedContentColor = j13;
        this.timeSelectorUnselectedContentColor = j14;
    }

    /* JADX INFO: renamed from: copy-dVHXu7A$default, reason: not valid java name */
    public static /* synthetic */ TimePickerColors m4088copydVHXu7A$default(TimePickerColors timePickerColors, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, int i, Object obj) {
        long j15;
        long j16;
        long j17 = (i & 1) != 0 ? timePickerColors.containerColor : j;
        long j18 = (i & 2) != 0 ? timePickerColors.selectorColor : j2;
        long j19 = (i & 4) != 0 ? timePickerColors.containerColor : j3;
        long j20 = (i & 8) != 0 ? timePickerColors.periodSelectorBorderColor : j4;
        long j21 = (i & 16) != 0 ? timePickerColors.clockDialSelectedContentColor : j5;
        long j22 = (i & 32) != 0 ? timePickerColors.clockDialUnselectedContentColor : j6;
        long j23 = (i & 64) != 0 ? timePickerColors.periodSelectorSelectedContainerColor : j7;
        long j24 = j17;
        long j25 = (i & 128) != 0 ? timePickerColors.periodSelectorUnselectedContainerColor : j8;
        long j26 = (i & 256) != 0 ? timePickerColors.periodSelectorSelectedContentColor : j9;
        long j27 = (i & 512) != 0 ? timePickerColors.periodSelectorUnselectedContentColor : j10;
        long j28 = (i & 1024) != 0 ? timePickerColors.timeSelectorSelectedContainerColor : j11;
        long j29 = (i & 2048) != 0 ? timePickerColors.timeSelectorUnselectedContainerColor : j12;
        long j30 = (i & 4096) != 0 ? timePickerColors.timeSelectorSelectedContentColor : j13;
        if ((i & 8192) != 0) {
            j16 = j30;
            j15 = timePickerColors.timeSelectorUnselectedContentColor;
        } else {
            j15 = j14;
            j16 = j30;
        }
        return timePickerColors.m4090copydVHXu7A(j24, j18, j19, j20, j21, j22, j23, j25, j26, j27, j28, j29, j16, j15);
    }

    /* JADX INFO: renamed from: clockDialContentColor-vNxB06k$material3, reason: not valid java name */
    public final long m4089clockDialContentColorvNxB06k$material3(boolean z) {
        return z ? this.clockDialSelectedContentColor : this.clockDialUnselectedContentColor;
    }

    /* JADX INFO: renamed from: copy-dVHXu7A, reason: not valid java name */
    public final TimePickerColors m4090copydVHXu7A(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14) {
        return new TimePickerColors(j != 16 ? j : this.clockDialColor, j2 != 16 ? j2 : this.selectorColor, j3 != 16 ? j3 : this.containerColor, j4 != 16 ? j4 : this.periodSelectorBorderColor, j5 != 16 ? j5 : this.clockDialSelectedContentColor, j6 != 16 ? j6 : this.clockDialUnselectedContentColor, j7 != 16 ? j7 : this.periodSelectorSelectedContainerColor, j8 != 16 ? j8 : this.periodSelectorUnselectedContainerColor, j9 != 16 ? j9 : this.periodSelectorSelectedContentColor, j10 != 16 ? j10 : this.periodSelectorUnselectedContentColor, j11 != 16 ? j11 : this.timeSelectorSelectedContainerColor, j12 != 16 ? j12 : this.timeSelectorUnselectedContainerColor, j13 != 16 ? j13 : this.timeSelectorSelectedContentColor, j14 != 16 ? j14 : this.timeSelectorUnselectedContentColor, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TimePickerColors.class != obj.getClass()) {
            return false;
        }
        TimePickerColors timePickerColors = (TimePickerColors) obj;
        return Color.m6233equalsimpl0(this.clockDialColor, timePickerColors.clockDialColor) && Color.m6233equalsimpl0(this.selectorColor, timePickerColors.selectorColor) && Color.m6233equalsimpl0(this.containerColor, timePickerColors.containerColor) && Color.m6233equalsimpl0(this.periodSelectorBorderColor, timePickerColors.periodSelectorBorderColor) && Color.m6233equalsimpl0(this.periodSelectorSelectedContainerColor, timePickerColors.periodSelectorSelectedContainerColor) && Color.m6233equalsimpl0(this.periodSelectorUnselectedContainerColor, timePickerColors.periodSelectorUnselectedContainerColor) && Color.m6233equalsimpl0(this.periodSelectorSelectedContentColor, timePickerColors.periodSelectorSelectedContentColor) && Color.m6233equalsimpl0(this.periodSelectorUnselectedContentColor, timePickerColors.periodSelectorUnselectedContentColor) && Color.m6233equalsimpl0(this.timeSelectorSelectedContainerColor, timePickerColors.timeSelectorSelectedContainerColor) && Color.m6233equalsimpl0(this.timeSelectorUnselectedContainerColor, timePickerColors.timeSelectorUnselectedContainerColor) && Color.m6233equalsimpl0(this.timeSelectorSelectedContentColor, timePickerColors.timeSelectorSelectedContentColor) && Color.m6233equalsimpl0(this.timeSelectorUnselectedContentColor, timePickerColors.timeSelectorUnselectedContentColor);
    }

    /* JADX INFO: renamed from: getClockDialColor-0d7_KjU, reason: not valid java name */
    public final long m4091getClockDialColor0d7_KjU() {
        return this.clockDialColor;
    }

    /* JADX INFO: renamed from: getClockDialSelectedContentColor-0d7_KjU, reason: not valid java name */
    public final long m4092getClockDialSelectedContentColor0d7_KjU() {
        return this.clockDialSelectedContentColor;
    }

    /* JADX INFO: renamed from: getClockDialUnselectedContentColor-0d7_KjU, reason: not valid java name */
    public final long m4093getClockDialUnselectedContentColor0d7_KjU() {
        return this.clockDialUnselectedContentColor;
    }

    /* JADX INFO: renamed from: getContainerColor-0d7_KjU, reason: not valid java name */
    public final long m4094getContainerColor0d7_KjU() {
        return this.containerColor;
    }

    /* JADX INFO: renamed from: getPeriodSelectorBorderColor-0d7_KjU, reason: not valid java name */
    public final long m4095getPeriodSelectorBorderColor0d7_KjU() {
        return this.periodSelectorBorderColor;
    }

    /* JADX INFO: renamed from: getPeriodSelectorSelectedContainerColor-0d7_KjU, reason: not valid java name */
    public final long m4096getPeriodSelectorSelectedContainerColor0d7_KjU() {
        return this.periodSelectorSelectedContainerColor;
    }

    /* JADX INFO: renamed from: getPeriodSelectorSelectedContentColor-0d7_KjU, reason: not valid java name */
    public final long m4097getPeriodSelectorSelectedContentColor0d7_KjU() {
        return this.periodSelectorSelectedContentColor;
    }

    /* JADX INFO: renamed from: getPeriodSelectorUnselectedContainerColor-0d7_KjU, reason: not valid java name */
    public final long m4098getPeriodSelectorUnselectedContainerColor0d7_KjU() {
        return this.periodSelectorUnselectedContainerColor;
    }

    /* JADX INFO: renamed from: getPeriodSelectorUnselectedContentColor-0d7_KjU, reason: not valid java name */
    public final long m4099getPeriodSelectorUnselectedContentColor0d7_KjU() {
        return this.periodSelectorUnselectedContentColor;
    }

    /* JADX INFO: renamed from: getSelectorColor-0d7_KjU, reason: not valid java name */
    public final long m4100getSelectorColor0d7_KjU() {
        return this.selectorColor;
    }

    /* JADX INFO: renamed from: getTimeSelectorSelectedContainerColor-0d7_KjU, reason: not valid java name */
    public final long m4101getTimeSelectorSelectedContainerColor0d7_KjU() {
        return this.timeSelectorSelectedContainerColor;
    }

    /* JADX INFO: renamed from: getTimeSelectorSelectedContentColor-0d7_KjU, reason: not valid java name */
    public final long m4102getTimeSelectorSelectedContentColor0d7_KjU() {
        return this.timeSelectorSelectedContentColor;
    }

    /* JADX INFO: renamed from: getTimeSelectorUnselectedContainerColor-0d7_KjU, reason: not valid java name */
    public final long m4103getTimeSelectorUnselectedContainerColor0d7_KjU() {
        return this.timeSelectorUnselectedContainerColor;
    }

    /* JADX INFO: renamed from: getTimeSelectorUnselectedContentColor-0d7_KjU, reason: not valid java name */
    public final long m4104getTimeSelectorUnselectedContentColor0d7_KjU() {
        return this.timeSelectorUnselectedContentColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.timeSelectorUnselectedContentColor) + r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(Color.m6239hashCodeimpl(this.clockDialColor) * 31, 31, this.selectorColor), 31, this.containerColor), 31, this.periodSelectorBorderColor), 31, this.periodSelectorSelectedContainerColor), 31, this.periodSelectorUnselectedContainerColor), 31, this.periodSelectorSelectedContentColor), 31, this.periodSelectorUnselectedContentColor), 31, this.timeSelectorSelectedContainerColor), 31, this.timeSelectorUnselectedContainerColor), 31, this.timeSelectorSelectedContentColor);
    }

    /* JADX INFO: renamed from: periodSelectorContainerColor-vNxB06k$material3, reason: not valid java name */
    public final long m4105periodSelectorContainerColorvNxB06k$material3(boolean z) {
        return z ? this.periodSelectorSelectedContainerColor : this.periodSelectorUnselectedContainerColor;
    }

    /* JADX INFO: renamed from: periodSelectorContentColor-vNxB06k$material3, reason: not valid java name */
    public final long m4106periodSelectorContentColorvNxB06k$material3(boolean z) {
        return z ? this.periodSelectorSelectedContentColor : this.periodSelectorUnselectedContentColor;
    }

    /* JADX INFO: renamed from: timeSelectorContainerColor-vNxB06k$material3, reason: not valid java name */
    public final long m4107timeSelectorContainerColorvNxB06k$material3(boolean z) {
        return z ? this.timeSelectorSelectedContainerColor : this.timeSelectorUnselectedContainerColor;
    }

    /* JADX INFO: renamed from: timeSelectorContentColor-vNxB06k$material3, reason: not valid java name */
    public final long m4108timeSelectorContentColorvNxB06k$material3(boolean z) {
        return z ? this.timeSelectorSelectedContentColor : this.timeSelectorUnselectedContentColor;
    }

    public /* synthetic */ TimePickerColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, jh2 jh2Var) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14);
    }
}
