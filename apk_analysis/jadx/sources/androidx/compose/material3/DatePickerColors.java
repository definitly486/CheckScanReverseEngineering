package androidx.compose.material3;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.r01;
import defpackage.s92;

/* JADX INFO: loaded from: classes2.dex */
public final class DatePickerColors {
    public static final int $stable = 0;
    private final long containerColor;
    private final long currentYearContentColor;
    private final TextFieldColors dateTextFieldColors;
    private final long dayContentColor;
    private final long dayInSelectionRangeContainerColor;
    private final long dayInSelectionRangeContentColor;
    private final long disabledDayContentColor;
    private final long disabledSelectedDayContainerColor;
    private final long disabledSelectedDayContentColor;
    private final long disabledSelectedYearContainerColor;
    private final long disabledSelectedYearContentColor;
    private final long disabledYearContentColor;
    private final long dividerColor;
    private final long headlineContentColor;
    private final long navigationContentColor;
    private final long selectedDayContainerColor;
    private final long selectedDayContentColor;
    private final long selectedYearContainerColor;
    private final long selectedYearContentColor;
    private final long subheadContentColor;
    private final long titleContentColor;
    private final long todayContentColor;
    private final long todayDateBorderColor;
    private final long weekdayContentColor;
    private final long yearContentColor;

    private DatePickerColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, TextFieldColors textFieldColors) {
        this.containerColor = j;
        this.titleContentColor = j2;
        this.headlineContentColor = j3;
        this.weekdayContentColor = j4;
        this.subheadContentColor = j5;
        this.navigationContentColor = j6;
        this.yearContentColor = j7;
        this.disabledYearContentColor = j8;
        this.currentYearContentColor = j9;
        this.selectedYearContentColor = j10;
        this.disabledSelectedYearContentColor = j11;
        this.selectedYearContainerColor = j12;
        this.disabledSelectedYearContainerColor = j13;
        this.dayContentColor = j14;
        this.disabledDayContentColor = j15;
        this.selectedDayContentColor = j16;
        this.disabledSelectedDayContentColor = j17;
        this.selectedDayContainerColor = j18;
        this.disabledSelectedDayContainerColor = j19;
        this.todayContentColor = j20;
        this.todayDateBorderColor = j21;
        this.dayInSelectionRangeContainerColor = j22;
        this.dayInSelectionRangeContentColor = j23;
        this.dividerColor = j24;
        this.dateTextFieldColors = textFieldColors;
    }

    /* JADX INFO: renamed from: copy-tNwlRmA, reason: not valid java name */
    public final DatePickerColors m3330copytNwlRmA(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, TextFieldColors textFieldColors) {
        return new DatePickerColors(j != 16 ? j : this.containerColor, j2 != 16 ? j2 : this.titleContentColor, j3 != 16 ? j3 : this.headlineContentColor, j4 != 16 ? j4 : this.weekdayContentColor, j5 != 16 ? j5 : this.subheadContentColor, j6 != 16 ? j6 : this.navigationContentColor, j7 != 16 ? j7 : this.yearContentColor, j8 != 16 ? j8 : this.disabledYearContentColor, j9 != 16 ? j9 : this.currentYearContentColor, j10 != 16 ? j10 : this.selectedYearContentColor, j11 != 16 ? j11 : this.disabledSelectedYearContentColor, j12 != 16 ? j12 : this.selectedYearContainerColor, j13 != 16 ? j13 : this.disabledSelectedYearContainerColor, j14 != 16 ? j14 : this.dayContentColor, j15 != 16 ? j15 : this.disabledDayContentColor, j16 != 16 ? j16 : this.selectedDayContentColor, j17 != 16 ? j17 : this.disabledSelectedDayContentColor, j18 != 16 ? j18 : this.selectedDayContainerColor, j19 != 16 ? j19 : this.disabledSelectedDayContainerColor, j20 != 16 ? j20 : this.todayContentColor, j21 != 16 ? j21 : this.todayDateBorderColor, j22 != 16 ? j22 : this.dayInSelectionRangeContainerColor, j23 != 16 ? j23 : this.dayInSelectionRangeContentColor, j24 != 16 ? j24 : this.dividerColor, takeOrElse$material3(textFieldColors, new s92(this, 0)), null);
    }

    public final State<Color> dayContainerColor$material3(boolean z, boolean z2, boolean z3, Composer composer, int i) {
        long jM6267getTransparent0d7_KjU;
        State<Color> stateRememberUpdatedState;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1240482658, i, -1, "androidx.compose.material3.DatePickerColors.dayContainerColor (DatePicker.kt:976)");
        }
        if (z) {
            jM6267getTransparent0d7_KjU = z2 ? this.selectedDayContainerColor : this.disabledSelectedDayContainerColor;
        } else {
            jM6267getTransparent0d7_KjU = Color.Companion.m6267getTransparent0d7_KjU();
        }
        long j = jM6267getTransparent0d7_KjU;
        if (z3) {
            composer.startReplaceGroup(-1319856736);
            stateRememberUpdatedState = SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(j, MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composer, 6), null, null, composer, 0, 12);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(-1319630064);
            stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m6222boximpl(j), composer, 0);
            composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateRememberUpdatedState;
    }

    public final State<Color> dayContentColor$material3(boolean z, boolean z2, boolean z3, boolean z4, Composer composer, int i) {
        long j;
        State<Color> stateM1161animateColorAsStateeuL9pac;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1233694918, i, -1, "androidx.compose.material3.DatePickerColors.dayContentColor (DatePicker.kt:940)");
        }
        if (z2 && z4) {
            j = this.selectedDayContentColor;
        } else if (z2 && !z4) {
            j = this.disabledSelectedDayContentColor;
        } else if (z3 && z4) {
            j = this.dayInSelectionRangeContentColor;
        } else if (z3 && !z4) {
            j = this.disabledDayContentColor;
        } else if (z && z4) {
            j = this.todayContentColor;
        } else {
            j = z4 ? this.dayContentColor : this.disabledDayContentColor;
        }
        long j2 = j;
        if (z3) {
            composer.startReplaceGroup(-969483020);
            stateM1161animateColorAsStateeuL9pac = SnapshotStateKt.rememberUpdatedState(Color.m6222boximpl(j2), composer, 0);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(-969417610);
            stateM1161animateColorAsStateeuL9pac = SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(j2, MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composer, 6), null, null, composer, 0, 12);
            composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateM1161animateColorAsStateeuL9pac;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DatePickerColors)) {
            return false;
        }
        DatePickerColors datePickerColors = (DatePickerColors) obj;
        return Color.m6233equalsimpl0(this.containerColor, datePickerColors.containerColor) && Color.m6233equalsimpl0(this.titleContentColor, datePickerColors.titleContentColor) && Color.m6233equalsimpl0(this.headlineContentColor, datePickerColors.headlineContentColor) && Color.m6233equalsimpl0(this.weekdayContentColor, datePickerColors.weekdayContentColor) && Color.m6233equalsimpl0(this.subheadContentColor, datePickerColors.subheadContentColor) && Color.m6233equalsimpl0(this.yearContentColor, datePickerColors.yearContentColor) && Color.m6233equalsimpl0(this.disabledYearContentColor, datePickerColors.disabledYearContentColor) && Color.m6233equalsimpl0(this.currentYearContentColor, datePickerColors.currentYearContentColor) && Color.m6233equalsimpl0(this.selectedYearContentColor, datePickerColors.selectedYearContentColor) && Color.m6233equalsimpl0(this.disabledSelectedYearContentColor, datePickerColors.disabledSelectedYearContentColor) && Color.m6233equalsimpl0(this.selectedYearContainerColor, datePickerColors.selectedYearContainerColor) && Color.m6233equalsimpl0(this.disabledSelectedYearContainerColor, datePickerColors.disabledSelectedYearContainerColor) && Color.m6233equalsimpl0(this.dayContentColor, datePickerColors.dayContentColor) && Color.m6233equalsimpl0(this.disabledDayContentColor, datePickerColors.disabledDayContentColor) && Color.m6233equalsimpl0(this.selectedDayContentColor, datePickerColors.selectedDayContentColor) && Color.m6233equalsimpl0(this.disabledSelectedDayContentColor, datePickerColors.disabledSelectedDayContentColor) && Color.m6233equalsimpl0(this.selectedDayContainerColor, datePickerColors.selectedDayContainerColor) && Color.m6233equalsimpl0(this.disabledSelectedDayContainerColor, datePickerColors.disabledSelectedDayContainerColor) && Color.m6233equalsimpl0(this.todayContentColor, datePickerColors.todayContentColor) && Color.m6233equalsimpl0(this.todayDateBorderColor, datePickerColors.todayDateBorderColor) && Color.m6233equalsimpl0(this.dayInSelectionRangeContainerColor, datePickerColors.dayInSelectionRangeContainerColor) && Color.m6233equalsimpl0(this.dayInSelectionRangeContentColor, datePickerColors.dayInSelectionRangeContentColor);
    }

    /* JADX INFO: renamed from: getContainerColor-0d7_KjU, reason: not valid java name */
    public final long m3331getContainerColor0d7_KjU() {
        return this.containerColor;
    }

    /* JADX INFO: renamed from: getCurrentYearContentColor-0d7_KjU, reason: not valid java name */
    public final long m3332getCurrentYearContentColor0d7_KjU() {
        return this.currentYearContentColor;
    }

    public final TextFieldColors getDateTextFieldColors() {
        return this.dateTextFieldColors;
    }

    /* JADX INFO: renamed from: getDayContentColor-0d7_KjU, reason: not valid java name */
    public final long m3333getDayContentColor0d7_KjU() {
        return this.dayContentColor;
    }

    /* JADX INFO: renamed from: getDayInSelectionRangeContainerColor-0d7_KjU, reason: not valid java name */
    public final long m3334getDayInSelectionRangeContainerColor0d7_KjU() {
        return this.dayInSelectionRangeContainerColor;
    }

    /* JADX INFO: renamed from: getDayInSelectionRangeContentColor-0d7_KjU, reason: not valid java name */
    public final long m3335getDayInSelectionRangeContentColor0d7_KjU() {
        return this.dayInSelectionRangeContentColor;
    }

    /* JADX INFO: renamed from: getDisabledDayContentColor-0d7_KjU, reason: not valid java name */
    public final long m3336getDisabledDayContentColor0d7_KjU() {
        return this.disabledDayContentColor;
    }

    /* JADX INFO: renamed from: getDisabledSelectedDayContainerColor-0d7_KjU, reason: not valid java name */
    public final long m3337getDisabledSelectedDayContainerColor0d7_KjU() {
        return this.disabledSelectedDayContainerColor;
    }

    /* JADX INFO: renamed from: getDisabledSelectedDayContentColor-0d7_KjU, reason: not valid java name */
    public final long m3338getDisabledSelectedDayContentColor0d7_KjU() {
        return this.disabledSelectedDayContentColor;
    }

    /* JADX INFO: renamed from: getDisabledSelectedYearContainerColor-0d7_KjU, reason: not valid java name */
    public final long m3339getDisabledSelectedYearContainerColor0d7_KjU() {
        return this.disabledSelectedYearContainerColor;
    }

    /* JADX INFO: renamed from: getDisabledSelectedYearContentColor-0d7_KjU, reason: not valid java name */
    public final long m3340getDisabledSelectedYearContentColor0d7_KjU() {
        return this.disabledSelectedYearContentColor;
    }

    /* JADX INFO: renamed from: getDisabledYearContentColor-0d7_KjU, reason: not valid java name */
    public final long m3341getDisabledYearContentColor0d7_KjU() {
        return this.disabledYearContentColor;
    }

    /* JADX INFO: renamed from: getDividerColor-0d7_KjU, reason: not valid java name */
    public final long m3342getDividerColor0d7_KjU() {
        return this.dividerColor;
    }

    /* JADX INFO: renamed from: getHeadlineContentColor-0d7_KjU, reason: not valid java name */
    public final long m3343getHeadlineContentColor0d7_KjU() {
        return this.headlineContentColor;
    }

    /* JADX INFO: renamed from: getNavigationContentColor-0d7_KjU, reason: not valid java name */
    public final long m3344getNavigationContentColor0d7_KjU() {
        return this.navigationContentColor;
    }

    /* JADX INFO: renamed from: getSelectedDayContainerColor-0d7_KjU, reason: not valid java name */
    public final long m3345getSelectedDayContainerColor0d7_KjU() {
        return this.selectedDayContainerColor;
    }

    /* JADX INFO: renamed from: getSelectedDayContentColor-0d7_KjU, reason: not valid java name */
    public final long m3346getSelectedDayContentColor0d7_KjU() {
        return this.selectedDayContentColor;
    }

    /* JADX INFO: renamed from: getSelectedYearContainerColor-0d7_KjU, reason: not valid java name */
    public final long m3347getSelectedYearContainerColor0d7_KjU() {
        return this.selectedYearContainerColor;
    }

    /* JADX INFO: renamed from: getSelectedYearContentColor-0d7_KjU, reason: not valid java name */
    public final long m3348getSelectedYearContentColor0d7_KjU() {
        return this.selectedYearContentColor;
    }

    /* JADX INFO: renamed from: getSubheadContentColor-0d7_KjU, reason: not valid java name */
    public final long m3349getSubheadContentColor0d7_KjU() {
        return this.subheadContentColor;
    }

    /* JADX INFO: renamed from: getTitleContentColor-0d7_KjU, reason: not valid java name */
    public final long m3350getTitleContentColor0d7_KjU() {
        return this.titleContentColor;
    }

    /* JADX INFO: renamed from: getTodayContentColor-0d7_KjU, reason: not valid java name */
    public final long m3351getTodayContentColor0d7_KjU() {
        return this.todayContentColor;
    }

    /* JADX INFO: renamed from: getTodayDateBorderColor-0d7_KjU, reason: not valid java name */
    public final long m3352getTodayDateBorderColor0d7_KjU() {
        return this.todayDateBorderColor;
    }

    /* JADX INFO: renamed from: getWeekdayContentColor-0d7_KjU, reason: not valid java name */
    public final long m3353getWeekdayContentColor0d7_KjU() {
        return this.weekdayContentColor;
    }

    /* JADX INFO: renamed from: getYearContentColor-0d7_KjU, reason: not valid java name */
    public final long m3354getYearContentColor0d7_KjU() {
        return this.yearContentColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.dayInSelectionRangeContentColor) + r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(Color.m6239hashCodeimpl(this.containerColor) * 31, 31, this.titleContentColor), 31, this.headlineContentColor), 31, this.weekdayContentColor), 31, this.subheadContentColor), 31, this.yearContentColor), 31, this.disabledYearContentColor), 31, this.currentYearContentColor), 31, this.selectedYearContentColor), 31, this.disabledSelectedYearContentColor), 31, this.selectedYearContainerColor), 31, this.disabledSelectedYearContainerColor), 31, this.dayContentColor), 31, this.disabledDayContentColor), 31, this.selectedDayContentColor), 31, this.disabledSelectedDayContentColor), 31, this.selectedDayContainerColor), 31, this.disabledSelectedDayContainerColor), 31, this.todayContentColor), 31, this.todayDateBorderColor), 31, this.dayInSelectionRangeContainerColor);
    }

    public final TextFieldColors takeOrElse$material3(TextFieldColors textFieldColors, ll3<TextFieldColors> ll3Var) {
        return textFieldColors == null ? ll3Var.invoke() : textFieldColors;
    }

    public final State<Color> yearContainerColor$material3(boolean z, boolean z2, Composer composer, int i) {
        long jM6267getTransparent0d7_KjU;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1306331107, i, -1, "androidx.compose.material3.DatePickerColors.yearContainerColor (DatePicker.kt:1030)");
        }
        if (z) {
            jM6267getTransparent0d7_KjU = z2 ? this.selectedYearContainerColor : this.disabledSelectedYearContainerColor;
        } else {
            jM6267getTransparent0d7_KjU = Color.Companion.m6267getTransparent0d7_KjU();
        }
        State<Color> stateM1161animateColorAsStateeuL9pac = SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(jM6267getTransparent0d7_KjU, MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composer, 6), null, null, composer, 0, 12);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateM1161animateColorAsStateeuL9pac;
    }

    public final State<Color> yearContentColor$material3(boolean z, boolean z2, boolean z3, Composer composer, int i) {
        long j;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(874111097, i, -1, "androidx.compose.material3.DatePickerColors.yearContentColor (DatePicker.kt:1006)");
        }
        if (z2 && z3) {
            j = this.selectedYearContentColor;
        } else if (z2 && !z3) {
            j = this.disabledSelectedYearContentColor;
        } else if (z && z3) {
            j = this.currentYearContentColor;
        } else {
            j = z3 ? this.yearContentColor : this.disabledYearContentColor;
        }
        State<Color> stateM1161animateColorAsStateeuL9pac = SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(j, MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composer, 6), null, null, composer, 0, 12);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateM1161animateColorAsStateeuL9pac;
    }

    public /* synthetic */ DatePickerColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, TextFieldColors textFieldColors, jh2 jh2Var) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, textFieldColors);
    }
}
