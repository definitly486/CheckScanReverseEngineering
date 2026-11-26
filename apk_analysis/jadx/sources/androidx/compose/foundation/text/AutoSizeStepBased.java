package androidx.compose.foundation.text;

import androidx.compose.foundation.text.modifiers.TextAutoSizeLayoutScope;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import defpackage.bg;
import defpackage.fg;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
final class AutoSizeStepBased implements TextAutoSize {
    private final long maxFontSize;
    private long minFontSize;
    private final long stepSize;

    private AutoSizeStepBased(long j, long j2, long j3) {
        this.minFontSize = j;
        this.maxFontSize = j2;
        this.stepSize = j3;
        TextUnit.Companion companion = TextUnit.Companion;
        if (TextUnit.m9233equalsimpl0(j, companion.m9247getUnspecifiedXSAIIZE())) {
            fg.c("AutoSize.StepBased: TextUnit.Unspecified is not a valid value for minFontSize. Try using other values e.g. 10.sp");
            throw null;
        }
        if (TextUnit.m9233equalsimpl0(j2, companion.m9247getUnspecifiedXSAIIZE())) {
            fg.c("AutoSize.StepBased: TextUnit.Unspecified is not a valid value for maxFontSize. Try using other values e.g. 100.sp");
            throw null;
        }
        if (TextUnit.m9233equalsimpl0(j3, companion.m9247getUnspecifiedXSAIIZE())) {
            fg.c("AutoSize.StepBased: TextUnit.Unspecified is not a valid value for stepSize. Try using other values e.g. 0.25.sp");
            throw null;
        }
        if (TextUnitType.m9264equalsimpl0(TextUnit.m9235getTypeUIouoOA(this.minFontSize), TextUnit.m9235getTypeUIouoOA(j2))) {
            long j4 = this.minFontSize;
            TextUnitKt.m9250checkArithmeticNB67dxo(j4, j2);
            if (Float.compare(TextUnit.m9236getValueimpl(j4), TextUnit.m9236getValueimpl(j2)) > 0) {
                this.minFontSize = j2;
            }
        }
        if (TextUnitType.m9264equalsimpl0(TextUnit.m9235getTypeUIouoOA(j3), TextUnitType.Companion.m9269getSpUIouoOA())) {
            long sp = TextUnitKt.getSp(1.0E-4f);
            TextUnitKt.m9250checkArithmeticNB67dxo(j3, sp);
            if (Float.compare(TextUnit.m9236getValueimpl(j3), TextUnit.m9236getValueimpl(sp)) < 0) {
                fg.c("AutoSize.StepBased: stepSize must be greater than or equal to 0.0001f.sp");
                throw null;
            }
        }
        if (TextUnit.m9236getValueimpl(this.minFontSize) < 0.0f) {
            fg.c("AutoSize.StepBased: minFontSize must not be negative");
            throw null;
        }
        if (TextUnit.m9236getValueimpl(j2) >= 0.0f) {
            return;
        }
        fg.c("AutoSize.StepBased: maxFontSize must not be negative");
        throw null;
    }

    private final boolean didOverflow(TextLayoutResult textLayoutResult) {
        int iM8458getOverflowgIe3tQ8 = textLayoutResult.getLayoutInput().m8458getOverflowgIe3tQ8();
        TextOverflow.Companion companion = TextOverflow.Companion;
        if (TextOverflow.m8968equalsimpl0(iM8458getOverflowgIe3tQ8, companion.m8977getClipgIe3tQ8()) || TextOverflow.m8968equalsimpl0(iM8458getOverflowgIe3tQ8, companion.m8981getVisiblegIe3tQ8())) {
            return didOverflowBounds(textLayoutResult);
        }
        if (TextOverflow.m8968equalsimpl0(iM8458getOverflowgIe3tQ8, companion.m8980getStartEllipsisgIe3tQ8()) || TextOverflow.m8968equalsimpl0(iM8458getOverflowgIe3tQ8, companion.m8979getMiddleEllipsisgIe3tQ8()) || TextOverflow.m8968equalsimpl0(iM8458getOverflowgIe3tQ8, companion.m8978getEllipsisgIe3tQ8())) {
            return didOverflowByEllipsize(textLayoutResult);
        }
        bg.h(TextOverflow.m8970toStringimpl(textLayoutResult.getLayoutInput().m8458getOverflowgIe3tQ8()), "TextOverflow type ", " is not supported.");
        return false;
    }

    private final boolean didOverflowBounds(TextLayoutResult textLayoutResult) {
        return textLayoutResult.getDidOverflowWidth() || textLayoutResult.getDidOverflowHeight();
    }

    private final boolean didOverflowByEllipsize(TextLayoutResult textLayoutResult) {
        int lineCount = textLayoutResult.getLineCount();
        if (lineCount == 0) {
            return false;
        }
        if (lineCount == 1) {
            return textLayoutResult.isLineEllipsized(0);
        }
        int iM8458getOverflowgIe3tQ8 = textLayoutResult.getLayoutInput().m8458getOverflowgIe3tQ8();
        TextOverflow.Companion companion = TextOverflow.Companion;
        if (TextOverflow.m8968equalsimpl0(iM8458getOverflowgIe3tQ8, companion.m8980getStartEllipsisgIe3tQ8()) || TextOverflow.m8968equalsimpl0(iM8458getOverflowgIe3tQ8, companion.m8979getMiddleEllipsisgIe3tQ8())) {
            return didOverflowBounds(textLayoutResult);
        }
        if (TextOverflow.m8968equalsimpl0(iM8458getOverflowgIe3tQ8, companion.m8978getEllipsisgIe3tQ8())) {
            return textLayoutResult.isLineEllipsized(textLayoutResult.getLineCount() - 1);
        }
        return false;
    }

    @Override // androidx.compose.foundation.text.TextAutoSize
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AutoSizeStepBased)) {
            return false;
        }
        AutoSizeStepBased autoSizeStepBased = (AutoSizeStepBased) obj;
        return TextUnit.m9233equalsimpl0(autoSizeStepBased.minFontSize, this.minFontSize) && TextUnit.m9233equalsimpl0(autoSizeStepBased.maxFontSize, this.maxFontSize) && TextUnit.m9233equalsimpl0(autoSizeStepBased.stepSize, this.stepSize);
    }

    @Override // androidx.compose.foundation.text.TextAutoSize
    /* JADX INFO: renamed from: getFontSize-Ci0_558, reason: not valid java name */
    public long mo2446getFontSizeCi0_558(TextAutoSizeLayoutScope textAutoSizeLayoutScope, long j, AnnotatedString annotatedString) {
        float fMo1433toPxR2X_6o = textAutoSizeLayoutScope.mo1433toPxR2X_6o(this.stepSize);
        float fMo1433toPxR2X_6o2 = textAutoSizeLayoutScope.mo1433toPxR2X_6o(this.minFontSize);
        float fMo1433toPxR2X_6o3 = textAutoSizeLayoutScope.mo1433toPxR2X_6o(this.maxFontSize);
        float f = (fMo1433toPxR2X_6o2 + fMo1433toPxR2X_6o3) / 2.0f;
        float f2 = fMo1433toPxR2X_6o2;
        float f3 = fMo1433toPxR2X_6o3;
        while (f3 - f2 >= fMo1433toPxR2X_6o) {
            if (didOverflow(textAutoSizeLayoutScope.mo2932performLayout5ZSfY2I(j, annotatedString, textAutoSizeLayoutScope.mo1437toSpkPz2Gy4(f)))) {
                f3 = f;
            } else {
                f2 = f;
            }
            f = (f2 + f3) / 2.0f;
        }
        float fFloor = (((float) Math.floor((f2 - fMo1433toPxR2X_6o2) / fMo1433toPxR2X_6o)) * fMo1433toPxR2X_6o) + fMo1433toPxR2X_6o2;
        float f4 = fMo1433toPxR2X_6o + fFloor;
        if (f4 <= fMo1433toPxR2X_6o3 && !didOverflow(textAutoSizeLayoutScope.mo2932performLayout5ZSfY2I(j, annotatedString, textAutoSizeLayoutScope.mo1437toSpkPz2Gy4(f4)))) {
            fFloor = f4;
        }
        return textAutoSizeLayoutScope.mo1437toSpkPz2Gy4(fFloor);
    }

    @Override // androidx.compose.foundation.text.TextAutoSize
    public int hashCode() {
        return TextUnit.m9237hashCodeimpl(this.stepSize) + ((TextUnit.m9237hashCodeimpl(this.maxFontSize) + (TextUnit.m9237hashCodeimpl(this.minFontSize) * 31)) * 31);
    }

    public /* synthetic */ AutoSizeStepBased(long j, long j2, long j3, jh2 jh2Var) {
        this(j, j2, j3);
    }
}
