package androidx.compose.foundation.text.input.internal.selection;

import androidx.compose.foundation.text.StringHelpersKt;
import androidx.compose.foundation.text.StringHelpers_androidKt;
import androidx.compose.foundation.text.input.TextFieldCharSequence;
import androidx.compose.foundation.text.input.internal.SelectionWedgeAffinity;
import androidx.compose.foundation.text.input.internal.TransformedTextFieldState;
import androidx.compose.foundation.text.input.internal.WedgeAffinity;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class SelectionMovementDeletionContext {
    public static final int NoCharacterFound = -1;
    private final TextFieldCharSequence initialValue;
    private final SelectionWedgeAffinity initialWedgeAffinity;
    private final boolean isFromSoftKeyboard;
    private long selection;
    private final TransformedTextFieldState state;
    private final String text;
    private final TextLayoutResult textLayoutResult;
    private final TextFieldPreparedSelectionState textPreparedSelectionState;
    private final float visibleTextLayoutHeight;
    private WedgeAffinity wedgeAffinity;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    public SelectionMovementDeletionContext(TransformedTextFieldState transformedTextFieldState, TextLayoutResult textLayoutResult, boolean z, float f, TextFieldPreparedSelectionState textFieldPreparedSelectionState) {
        this.state = transformedTextFieldState;
        this.textLayoutResult = textLayoutResult;
        this.isFromSoftKeyboard = z;
        this.visibleTextLayoutHeight = f;
        this.textPreparedSelectionState = textFieldPreparedSelectionState;
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            TextFieldCharSequence visualText = transformedTextFieldState.getVisualText();
            this.initialValue = visualText;
            this.initialWedgeAffinity = transformedTextFieldState.getSelectionWedgeAffinity();
            j59 j59Var = j59.a;
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            this.selection = visualText.m2665getSelectiond9O1mEE();
            this.text = visualText.getText().toString();
        } catch (Throwable th) {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            throw th;
        }
    }

    private final SelectionMovementDeletionContext applyIfNotEmpty(boolean z, nl3<? super SelectionMovementDeletionContext, j59> nl3Var) {
        if (z) {
            this.textPreparedSelectionState.resetCachedX();
        }
        if (this.text.length() > 0) {
            nl3Var.invoke(this);
        }
        return this;
    }

    public static /* synthetic */ SelectionMovementDeletionContext applyIfNotEmpty$default(SelectionMovementDeletionContext selectionMovementDeletionContext, boolean z, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if (z) {
            selectionMovementDeletionContext.textPreparedSelectionState.resetCachedX();
        }
        if (selectionMovementDeletionContext.text.length() > 0) {
            nl3Var.invoke(selectionMovementDeletionContext);
        }
        return selectionMovementDeletionContext;
    }

    private final int charOffset(int i) {
        int length = this.text.length() - 1;
        return i > length ? length : i;
    }

    private final int getLineEndByOffsetForLayout(TextLayoutResult textLayoutResult, int i) {
        return textLayoutResult.getLineEnd(textLayoutResult.getLineForOffset(i), true);
    }

    public static /* synthetic */ int getLineEndByOffsetForLayout$default(SelectionMovementDeletionContext selectionMovementDeletionContext, TextLayoutResult textLayoutResult, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = TextRange.m8488getMaximpl(selectionMovementDeletionContext.selection);
        }
        return selectionMovementDeletionContext.getLineEndByOffsetForLayout(textLayoutResult, i);
    }

    private final int getLineStartByOffsetForLayout(TextLayoutResult textLayoutResult, int i) {
        return textLayoutResult.getLineStart(textLayoutResult.getLineForOffset(i));
    }

    public static /* synthetic */ int getLineStartByOffsetForLayout$default(SelectionMovementDeletionContext selectionMovementDeletionContext, TextLayoutResult textLayoutResult, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = TextRange.m8489getMinimpl(selectionMovementDeletionContext.selection);
        }
        return selectionMovementDeletionContext.getLineStartByOffsetForLayout(textLayoutResult, i);
    }

    private final int getNextWordOffsetForLayout(TextLayoutResult textLayoutResult, int i) {
        while (i < this.initialValue.length()) {
            long jM8463getWordBoundaryjx7JFs = textLayoutResult.m8463getWordBoundaryjx7JFs(charOffset(i));
            if (TextRange.m8486getEndimpl(jM8463getWordBoundaryjx7JFs) > i) {
                return TextRange.m8486getEndimpl(jM8463getWordBoundaryjx7JFs);
            }
            i++;
        }
        return this.initialValue.length();
    }

    public static /* synthetic */ int getNextWordOffsetForLayout$default(SelectionMovementDeletionContext selectionMovementDeletionContext, TextLayoutResult textLayoutResult, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = TextRange.m8486getEndimpl(selectionMovementDeletionContext.selection);
        }
        return selectionMovementDeletionContext.getNextWordOffsetForLayout(textLayoutResult, i);
    }

    private final int getPrevWordOffsetForLayout(TextLayoutResult textLayoutResult, int i) {
        while (i > 0) {
            long jM8463getWordBoundaryjx7JFs = textLayoutResult.m8463getWordBoundaryjx7JFs(charOffset(i));
            if (TextRange.m8491getStartimpl(jM8463getWordBoundaryjx7JFs) < i) {
                return TextRange.m8491getStartimpl(jM8463getWordBoundaryjx7JFs);
            }
            i--;
        }
        return 0;
    }

    public static /* synthetic */ int getPrevWordOffsetForLayout$default(SelectionMovementDeletionContext selectionMovementDeletionContext, TextLayoutResult textLayoutResult, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = TextRange.m8486getEndimpl(selectionMovementDeletionContext.selection);
        }
        return selectionMovementDeletionContext.getPrevWordOffsetForLayout(textLayoutResult, i);
    }

    private final boolean isLtr() {
        ResolvedTextDirection paragraphDirection;
        TextLayoutResult textLayoutResult = this.textLayoutResult;
        return textLayoutResult == null || (paragraphDirection = textLayoutResult.getParagraphDirection(TextRange.m8486getEndimpl(this.selection))) == null || paragraphDirection == ResolvedTextDirection.Ltr;
    }

    private final int jumpByLinesOffset(TextLayoutResult textLayoutResult, int i) {
        int iM8486getEndimpl = TextRange.m8486getEndimpl(this.selection);
        if (Float.isNaN(this.textPreparedSelectionState.getCachedX())) {
            this.textPreparedSelectionState.setCachedX(textLayoutResult.getCursorRect(iM8486getEndimpl).getLeft());
        }
        int lineForOffset = textLayoutResult.getLineForOffset(iM8486getEndimpl) + i;
        if (lineForOffset < 0) {
            return Integer.MIN_VALUE;
        }
        if (lineForOffset >= textLayoutResult.getLineCount()) {
            return Integer.MAX_VALUE;
        }
        float lineBottom = textLayoutResult.getLineBottom(lineForOffset) - 1.0f;
        float cachedX = this.textPreparedSelectionState.getCachedX();
        if ((isLtr() && cachedX >= textLayoutResult.getLineRight(lineForOffset)) || (!isLtr() && cachedX <= textLayoutResult.getLineLeft(lineForOffset))) {
            return textLayoutResult.getLineEnd(lineForOffset, true);
        }
        return textLayoutResult.m8461getOffsetForPositionk4lQ0M(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(cachedX)) << 32) | (((long) Float.floatToRawIntBits(lineBottom)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    private final int jumpByPagesOffset(int i) {
        int iM8486getEndimpl = TextRange.m8486getEndimpl(this.initialValue.m2665getSelectiond9O1mEE());
        if (this.textLayoutResult == null || Float.isNaN(this.visibleTextLayoutHeight)) {
            return iM8486getEndimpl;
        }
        Rect rectTranslate = this.textLayoutResult.getCursorRect(iM8486getEndimpl).translate(0.0f, this.visibleTextLayoutHeight * i);
        float lineBottom = this.textLayoutResult.getLineBottom(this.textLayoutResult.getLineForVerticalPosition(rectTranslate.getTop()));
        float fAbs = Math.abs(rectTranslate.getTop() - lineBottom);
        float fAbs2 = Math.abs(rectTranslate.getBottom() - lineBottom);
        TextLayoutResult textLayoutResult = this.textLayoutResult;
        return fAbs > fAbs2 ? textLayoutResult.m8461getOffsetForPositionk4lQ0M(rectTranslate.m6022getTopLeftF1C5BW0()) : textLayoutResult.m8461getOffsetForPositionk4lQ0M(rectTranslate.m6015getBottomLeftF1C5BW0());
    }

    private final SelectionMovementDeletionContext moveCursorTo(boolean z, ll3<Integer> ll3Var) {
        if (z) {
            this.textPreparedSelectionState.resetCachedX();
        }
        if (this.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(m2858getSelectiond9O1mEE());
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(ll3Var.invoke().intValue(), iM8486getEndimpl, this.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(m2858getSelectiond9O1mEE())) {
                m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return this;
    }

    public static /* synthetic */ SelectionMovementDeletionContext moveCursorTo$default(SelectionMovementDeletionContext selectionMovementDeletionContext, boolean z, ll3 ll3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if (z) {
            selectionMovementDeletionContext.textPreparedSelectionState.resetCachedX();
        }
        if (selectionMovementDeletionContext.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(selectionMovementDeletionContext.m2858getSelectiond9O1mEE());
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(((Number) ll3Var.invoke()).intValue(), iM8486getEndimpl, selectionMovementDeletionContext.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(selectionMovementDeletionContext.m2858getSelectiond9O1mEE())) {
                selectionMovementDeletionContext.m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                selectionMovementDeletionContext.setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return selectionMovementDeletionContext;
    }

    public final SelectionMovementDeletionContext collapseLeftOr(nl3<? super SelectionMovementDeletionContext, j59> nl3Var) {
        this.textPreparedSelectionState.resetCachedX();
        if (this.text.length() > 0) {
            if (TextRange.m8485getCollapsedimpl(this.selection)) {
                nl3Var.invoke(this);
                return this;
            }
            boolean zIsLtr = isLtr();
            long j = this.selection;
            if (zIsLtr) {
                this.selection = TextRangeKt.TextRange(TextRange.m8489getMinimpl(j));
                return this;
            }
            this.selection = TextRangeKt.TextRange(TextRange.m8488getMaximpl(j));
        }
        return this;
    }

    public final SelectionMovementDeletionContext collapseRightOr(nl3<? super SelectionMovementDeletionContext, j59> nl3Var) {
        this.textPreparedSelectionState.resetCachedX();
        if (this.text.length() > 0) {
            if (TextRange.m8485getCollapsedimpl(this.selection)) {
                nl3Var.invoke(this);
                return this;
            }
            boolean zIsLtr = isLtr();
            long j = this.selection;
            if (zIsLtr) {
                this.selection = TextRangeKt.TextRange(TextRange.m8488getMaximpl(j));
                return this;
            }
            this.selection = TextRangeKt.TextRange(TextRange.m8489getMinimpl(j));
        }
        return this;
    }

    public final SelectionMovementDeletionContext deleteMovement() {
        if (this.text.length() > 0) {
            boolean zM8485getCollapsedimpl = TextRange.m8485getCollapsedimpl(this.initialValue.m2665getSelectiond9O1mEE());
            TransformedTextFieldState transformedTextFieldState = this.state;
            if (zM8485getCollapsedimpl) {
                TransformedTextFieldState.m2830replaceTextM8tDOmk$default(transformedTextFieldState, "", TextRangeKt.TextRange(TextRange.m8491getStartimpl(this.initialValue.m2665getSelectiond9O1mEE()), TextRange.m8486getEndimpl(this.selection)), null, !this.isFromSoftKeyboard, 4, null);
            } else {
                transformedTextFieldState.deleteSelectedText();
            }
            this.selection = this.state.getVisualText().m2665getSelectiond9O1mEE();
            this.wedgeAffinity = WedgeAffinity.Start;
        }
        return this;
    }

    public final SelectionMovementDeletionContext deselect() {
        this.textPreparedSelectionState.resetCachedX();
        if (this.text.length() > 0) {
            this.selection = TextRangeKt.TextRange(TextRange.m8486getEndimpl(this.selection));
        }
        return this;
    }

    public final TextFieldCharSequence getInitialValue() {
        return this.initialValue;
    }

    public final SelectionWedgeAffinity getInitialWedgeAffinity() {
        return this.initialWedgeAffinity;
    }

    public final int getNextCharacterIndex() {
        return StringHelpers_androidKt.findFollowingBreak(this.text, TextRange.m8486getEndimpl(this.selection));
    }

    public final int getPrecedingCharacterIndex() {
        return StringHelpers_androidKt.findPrecedingBreak(this.text, TextRange.m8486getEndimpl(this.selection));
    }

    /* JADX INFO: renamed from: getSelection-d9O1mEE, reason: not valid java name */
    public final long m2858getSelectiond9O1mEE() {
        return this.selection;
    }

    public final WedgeAffinity getWedgeAffinity() {
        return this.wedgeAffinity;
    }

    public final SelectionMovementDeletionContext moveCursorDownByLine() {
        TextLayoutResult textLayoutResult = this.textLayoutResult;
        int iJumpByLinesOffset = textLayoutResult != null ? jumpByLinesOffset(textLayoutResult, 1) : Integer.MAX_VALUE;
        if (iJumpByLinesOffset == Integer.MAX_VALUE) {
            this.textPreparedSelectionState.resetCachedX();
        }
        if (this.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(m2858getSelectiond9O1mEE());
            int length = this.text.length();
            if (iJumpByLinesOffset > length) {
                iJumpByLinesOffset = length;
            }
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(iJumpByLinesOffset, iM8486getEndimpl, this.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(m2858getSelectiond9O1mEE())) {
                m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return this;
    }

    public final SelectionMovementDeletionContext moveCursorDownByPage() {
        if (this.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(m2858getSelectiond9O1mEE());
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(jumpByPagesOffset(1), iM8486getEndimpl, this.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(m2858getSelectiond9O1mEE())) {
                m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return this;
    }

    public final SelectionMovementDeletionContext moveCursorLeftByChar() {
        return isLtr() ? moveCursorPrevByChar() : moveCursorNextByChar();
    }

    public final SelectionMovementDeletionContext moveCursorLeftByWord() {
        return isLtr() ? moveCursorPrevByWord() : moveCursorNextByWord();
    }

    public final SelectionMovementDeletionContext moveCursorNextByChar() {
        this.textPreparedSelectionState.resetCachedX();
        if (this.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(m2858getSelectiond9O1mEE());
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(StringHelpers_androidKt.findFollowingBreak(this.text, TextRange.m8486getEndimpl(this.selection)), iM8486getEndimpl, this.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(m2858getSelectiond9O1mEE())) {
                m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return this;
    }

    public final SelectionMovementDeletionContext moveCursorNextByParagraph() {
        this.textPreparedSelectionState.resetCachedX();
        if (this.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(m2858getSelectiond9O1mEE());
            int iFindParagraphEnd = StringHelpersKt.findParagraphEnd(this.text, TextRange.m8488getMaximpl(this.selection));
            if (iFindParagraphEnd == TextRange.m8488getMaximpl(this.selection) && iFindParagraphEnd != this.text.length()) {
                iFindParagraphEnd = StringHelpersKt.findParagraphEnd(this.text, iFindParagraphEnd + 1);
            }
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(iFindParagraphEnd, iM8486getEndimpl, this.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(m2858getSelectiond9O1mEE())) {
                m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return this;
    }

    public final SelectionMovementDeletionContext moveCursorNextByWord() {
        this.textPreparedSelectionState.resetCachedX();
        if (this.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(m2858getSelectiond9O1mEE());
            TextLayoutResult textLayoutResult = this.textLayoutResult;
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(textLayoutResult != null ? getNextWordOffsetForLayout$default(this, textLayoutResult, 0, 1, null) : this.text.length(), iM8486getEndimpl, this.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(m2858getSelectiond9O1mEE())) {
                m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return this;
    }

    public final SelectionMovementDeletionContext moveCursorPrevByChar() {
        this.textPreparedSelectionState.resetCachedX();
        if (this.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(m2858getSelectiond9O1mEE());
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(StringHelpers_androidKt.findPrecedingBreak(this.text, TextRange.m8486getEndimpl(this.selection)), iM8486getEndimpl, this.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(m2858getSelectiond9O1mEE())) {
                m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return this;
    }

    public final SelectionMovementDeletionContext moveCursorPrevByCodePointOrEmoji() {
        this.textPreparedSelectionState.resetCachedX();
        if (this.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(m2858getSelectiond9O1mEE());
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(StringHelpers_androidKt.findCodePointOrEmojiStartBefore(this.text, TextRange.m8486getEndimpl(this.selection), -1), iM8486getEndimpl, this.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(m2858getSelectiond9O1mEE())) {
                m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return this;
    }

    public final SelectionMovementDeletionContext moveCursorPrevByParagraph() {
        this.textPreparedSelectionState.resetCachedX();
        if (this.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(m2858getSelectiond9O1mEE());
            int iFindParagraphStart = StringHelpersKt.findParagraphStart(this.text, TextRange.m8489getMinimpl(this.selection));
            if (iFindParagraphStart == TextRange.m8489getMinimpl(this.selection) && iFindParagraphStart != 0) {
                iFindParagraphStart = StringHelpersKt.findParagraphStart(this.text, iFindParagraphStart - 1);
            }
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(iFindParagraphStart, iM8486getEndimpl, this.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(m2858getSelectiond9O1mEE())) {
                m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return this;
    }

    public final SelectionMovementDeletionContext moveCursorPrevByWord() {
        this.textPreparedSelectionState.resetCachedX();
        if (this.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(m2858getSelectiond9O1mEE());
            TextLayoutResult textLayoutResult = this.textLayoutResult;
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(textLayoutResult != null ? getPrevWordOffsetForLayout$default(this, textLayoutResult, 0, 1, null) : 0, iM8486getEndimpl, this.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(m2858getSelectiond9O1mEE())) {
                m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return this;
    }

    public final SelectionMovementDeletionContext moveCursorRightByChar() {
        return isLtr() ? moveCursorNextByChar() : moveCursorPrevByChar();
    }

    public final SelectionMovementDeletionContext moveCursorRightByWord() {
        return isLtr() ? moveCursorNextByWord() : moveCursorPrevByWord();
    }

    public final SelectionMovementDeletionContext moveCursorToEnd() {
        this.textPreparedSelectionState.resetCachedX();
        if (this.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(m2858getSelectiond9O1mEE());
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(this.text.length(), iM8486getEndimpl, this.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(m2858getSelectiond9O1mEE())) {
                m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return this;
    }

    public final SelectionMovementDeletionContext moveCursorToHome() {
        this.textPreparedSelectionState.resetCachedX();
        if (this.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(m2858getSelectiond9O1mEE());
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(0, iM8486getEndimpl, this.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(m2858getSelectiond9O1mEE())) {
                m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return this;
    }

    public final SelectionMovementDeletionContext moveCursorToLineEnd() {
        this.textPreparedSelectionState.resetCachedX();
        if (this.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(m2858getSelectiond9O1mEE());
            TextLayoutResult textLayoutResult = this.textLayoutResult;
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(textLayoutResult != null ? getLineEndByOffsetForLayout$default(this, textLayoutResult, 0, 1, null) : this.text.length(), iM8486getEndimpl, this.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(m2858getSelectiond9O1mEE())) {
                m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return this;
    }

    public final SelectionMovementDeletionContext moveCursorToLineLeftSide() {
        return isLtr() ? moveCursorToLineStart() : moveCursorToLineEnd();
    }

    public final SelectionMovementDeletionContext moveCursorToLineRightSide() {
        return isLtr() ? moveCursorToLineEnd() : moveCursorToLineStart();
    }

    public final SelectionMovementDeletionContext moveCursorToLineStart() {
        this.textPreparedSelectionState.resetCachedX();
        if (this.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(m2858getSelectiond9O1mEE());
            TextLayoutResult textLayoutResult = this.textLayoutResult;
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(textLayoutResult != null ? getLineStartByOffsetForLayout$default(this, textLayoutResult, 0, 1, null) : 0, iM8486getEndimpl, this.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(m2858getSelectiond9O1mEE())) {
                m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return this;
    }

    public final SelectionMovementDeletionContext moveCursorUpByLine() {
        TextLayoutResult textLayoutResult = this.textLayoutResult;
        int iJumpByLinesOffset = textLayoutResult != null ? jumpByLinesOffset(textLayoutResult, -1) : Integer.MIN_VALUE;
        if (iJumpByLinesOffset == Integer.MIN_VALUE) {
            this.textPreparedSelectionState.resetCachedX();
        }
        if (this.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(m2858getSelectiond9O1mEE());
            if (iJumpByLinesOffset < 0) {
                iJumpByLinesOffset = 0;
            }
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(iJumpByLinesOffset, iM8486getEndimpl, this.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(m2858getSelectiond9O1mEE())) {
                m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return this;
    }

    public final SelectionMovementDeletionContext moveCursorUpByPage() {
        if (this.text.length() > 0) {
            int iM8486getEndimpl = TextRange.m8486getEndimpl(m2858getSelectiond9O1mEE());
            long jCalculateNextCursorPositionAndWedgeAffinity = TextPreparedSelectionKt.calculateNextCursorPositionAndWedgeAffinity(jumpByPagesOffset(-1), iM8486getEndimpl, this.state);
            int iM2846component1impl = CursorAndWedgeAffinity.m2846component1impl(jCalculateNextCursorPositionAndWedgeAffinity);
            WedgeAffinity wedgeAffinityM2847component2impl = CursorAndWedgeAffinity.m2847component2impl(jCalculateNextCursorPositionAndWedgeAffinity);
            if (iM2846component1impl != iM8486getEndimpl || !TextRange.m8485getCollapsedimpl(m2858getSelectiond9O1mEE())) {
                m2859setSelection5zctL8(TextRangeKt.TextRange(iM2846component1impl));
            }
            if (wedgeAffinityM2847component2impl != null) {
                setWedgeAffinity(wedgeAffinityM2847component2impl);
            }
        }
        return this;
    }

    public final SelectionMovementDeletionContext selectAll() {
        this.textPreparedSelectionState.resetCachedX();
        if (this.text.length() > 0) {
            this.selection = TextRangeKt.TextRange(0, this.text.length());
        }
        return this;
    }

    public final SelectionMovementDeletionContext selectMovement() {
        if (this.text.length() > 0) {
            this.selection = TextRangeKt.TextRange(TextRange.m8491getStartimpl(this.initialValue.m2665getSelectiond9O1mEE()), TextRange.m8486getEndimpl(this.selection));
        }
        return this;
    }

    /* JADX INFO: renamed from: setSelection-5zc-tL8, reason: not valid java name */
    public final void m2859setSelection5zctL8(long j) {
        this.selection = j;
    }

    public final void setWedgeAffinity(WedgeAffinity wedgeAffinity) {
        this.wedgeAffinity = wedgeAffinity;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
