package androidx.compose.material3;

import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.ui.graphics.Color;
import defpackage.aa4;
import defpackage.d84;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.r01;

/* JADX INFO: loaded from: classes2.dex */
public final class TextFieldColors {
    public static final int $stable = 0;
    private final long cursorColor;
    private final long disabledContainerColor;
    private final long disabledIndicatorColor;
    private final long disabledLabelColor;
    private final long disabledLeadingIconColor;
    private final long disabledPlaceholderColor;
    private final long disabledPrefixColor;
    private final long disabledSuffixColor;
    private final long disabledSupportingTextColor;
    private final long disabledTextColor;
    private final long disabledTrailingIconColor;
    private final long errorContainerColor;
    private final long errorCursorColor;
    private final long errorIndicatorColor;
    private final long errorLabelColor;
    private final long errorLeadingIconColor;
    private final long errorPlaceholderColor;
    private final long errorPrefixColor;
    private final long errorSuffixColor;
    private final long errorSupportingTextColor;
    private final long errorTextColor;
    private final long errorTrailingIconColor;
    private final long focusedContainerColor;
    private final long focusedIndicatorColor;
    private final long focusedLabelColor;
    private final long focusedLeadingIconColor;
    private final long focusedPlaceholderColor;
    private final long focusedPrefixColor;
    private final long focusedSuffixColor;
    private final long focusedSupportingTextColor;
    private final long focusedTextColor;
    private final long focusedTrailingIconColor;
    private final TextSelectionColors textSelectionColors;
    private final long unfocusedContainerColor;
    private final long unfocusedIndicatorColor;
    private final long unfocusedLabelColor;
    private final long unfocusedLeadingIconColor;
    private final long unfocusedPlaceholderColor;
    private final long unfocusedPrefixColor;
    private final long unfocusedSuffixColor;
    private final long unfocusedSupportingTextColor;
    private final long unfocusedTextColor;
    private final long unfocusedTrailingIconColor;

    private TextFieldColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, TextSelectionColors textSelectionColors, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42) {
        this.focusedTextColor = j;
        this.unfocusedTextColor = j2;
        this.disabledTextColor = j3;
        this.errorTextColor = j4;
        this.focusedContainerColor = j5;
        this.unfocusedContainerColor = j6;
        this.disabledContainerColor = j7;
        this.errorContainerColor = j8;
        this.cursorColor = j9;
        this.errorCursorColor = j10;
        this.textSelectionColors = textSelectionColors;
        this.focusedIndicatorColor = j11;
        this.unfocusedIndicatorColor = j12;
        this.disabledIndicatorColor = j13;
        this.errorIndicatorColor = j14;
        this.focusedLeadingIconColor = j15;
        this.unfocusedLeadingIconColor = j16;
        this.disabledLeadingIconColor = j17;
        this.errorLeadingIconColor = j18;
        this.focusedTrailingIconColor = j19;
        this.unfocusedTrailingIconColor = j20;
        this.disabledTrailingIconColor = j21;
        this.errorTrailingIconColor = j22;
        this.focusedLabelColor = j23;
        this.unfocusedLabelColor = j24;
        this.disabledLabelColor = j25;
        this.errorLabelColor = j26;
        this.focusedPlaceholderColor = j27;
        this.unfocusedPlaceholderColor = j28;
        this.disabledPlaceholderColor = j29;
        this.errorPlaceholderColor = j30;
        this.focusedSupportingTextColor = j31;
        this.unfocusedSupportingTextColor = j32;
        this.disabledSupportingTextColor = j33;
        this.errorSupportingTextColor = j34;
        this.focusedPrefixColor = j35;
        this.unfocusedPrefixColor = j36;
        this.disabledPrefixColor = j37;
        this.errorPrefixColor = j38;
        this.focusedSuffixColor = j39;
        this.unfocusedSuffixColor = j40;
        this.disabledSuffixColor = j41;
        this.errorSuffixColor = j42;
    }

    /* JADX INFO: renamed from: containerColor-XeAY9LY$material3, reason: not valid java name */
    public final long m4000containerColorXeAY9LY$material3(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return this.disabledContainerColor;
        }
        if (z2) {
            return this.errorContainerColor;
        }
        return z3 ? this.focusedContainerColor : this.unfocusedContainerColor;
    }

    /* JADX INFO: renamed from: copy-ejIjP34, reason: not valid java name */
    public final TextFieldColors m4001copyejIjP34(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, TextSelectionColors textSelectionColors, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42) {
        return new TextFieldColors(j != 16 ? j : this.focusedTextColor, j2 != 16 ? j2 : this.unfocusedTextColor, j3 != 16 ? j3 : this.disabledTextColor, j4 != 16 ? j4 : this.errorTextColor, j5 != 16 ? j5 : this.focusedContainerColor, j6 != 16 ? j6 : this.unfocusedContainerColor, j7 != 16 ? j7 : this.disabledContainerColor, j8 != 16 ? j8 : this.errorContainerColor, j9 != 16 ? j9 : this.cursorColor, j10 != 16 ? j10 : this.errorCursorColor, takeOrElse$material3(textSelectionColors, new d84(this, 3)), j11 != 16 ? j11 : this.focusedIndicatorColor, j12 != 16 ? j12 : this.unfocusedIndicatorColor, j13 != 16 ? j13 : this.disabledIndicatorColor, j14 != 16 ? j14 : this.errorIndicatorColor, j15 != 16 ? j15 : this.focusedLeadingIconColor, j16 != 16 ? j16 : this.unfocusedLeadingIconColor, j17 != 16 ? j17 : this.disabledLeadingIconColor, j18 != 16 ? j18 : this.errorLeadingIconColor, j19 != 16 ? j19 : this.focusedTrailingIconColor, j20 != 16 ? j20 : this.unfocusedTrailingIconColor, j21 != 16 ? j21 : this.disabledTrailingIconColor, j22 != 16 ? j22 : this.errorTrailingIconColor, j23 != 16 ? j23 : this.focusedLabelColor, j24 != 16 ? j24 : this.unfocusedLabelColor, j25 != 16 ? j25 : this.disabledLabelColor, j26 != 16 ? j26 : this.errorLabelColor, j27 != 16 ? j27 : this.focusedPlaceholderColor, j28 != 16 ? j28 : this.unfocusedPlaceholderColor, j29 != 16 ? j29 : this.disabledPlaceholderColor, j30 != 16 ? j30 : this.errorPlaceholderColor, j31 != 16 ? j31 : this.focusedSupportingTextColor, j32 != 16 ? j32 : this.unfocusedSupportingTextColor, j33 != 16 ? j33 : this.disabledSupportingTextColor, j34 != 16 ? j34 : this.errorSupportingTextColor, j35 != 16 ? j35 : this.focusedPrefixColor, j36 != 16 ? j36 : this.unfocusedPrefixColor, j37 != 16 ? j37 : this.disabledPrefixColor, j38 != 16 ? j38 : this.errorPrefixColor, j39 != 16 ? j39 : this.focusedSuffixColor, j40 != 16 ? j40 : this.unfocusedSuffixColor, j41 != 16 ? j41 : this.disabledSuffixColor, j42 != 16 ? j42 : this.errorSuffixColor, null);
    }

    /* JADX INFO: renamed from: cursorColor-vNxB06k$material3, reason: not valid java name */
    public final long m4002cursorColorvNxB06k$material3(boolean z) {
        return z ? this.errorCursorColor : this.cursorColor;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof TextFieldColors)) {
            return false;
        }
        TextFieldColors textFieldColors = (TextFieldColors) obj;
        return Color.m6233equalsimpl0(this.focusedTextColor, textFieldColors.focusedTextColor) && Color.m6233equalsimpl0(this.unfocusedTextColor, textFieldColors.unfocusedTextColor) && Color.m6233equalsimpl0(this.disabledTextColor, textFieldColors.disabledTextColor) && Color.m6233equalsimpl0(this.errorTextColor, textFieldColors.errorTextColor) && Color.m6233equalsimpl0(this.focusedContainerColor, textFieldColors.focusedContainerColor) && Color.m6233equalsimpl0(this.unfocusedContainerColor, textFieldColors.unfocusedContainerColor) && Color.m6233equalsimpl0(this.disabledContainerColor, textFieldColors.disabledContainerColor) && Color.m6233equalsimpl0(this.errorContainerColor, textFieldColors.errorContainerColor) && Color.m6233equalsimpl0(this.cursorColor, textFieldColors.cursorColor) && Color.m6233equalsimpl0(this.errorCursorColor, textFieldColors.errorCursorColor) && aa4.e(this.textSelectionColors, textFieldColors.textSelectionColors) && Color.m6233equalsimpl0(this.focusedIndicatorColor, textFieldColors.focusedIndicatorColor) && Color.m6233equalsimpl0(this.unfocusedIndicatorColor, textFieldColors.unfocusedIndicatorColor) && Color.m6233equalsimpl0(this.disabledIndicatorColor, textFieldColors.disabledIndicatorColor) && Color.m6233equalsimpl0(this.errorIndicatorColor, textFieldColors.errorIndicatorColor) && Color.m6233equalsimpl0(this.focusedLeadingIconColor, textFieldColors.focusedLeadingIconColor) && Color.m6233equalsimpl0(this.unfocusedLeadingIconColor, textFieldColors.unfocusedLeadingIconColor) && Color.m6233equalsimpl0(this.disabledLeadingIconColor, textFieldColors.disabledLeadingIconColor) && Color.m6233equalsimpl0(this.errorLeadingIconColor, textFieldColors.errorLeadingIconColor) && Color.m6233equalsimpl0(this.focusedTrailingIconColor, textFieldColors.focusedTrailingIconColor) && Color.m6233equalsimpl0(this.unfocusedTrailingIconColor, textFieldColors.unfocusedTrailingIconColor) && Color.m6233equalsimpl0(this.disabledTrailingIconColor, textFieldColors.disabledTrailingIconColor) && Color.m6233equalsimpl0(this.errorTrailingIconColor, textFieldColors.errorTrailingIconColor) && Color.m6233equalsimpl0(this.focusedLabelColor, textFieldColors.focusedLabelColor) && Color.m6233equalsimpl0(this.unfocusedLabelColor, textFieldColors.unfocusedLabelColor) && Color.m6233equalsimpl0(this.disabledLabelColor, textFieldColors.disabledLabelColor) && Color.m6233equalsimpl0(this.errorLabelColor, textFieldColors.errorLabelColor) && Color.m6233equalsimpl0(this.focusedPlaceholderColor, textFieldColors.focusedPlaceholderColor) && Color.m6233equalsimpl0(this.unfocusedPlaceholderColor, textFieldColors.unfocusedPlaceholderColor) && Color.m6233equalsimpl0(this.disabledPlaceholderColor, textFieldColors.disabledPlaceholderColor) && Color.m6233equalsimpl0(this.errorPlaceholderColor, textFieldColors.errorPlaceholderColor) && Color.m6233equalsimpl0(this.focusedSupportingTextColor, textFieldColors.focusedSupportingTextColor) && Color.m6233equalsimpl0(this.unfocusedSupportingTextColor, textFieldColors.unfocusedSupportingTextColor) && Color.m6233equalsimpl0(this.disabledSupportingTextColor, textFieldColors.disabledSupportingTextColor) && Color.m6233equalsimpl0(this.errorSupportingTextColor, textFieldColors.errorSupportingTextColor) && Color.m6233equalsimpl0(this.focusedPrefixColor, textFieldColors.focusedPrefixColor) && Color.m6233equalsimpl0(this.unfocusedPrefixColor, textFieldColors.unfocusedPrefixColor) && Color.m6233equalsimpl0(this.disabledPrefixColor, textFieldColors.disabledPrefixColor) && Color.m6233equalsimpl0(this.errorPrefixColor, textFieldColors.errorPrefixColor) && Color.m6233equalsimpl0(this.focusedSuffixColor, textFieldColors.focusedSuffixColor) && Color.m6233equalsimpl0(this.unfocusedSuffixColor, textFieldColors.unfocusedSuffixColor) && Color.m6233equalsimpl0(this.disabledSuffixColor, textFieldColors.disabledSuffixColor) && Color.m6233equalsimpl0(this.errorSuffixColor, textFieldColors.errorSuffixColor);
    }

    /* JADX INFO: renamed from: getCursorColor-0d7_KjU, reason: not valid java name */
    public final long m4003getCursorColor0d7_KjU() {
        return this.cursorColor;
    }

    /* JADX INFO: renamed from: getDisabledContainerColor-0d7_KjU, reason: not valid java name */
    public final long m4004getDisabledContainerColor0d7_KjU() {
        return this.disabledContainerColor;
    }

    /* JADX INFO: renamed from: getDisabledIndicatorColor-0d7_KjU, reason: not valid java name */
    public final long m4005getDisabledIndicatorColor0d7_KjU() {
        return this.disabledIndicatorColor;
    }

    /* JADX INFO: renamed from: getDisabledLabelColor-0d7_KjU, reason: not valid java name */
    public final long m4006getDisabledLabelColor0d7_KjU() {
        return this.disabledLabelColor;
    }

    /* JADX INFO: renamed from: getDisabledLeadingIconColor-0d7_KjU, reason: not valid java name */
    public final long m4007getDisabledLeadingIconColor0d7_KjU() {
        return this.disabledLeadingIconColor;
    }

    /* JADX INFO: renamed from: getDisabledPlaceholderColor-0d7_KjU, reason: not valid java name */
    public final long m4008getDisabledPlaceholderColor0d7_KjU() {
        return this.disabledPlaceholderColor;
    }

    /* JADX INFO: renamed from: getDisabledPrefixColor-0d7_KjU, reason: not valid java name */
    public final long m4009getDisabledPrefixColor0d7_KjU() {
        return this.disabledPrefixColor;
    }

    /* JADX INFO: renamed from: getDisabledSuffixColor-0d7_KjU, reason: not valid java name */
    public final long m4010getDisabledSuffixColor0d7_KjU() {
        return this.disabledSuffixColor;
    }

    /* JADX INFO: renamed from: getDisabledSupportingTextColor-0d7_KjU, reason: not valid java name */
    public final long m4011getDisabledSupportingTextColor0d7_KjU() {
        return this.disabledSupportingTextColor;
    }

    /* JADX INFO: renamed from: getDisabledTextColor-0d7_KjU, reason: not valid java name */
    public final long m4012getDisabledTextColor0d7_KjU() {
        return this.disabledTextColor;
    }

    /* JADX INFO: renamed from: getDisabledTrailingIconColor-0d7_KjU, reason: not valid java name */
    public final long m4013getDisabledTrailingIconColor0d7_KjU() {
        return this.disabledTrailingIconColor;
    }

    /* JADX INFO: renamed from: getErrorContainerColor-0d7_KjU, reason: not valid java name */
    public final long m4014getErrorContainerColor0d7_KjU() {
        return this.errorContainerColor;
    }

    /* JADX INFO: renamed from: getErrorCursorColor-0d7_KjU, reason: not valid java name */
    public final long m4015getErrorCursorColor0d7_KjU() {
        return this.errorCursorColor;
    }

    /* JADX INFO: renamed from: getErrorIndicatorColor-0d7_KjU, reason: not valid java name */
    public final long m4016getErrorIndicatorColor0d7_KjU() {
        return this.errorIndicatorColor;
    }

    /* JADX INFO: renamed from: getErrorLabelColor-0d7_KjU, reason: not valid java name */
    public final long m4017getErrorLabelColor0d7_KjU() {
        return this.errorLabelColor;
    }

    /* JADX INFO: renamed from: getErrorLeadingIconColor-0d7_KjU, reason: not valid java name */
    public final long m4018getErrorLeadingIconColor0d7_KjU() {
        return this.errorLeadingIconColor;
    }

    /* JADX INFO: renamed from: getErrorPlaceholderColor-0d7_KjU, reason: not valid java name */
    public final long m4019getErrorPlaceholderColor0d7_KjU() {
        return this.errorPlaceholderColor;
    }

    /* JADX INFO: renamed from: getErrorPrefixColor-0d7_KjU, reason: not valid java name */
    public final long m4020getErrorPrefixColor0d7_KjU() {
        return this.errorPrefixColor;
    }

    /* JADX INFO: renamed from: getErrorSuffixColor-0d7_KjU, reason: not valid java name */
    public final long m4021getErrorSuffixColor0d7_KjU() {
        return this.errorSuffixColor;
    }

    /* JADX INFO: renamed from: getErrorSupportingTextColor-0d7_KjU, reason: not valid java name */
    public final long m4022getErrorSupportingTextColor0d7_KjU() {
        return this.errorSupportingTextColor;
    }

    /* JADX INFO: renamed from: getErrorTextColor-0d7_KjU, reason: not valid java name */
    public final long m4023getErrorTextColor0d7_KjU() {
        return this.errorTextColor;
    }

    /* JADX INFO: renamed from: getErrorTrailingIconColor-0d7_KjU, reason: not valid java name */
    public final long m4024getErrorTrailingIconColor0d7_KjU() {
        return this.errorTrailingIconColor;
    }

    /* JADX INFO: renamed from: getFocusedContainerColor-0d7_KjU, reason: not valid java name */
    public final long m4025getFocusedContainerColor0d7_KjU() {
        return this.focusedContainerColor;
    }

    /* JADX INFO: renamed from: getFocusedIndicatorColor-0d7_KjU, reason: not valid java name */
    public final long m4026getFocusedIndicatorColor0d7_KjU() {
        return this.focusedIndicatorColor;
    }

    /* JADX INFO: renamed from: getFocusedLabelColor-0d7_KjU, reason: not valid java name */
    public final long m4027getFocusedLabelColor0d7_KjU() {
        return this.focusedLabelColor;
    }

    /* JADX INFO: renamed from: getFocusedLeadingIconColor-0d7_KjU, reason: not valid java name */
    public final long m4028getFocusedLeadingIconColor0d7_KjU() {
        return this.focusedLeadingIconColor;
    }

    /* JADX INFO: renamed from: getFocusedPlaceholderColor-0d7_KjU, reason: not valid java name */
    public final long m4029getFocusedPlaceholderColor0d7_KjU() {
        return this.focusedPlaceholderColor;
    }

    /* JADX INFO: renamed from: getFocusedPrefixColor-0d7_KjU, reason: not valid java name */
    public final long m4030getFocusedPrefixColor0d7_KjU() {
        return this.focusedPrefixColor;
    }

    /* JADX INFO: renamed from: getFocusedSuffixColor-0d7_KjU, reason: not valid java name */
    public final long m4031getFocusedSuffixColor0d7_KjU() {
        return this.focusedSuffixColor;
    }

    /* JADX INFO: renamed from: getFocusedSupportingTextColor-0d7_KjU, reason: not valid java name */
    public final long m4032getFocusedSupportingTextColor0d7_KjU() {
        return this.focusedSupportingTextColor;
    }

    /* JADX INFO: renamed from: getFocusedTextColor-0d7_KjU, reason: not valid java name */
    public final long m4033getFocusedTextColor0d7_KjU() {
        return this.focusedTextColor;
    }

    /* JADX INFO: renamed from: getFocusedTrailingIconColor-0d7_KjU, reason: not valid java name */
    public final long m4034getFocusedTrailingIconColor0d7_KjU() {
        return this.focusedTrailingIconColor;
    }

    public final TextSelectionColors getTextSelectionColors() {
        return this.textSelectionColors;
    }

    /* JADX INFO: renamed from: getUnfocusedContainerColor-0d7_KjU, reason: not valid java name */
    public final long m4035getUnfocusedContainerColor0d7_KjU() {
        return this.unfocusedContainerColor;
    }

    /* JADX INFO: renamed from: getUnfocusedIndicatorColor-0d7_KjU, reason: not valid java name */
    public final long m4036getUnfocusedIndicatorColor0d7_KjU() {
        return this.unfocusedIndicatorColor;
    }

    /* JADX INFO: renamed from: getUnfocusedLabelColor-0d7_KjU, reason: not valid java name */
    public final long m4037getUnfocusedLabelColor0d7_KjU() {
        return this.unfocusedLabelColor;
    }

    /* JADX INFO: renamed from: getUnfocusedLeadingIconColor-0d7_KjU, reason: not valid java name */
    public final long m4038getUnfocusedLeadingIconColor0d7_KjU() {
        return this.unfocusedLeadingIconColor;
    }

    /* JADX INFO: renamed from: getUnfocusedPlaceholderColor-0d7_KjU, reason: not valid java name */
    public final long m4039getUnfocusedPlaceholderColor0d7_KjU() {
        return this.unfocusedPlaceholderColor;
    }

    /* JADX INFO: renamed from: getUnfocusedPrefixColor-0d7_KjU, reason: not valid java name */
    public final long m4040getUnfocusedPrefixColor0d7_KjU() {
        return this.unfocusedPrefixColor;
    }

    /* JADX INFO: renamed from: getUnfocusedSuffixColor-0d7_KjU, reason: not valid java name */
    public final long m4041getUnfocusedSuffixColor0d7_KjU() {
        return this.unfocusedSuffixColor;
    }

    /* JADX INFO: renamed from: getUnfocusedSupportingTextColor-0d7_KjU, reason: not valid java name */
    public final long m4042getUnfocusedSupportingTextColor0d7_KjU() {
        return this.unfocusedSupportingTextColor;
    }

    /* JADX INFO: renamed from: getUnfocusedTextColor-0d7_KjU, reason: not valid java name */
    public final long m4043getUnfocusedTextColor0d7_KjU() {
        return this.unfocusedTextColor;
    }

    /* JADX INFO: renamed from: getUnfocusedTrailingIconColor-0d7_KjU, reason: not valid java name */
    public final long m4044getUnfocusedTrailingIconColor0d7_KjU() {
        return this.unfocusedTrailingIconColor;
    }

    public int hashCode() {
        return Color.m6239hashCodeimpl(this.errorSuffixColor) + r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b((this.textSelectionColors.hashCode() + r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(r01.b(Color.m6239hashCodeimpl(this.focusedTextColor) * 31, 31, this.unfocusedTextColor), 31, this.disabledTextColor), 31, this.errorTextColor), 31, this.focusedContainerColor), 31, this.unfocusedContainerColor), 31, this.disabledContainerColor), 31, this.errorContainerColor), 31, this.cursorColor), 31, this.errorCursorColor)) * 31, 31, this.focusedIndicatorColor), 31, this.unfocusedIndicatorColor), 31, this.disabledIndicatorColor), 31, this.errorIndicatorColor), 31, this.focusedLeadingIconColor), 31, this.unfocusedLeadingIconColor), 31, this.disabledLeadingIconColor), 31, this.errorLeadingIconColor), 31, this.focusedTrailingIconColor), 31, this.unfocusedTrailingIconColor), 31, this.disabledTrailingIconColor), 31, this.errorTrailingIconColor), 31, this.focusedLabelColor), 31, this.unfocusedLabelColor), 31, this.disabledLabelColor), 31, this.errorLabelColor), 31, this.focusedPlaceholderColor), 31, this.unfocusedPlaceholderColor), 31, this.disabledPlaceholderColor), 31, this.errorPlaceholderColor), 31, this.focusedSupportingTextColor), 31, this.unfocusedSupportingTextColor), 31, this.disabledSupportingTextColor), 31, this.errorSupportingTextColor), 31, this.focusedPrefixColor), 31, this.unfocusedPrefixColor), 31, this.disabledPrefixColor), 31, this.errorPrefixColor), 31, this.focusedSuffixColor), 31, this.unfocusedSuffixColor), 31, this.disabledSuffixColor);
    }

    /* JADX INFO: renamed from: indicatorColor-XeAY9LY$material3, reason: not valid java name */
    public final long m4045indicatorColorXeAY9LY$material3(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return this.disabledIndicatorColor;
        }
        if (z2) {
            return this.errorIndicatorColor;
        }
        return z3 ? this.focusedIndicatorColor : this.unfocusedIndicatorColor;
    }

    /* JADX INFO: renamed from: labelColor-XeAY9LY$material3, reason: not valid java name */
    public final long m4046labelColorXeAY9LY$material3(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return this.disabledLabelColor;
        }
        if (z2) {
            return this.errorLabelColor;
        }
        return z3 ? this.focusedLabelColor : this.unfocusedLabelColor;
    }

    /* JADX INFO: renamed from: leadingIconColor-XeAY9LY$material3, reason: not valid java name */
    public final long m4047leadingIconColorXeAY9LY$material3(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return this.disabledLeadingIconColor;
        }
        if (z2) {
            return this.errorLeadingIconColor;
        }
        return z3 ? this.focusedLeadingIconColor : this.unfocusedLeadingIconColor;
    }

    /* JADX INFO: renamed from: placeholderColor-XeAY9LY$material3, reason: not valid java name */
    public final long m4048placeholderColorXeAY9LY$material3(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return this.disabledPlaceholderColor;
        }
        if (z2) {
            return this.errorPlaceholderColor;
        }
        return z3 ? this.focusedPlaceholderColor : this.unfocusedPlaceholderColor;
    }

    /* JADX INFO: renamed from: prefixColor-XeAY9LY$material3, reason: not valid java name */
    public final long m4049prefixColorXeAY9LY$material3(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return this.disabledPrefixColor;
        }
        if (z2) {
            return this.errorPrefixColor;
        }
        return z3 ? this.focusedPrefixColor : this.unfocusedPrefixColor;
    }

    /* JADX INFO: renamed from: suffixColor-XeAY9LY$material3, reason: not valid java name */
    public final long m4050suffixColorXeAY9LY$material3(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return this.disabledSuffixColor;
        }
        if (z2) {
            return this.errorSuffixColor;
        }
        return z3 ? this.focusedSuffixColor : this.unfocusedSuffixColor;
    }

    /* JADX INFO: renamed from: supportingTextColor-XeAY9LY$material3, reason: not valid java name */
    public final long m4051supportingTextColorXeAY9LY$material3(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return this.disabledSupportingTextColor;
        }
        if (z2) {
            return this.errorSupportingTextColor;
        }
        return z3 ? this.focusedSupportingTextColor : this.unfocusedSupportingTextColor;
    }

    public final TextSelectionColors takeOrElse$material3(TextSelectionColors textSelectionColors, ll3<TextSelectionColors> ll3Var) {
        return textSelectionColors == null ? ll3Var.invoke() : textSelectionColors;
    }

    /* JADX INFO: renamed from: textColor-XeAY9LY$material3, reason: not valid java name */
    public final long m4052textColorXeAY9LY$material3(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return this.disabledTextColor;
        }
        if (z2) {
            return this.errorTextColor;
        }
        return z3 ? this.focusedTextColor : this.unfocusedTextColor;
    }

    /* JADX INFO: renamed from: trailingIconColor-XeAY9LY$material3, reason: not valid java name */
    public final long m4053trailingIconColorXeAY9LY$material3(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return this.disabledTrailingIconColor;
        }
        if (z2) {
            return this.errorTrailingIconColor;
        }
        return z3 ? this.focusedTrailingIconColor : this.unfocusedTrailingIconColor;
    }

    public /* synthetic */ TextFieldColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, TextSelectionColors textSelectionColors, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, jh2 jh2Var) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, textSelectionColors, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, j34, j35, j36, j37, j38, j39, j40, j41, j42);
    }
}
