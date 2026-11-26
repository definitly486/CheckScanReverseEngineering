package androidx.compose.foundation.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.aa4;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TextLayoutHelperKt {
    /* JADX INFO: renamed from: canReuse-7_7YC6M, reason: not valid java name */
    public static final boolean m2624canReuse7_7YC6M(TextLayoutResult textLayoutResult, AnnotatedString annotatedString, TextStyle textStyle, List<AnnotatedString.Range<Placeholder>> list, int i, boolean z, int i2, Density density, LayoutDirection layoutDirection, FontFamily.Resolver resolver, long j) {
        TextLayoutInput layoutInput = textLayoutResult.getLayoutInput();
        if (textLayoutResult.getMultiParagraph().getIntrinsics().getHasStaleResolvedFonts() || !aa4.e(layoutInput.getText(), annotatedString) || !layoutInput.getStyle().hasSameLayoutAffectingAttributes(textStyle) || !aa4.e(layoutInput.getPlaceholders(), list) || layoutInput.getMaxLines() != i || layoutInput.getSoftWrap() != z || !TextOverflow.m8968equalsimpl0(layoutInput.m8458getOverflowgIe3tQ8(), i2) || !aa4.e(layoutInput.getDensity(), density) || layoutInput.getLayoutDirection() != layoutDirection || !aa4.e(layoutInput.getFontFamilyResolver(), resolver) || Constraints.m8997getMinWidthimpl(j) != Constraints.m8997getMinWidthimpl(layoutInput.m8457getConstraintsmsEJaDk())) {
            return false;
        }
        if (z || TextOverflow.m8968equalsimpl0(i2, TextOverflow.Companion.m8978getEllipsisgIe3tQ8())) {
            return Constraints.m8995getMaxWidthimpl(j) == Constraints.m8995getMaxWidthimpl(layoutInput.m8457getConstraintsmsEJaDk()) && Constraints.m8994getMaxHeightimpl(j) == Constraints.m8994getMaxHeightimpl(layoutInput.m8457getConstraintsmsEJaDk());
        }
        return true;
    }

    public static final float getLineHeight(TextLayoutResult textLayoutResult, int i) {
        if (i < 0 || textLayoutResult.getLayoutInput().getText().length() == 0) {
            return 0.0f;
        }
        int iMin = Math.min(textLayoutResult.getMultiParagraph().getLineForOffset(i), Math.min(textLayoutResult.getMultiParagraph().getMaxLines() - 1, textLayoutResult.getMultiParagraph().getLineCount() - 1));
        if (i > MultiParagraph.getLineEnd$default(textLayoutResult.getMultiParagraph(), iMin, false, 2, null)) {
            return 0.0f;
        }
        return textLayoutResult.getMultiParagraph().getLineHeight(iMin);
    }

    /* JADX INFO: renamed from: isPositionInsideSelection-uaM50fQ, reason: not valid java name */
    public static final boolean m2625isPositionInsideSelectionuaM50fQ(TextLayoutResult textLayoutResult, long j, TextRange textRange) {
        if (textRange == null || TextRange.m8485getCollapsedimpl(textRange.m8495unboximpl())) {
            return false;
        }
        int iM8461getOffsetForPositionk4lQ0M = textLayoutResult.m8461getOffsetForPositionk4lQ0M(j);
        return isPositionInsideSelection_uaM50fQ$isOffsetSelectedAndContainsPosition(textRange, textLayoutResult, j, iM8461getOffsetForPositionk4lQ0M) || isPositionInsideSelection_uaM50fQ$isOffsetSelectedAndContainsPosition(textRange, textLayoutResult, j, iM8461getOffsetForPositionk4lQ0M - 1);
    }

    private static final boolean isPositionInsideSelection_uaM50fQ$isOffsetSelectedAndContainsPosition(TextRange textRange, TextLayoutResult textLayoutResult, long j, int i) {
        return TextRange.m8482containsimpl(textRange.m8495unboximpl(), i) && textLayoutResult.getBoundingBox(i).m6013containsk4lQ0M(j);
    }
}
