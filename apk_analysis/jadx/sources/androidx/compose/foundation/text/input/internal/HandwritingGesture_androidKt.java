package androidx.compose.foundation.text.input.internal;

import android.graphics.PointF;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextGranularity;
import androidx.compose.ui.text.TextInclusionStrategy;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.EditingBuffer;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes.dex */
public final class HandwritingGesture_androidKt {
    private static final int LINE_FEED_CODE_POINT = 10;
    private static final int NBSP_CODE_POINT = 160;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: adjustHandwritingDeleteGestureRange-72CqOWE, reason: not valid java name */
    public static final long m2719adjustHandwritingDeleteGestureRange72CqOWE(long j, CharSequence charSequence) {
        int iM8491getStartimpl = TextRange.m8491getStartimpl(j);
        int iM8486getEndimpl = TextRange.m8486getEndimpl(j);
        int iCodePointBefore = iM8491getStartimpl > 0 ? Character.codePointBefore(charSequence, iM8491getStartimpl) : 10;
        int iCodePointAt = iM8486getEndimpl < charSequence.length() ? Character.codePointAt(charSequence, iM8486getEndimpl) : 10;
        if (isWhitespaceExceptNewline(iCodePointBefore) && (isWhitespace(iCodePointAt) || isPunctuation(iCodePointAt))) {
            do {
                iM8491getStartimpl -= Character.charCount(iCodePointBefore);
                if (iM8491getStartimpl == 0) {
                    break;
                }
                iCodePointBefore = Character.codePointBefore(charSequence, iM8491getStartimpl);
            } while (isWhitespaceExceptNewline(iCodePointBefore));
            return TextRangeKt.TextRange(iM8491getStartimpl, iM8486getEndimpl);
        }
        if (!isWhitespaceExceptNewline(iCodePointAt)) {
            return j;
        }
        if (!isWhitespace(iCodePointBefore) && !isPunctuation(iCodePointBefore)) {
            return j;
        }
        do {
            iM8486getEndimpl += Character.charCount(iCodePointAt);
            if (iM8486getEndimpl == charSequence.length()) {
                break;
            }
            iCodePointAt = Character.codePointAt(charSequence, iM8486getEndimpl);
        } while (isWhitespaceExceptNewline(iCodePointAt));
        return TextRangeKt.TextRange(iM8491getStartimpl, iM8486getEndimpl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EditCommand compoundEditCommand(final EditCommand... editCommandArr) {
        return new EditCommand() { // from class: androidx.compose.foundation.text.input.internal.HandwritingGesture_androidKt.compoundEditCommand.1
            @Override // androidx.compose.ui.text.input.EditCommand
            public void applyTo(EditingBuffer editingBuffer) {
                for (EditCommand editCommand : editCommandArr) {
                    editCommand.applyTo(editingBuffer);
                }
            }
        };
    }

    /* JADX INFO: renamed from: enclosure-pWDy79M, reason: not valid java name */
    private static final long m2720enclosurepWDy79M(long j, long j2) {
        return TextRangeKt.TextRange(Math.min(TextRange.m8491getStartimpl(j), TextRange.m8491getStartimpl(j)), Math.max(TextRange.m8486getEndimpl(j2), TextRange.m8486getEndimpl(j2)));
    }

    /* JADX INFO: renamed from: getLineForHandwritingGesture-d-4ec7I, reason: not valid java name */
    private static final int m2721getLineForHandwritingGestured4ec7I(MultiParagraph multiParagraph, long j, ViewConfiguration viewConfiguration) {
        float handwritingGestureLineMargin = viewConfiguration != null ? viewConfiguration.getHandwritingGestureLineMargin() : 0.0f;
        int i = (int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j);
        int lineForVerticalPosition = multiParagraph.getLineForVerticalPosition(Float.intBitsToFloat(i));
        if (Float.intBitsToFloat(i) >= multiParagraph.getLineTop(lineForVerticalPosition) - handwritingGestureLineMargin && Float.intBitsToFloat(i) <= multiParagraph.getLineBottom(lineForVerticalPosition) + handwritingGestureLineMargin) {
            int i2 = (int) (j >> 32);
            if (Float.intBitsToFloat(i2) >= (-handwritingGestureLineMargin) && Float.intBitsToFloat(i2) <= multiParagraph.getWidth() + handwritingGestureLineMargin) {
                return lineForVerticalPosition;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getOffsetForHandwritingGesture-d-4ec7I, reason: not valid java name */
    public static final int m2722getOffsetForHandwritingGestured4ec7I(LegacyTextFieldState legacyTextFieldState, long j, ViewConfiguration viewConfiguration) {
        TextLayoutResult value;
        MultiParagraph multiParagraph;
        TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
        if (layoutResult == null || (value = layoutResult.getValue()) == null || (multiParagraph = value.getMultiParagraph()) == null) {
            return -1;
        }
        return m2724getOffsetForHandwritingGestureubNVwUQ(multiParagraph, j, legacyTextFieldState.getLayoutCoordinates(), viewConfiguration);
    }

    /* JADX INFO: renamed from: getOffsetForHandwritingGesture-ubNVwUQ, reason: not valid java name */
    private static final int m2724getOffsetForHandwritingGestureubNVwUQ(MultiParagraph multiParagraph, long j, LayoutCoordinates layoutCoordinates, ViewConfiguration viewConfiguration) {
        long jMo7716screenToLocalMKHz9U;
        int iM2721getLineForHandwritingGestured4ec7I;
        if (layoutCoordinates == null || (iM2721getLineForHandwritingGestured4ec7I = m2721getLineForHandwritingGestured4ec7I(multiParagraph, (jMo7716screenToLocalMKHz9U = layoutCoordinates.mo7716screenToLocalMKHz9U(j)), viewConfiguration)) == -1) {
            return -1;
        }
        return multiParagraph.m8352getOffsetForPositionk4lQ0M(Offset.m5981copydBAh8RU$default(jMo7716screenToLocalMKHz9U, 0.0f, (multiParagraph.getLineBottom(iM2721getLineForHandwritingGestured4ec7I) + multiParagraph.getLineTop(iM2721getLineForHandwritingGestured4ec7I)) / 2.0f, 1, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getRangeForRemoveSpaceGesture-5iVPX68, reason: not valid java name */
    public static final long m2725getRangeForRemoveSpaceGesture5iVPX68(TextLayoutResult textLayoutResult, long j, long j2, LayoutCoordinates layoutCoordinates, ViewConfiguration viewConfiguration) {
        if (textLayoutResult == null || layoutCoordinates == null) {
            return TextRange.Companion.m8496getZerod9O1mEE();
        }
        long jMo7716screenToLocalMKHz9U = layoutCoordinates.mo7716screenToLocalMKHz9U(j);
        long jMo7716screenToLocalMKHz9U2 = layoutCoordinates.mo7716screenToLocalMKHz9U(j2);
        int iM2721getLineForHandwritingGestured4ec7I = m2721getLineForHandwritingGestured4ec7I(textLayoutResult.getMultiParagraph(), jMo7716screenToLocalMKHz9U, viewConfiguration);
        int iM2721getLineForHandwritingGestured4ec7I2 = m2721getLineForHandwritingGestured4ec7I(textLayoutResult.getMultiParagraph(), jMo7716screenToLocalMKHz9U2, viewConfiguration);
        if (iM2721getLineForHandwritingGestured4ec7I != -1) {
            if (iM2721getLineForHandwritingGestured4ec7I2 != -1) {
                iM2721getLineForHandwritingGestured4ec7I = Math.min(iM2721getLineForHandwritingGestured4ec7I, iM2721getLineForHandwritingGestured4ec7I2);
            }
            iM2721getLineForHandwritingGestured4ec7I2 = iM2721getLineForHandwritingGestured4ec7I;
        } else if (iM2721getLineForHandwritingGestured4ec7I2 == -1) {
            return TextRange.Companion.m8496getZerod9O1mEE();
        }
        float lineBottom = (textLayoutResult.getLineBottom(iM2721getLineForHandwritingGestured4ec7I2) + textLayoutResult.getLineTop(iM2721getLineForHandwritingGestured4ec7I2)) / 2.0f;
        int i = (int) (jMo7716screenToLocalMKHz9U >> 32);
        int i2 = (int) (jMo7716screenToLocalMKHz9U2 >> 32);
        return textLayoutResult.getMultiParagraph().m8353getRangeForRect86BmAI(new Rect(Math.min(Float.intBitsToFloat(i), Float.intBitsToFloat(i2)), lineBottom - 0.1f, Math.max(Float.intBitsToFloat(i), Float.intBitsToFloat(i2)), lineBottom + 0.1f), TextGranularity.Companion.m8453getCharacterDRrd7Zo(), TextInclusionStrategy.Companion.getAnyOverlap());
    }

    /* JADX INFO: renamed from: getRangeForScreenRect-O048IG0, reason: not valid java name */
    private static final long m2726getRangeForScreenRectO048IG0(MultiParagraph multiParagraph, Rect rect, LayoutCoordinates layoutCoordinates, int i, TextInclusionStrategy textInclusionStrategy) {
        return (multiParagraph == null || layoutCoordinates == null) ? TextRange.Companion.m8496getZerod9O1mEE() : multiParagraph.m8353getRangeForRect86BmAI(rect.m6024translatek4lQ0M(layoutCoordinates.mo7716screenToLocalMKHz9U(Offset.Companion.m6003getZeroF1C5BW0())), i, textInclusionStrategy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getRangeForScreenRect-OH9lIzo, reason: not valid java name */
    public static final long m2727getRangeForScreenRectOH9lIzo(LegacyTextFieldState legacyTextFieldState, Rect rect, int i, TextInclusionStrategy textInclusionStrategy) {
        TextLayoutResult value;
        TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
        return m2726getRangeForScreenRectO048IG0((layoutResult == null || (value = layoutResult.getValue()) == null) ? null : value.getMultiParagraph(), rect, legacyTextFieldState.getLayoutCoordinates(), i, textInclusionStrategy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getRangeForScreenRects-O048IG0, reason: not valid java name */
    public static final long m2730getRangeForScreenRectsO048IG0(TextLayoutState textLayoutState, Rect rect, Rect rect2, int i, TextInclusionStrategy textInclusionStrategy) {
        long jM2728getRangeForScreenRectOH9lIzo = m2728getRangeForScreenRectOH9lIzo(textLayoutState, rect, i, textInclusionStrategy);
        if (TextRange.m8485getCollapsedimpl(jM2728getRangeForScreenRectOH9lIzo)) {
            return TextRange.Companion.m8496getZerod9O1mEE();
        }
        long jM2728getRangeForScreenRectOH9lIzo2 = m2728getRangeForScreenRectOH9lIzo(textLayoutState, rect2, i, textInclusionStrategy);
        return TextRange.m8485getCollapsedimpl(jM2728getRangeForScreenRectOH9lIzo2) ? TextRange.Companion.m8496getZerod9O1mEE() : m2720enclosurepWDy79M(jM2728getRangeForScreenRectOH9lIzo, jM2728getRangeForScreenRectOH9lIzo2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isBiDiBoundary(TextLayoutResult textLayoutResult, int i) {
        int lineForOffset = textLayoutResult.getLineForOffset(i);
        if (i == textLayoutResult.getLineStart(lineForOffset) || i == TextLayoutResult.getLineEnd$default(textLayoutResult, lineForOffset, false, 2, null)) {
            return textLayoutResult.getParagraphDirection(i) != textLayoutResult.getBidiRunDirection(i);
        }
        return textLayoutResult.getBidiRunDirection(i) != textLayoutResult.getBidiRunDirection(i - 1);
    }

    private static final boolean isNewline(int i) {
        int type = Character.getType(i);
        return type == 14 || type == 13 || i == 10;
    }

    private static final boolean isPunctuation(int i) {
        int type = Character.getType(i);
        return type == 23 || type == 20 || type == 22 || type == 30 || type == 29 || type == 24 || type == 21;
    }

    private static final boolean isWhitespace(int i) {
        return Character.isWhitespace(i) || i == 160;
    }

    private static final boolean isWhitespaceExceptNewline(int i) {
        return isWhitespace(i) && !isNewline(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long rangeOfWhitespaces(CharSequence charSequence, int i) {
        int iCharCount = i;
        while (iCharCount > 0) {
            int iCodePointBefore = CodepointHelpers_jvmAndAndroidKt.codePointBefore(charSequence, iCharCount);
            if (!isWhitespace(iCodePointBefore)) {
                break;
            }
            iCharCount -= Character.charCount(iCodePointBefore);
        }
        while (i < charSequence.length()) {
            int iCodePointAt = CodepointHelpers_jvmAndAndroidKt.codePointAt(charSequence, i);
            if (!isWhitespace(iCodePointAt)) {
                break;
            }
            i += CodepointHelpers_jvmAndAndroidKt.charCount(iCodePointAt);
        }
        return TextRangeKt.TextRange(iCharCount, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long toOffset(PointF pointF) {
        float f = pointF.x;
        float f2 = pointF.y;
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getRangeForScreenRect-OH9lIzo, reason: not valid java name */
    public static final long m2728getRangeForScreenRectOH9lIzo(TextLayoutState textLayoutState, Rect rect, int i, TextInclusionStrategy textInclusionStrategy) {
        TextLayoutResult layoutResult = textLayoutState.getLayoutResult();
        return m2726getRangeForScreenRectO048IG0(layoutResult != null ? layoutResult.getMultiParagraph() : null, rect, textLayoutState.getTextLayoutNodeCoordinates(), i, textInclusionStrategy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getOffsetForHandwritingGesture-d-4ec7I, reason: not valid java name */
    public static final int m2723getOffsetForHandwritingGestured4ec7I(TextLayoutState textLayoutState, long j, ViewConfiguration viewConfiguration) {
        MultiParagraph multiParagraph;
        TextLayoutResult layoutResult = textLayoutState.getLayoutResult();
        if (layoutResult == null || (multiParagraph = layoutResult.getMultiParagraph()) == null) {
            return -1;
        }
        return m2724getOffsetForHandwritingGestureubNVwUQ(multiParagraph, j, textLayoutState.getTextLayoutNodeCoordinates(), viewConfiguration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getRangeForScreenRects-O048IG0, reason: not valid java name */
    public static final long m2729getRangeForScreenRectsO048IG0(LegacyTextFieldState legacyTextFieldState, Rect rect, Rect rect2, int i, TextInclusionStrategy textInclusionStrategy) {
        long jM2727getRangeForScreenRectOH9lIzo = m2727getRangeForScreenRectOH9lIzo(legacyTextFieldState, rect, i, textInclusionStrategy);
        if (TextRange.m8485getCollapsedimpl(jM2727getRangeForScreenRectOH9lIzo)) {
            return TextRange.Companion.m8496getZerod9O1mEE();
        }
        long jM2727getRangeForScreenRectOH9lIzo2 = m2727getRangeForScreenRectOH9lIzo(legacyTextFieldState, rect2, i, textInclusionStrategy);
        return TextRange.m8485getCollapsedimpl(jM2727getRangeForScreenRectOH9lIzo2) ? TextRange.Companion.m8496getZerod9O1mEE() : m2720enclosurepWDy79M(jM2727getRangeForScreenRectOH9lIzo, jM2727getRangeForScreenRectOH9lIzo2);
    }
}
