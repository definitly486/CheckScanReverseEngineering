package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.TextLayoutHelperKt;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.kx6;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class MultiWidgetSelectionDelegate implements Selectable {
    public static final int $stable = 8;
    private TextLayoutResult _previousTextLayoutResult;
    private final ll3<LayoutCoordinates> coordinatesCallback;
    private final ll3<TextLayoutResult> layoutResultCallback;
    private final long selectableId;
    private final Object lock = this;
    private int _previousLastVisibleOffset = -1;

    /* JADX WARN: Multi-variable type inference failed */
    public MultiWidgetSelectionDelegate(long j, ll3<? extends LayoutCoordinates> ll3Var, ll3<TextLayoutResult> ll3Var2) {
        this.selectableId = j;
        this.coordinatesCallback = ll3Var;
        this.layoutResultCallback = ll3Var2;
    }

    private final int getLastVisibleOffset(TextLayoutResult textLayoutResult) {
        int i;
        int lineCount;
        synchronized (this.lock) {
            try {
                if (this._previousTextLayoutResult != textLayoutResult) {
                    if (!textLayoutResult.getDidOverflowHeight() || textLayoutResult.getMultiParagraph().getDidExceedMaxLines()) {
                        lineCount = textLayoutResult.getLineCount() - 1;
                    } else {
                        lineCount = textLayoutResult.getLineForVerticalPosition((int) (textLayoutResult.m8462getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                        int lineCount2 = textLayoutResult.getLineCount() - 1;
                        if (lineCount > lineCount2) {
                            lineCount = lineCount2;
                        }
                        while (lineCount >= 0 && textLayoutResult.getLineTop(lineCount) >= ((int) (textLayoutResult.m8462getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) {
                            lineCount--;
                        }
                        if (lineCount < 0) {
                            lineCount = 0;
                        }
                    }
                    this._previousLastVisibleOffset = textLayoutResult.getLineEnd(lineCount, true);
                    this._previousTextLayoutResult = textLayoutResult;
                }
                i = this._previousLastVisibleOffset;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    public void appendSelectableInfoToBuilder(SelectionLayoutBuilder selectionLayoutBuilder) {
        TextLayoutResult textLayoutResultInvoke;
        LayoutCoordinates layoutCoordinates = getLayoutCoordinates();
        if (layoutCoordinates == null || (textLayoutResultInvoke = this.layoutResultCallback.invoke()) == null) {
            return;
        }
        LayoutCoordinates containerCoordinates = selectionLayoutBuilder.getContainerCoordinates();
        Offset.Companion companion = Offset.Companion;
        long jMo7711localPositionOfR5De75A = containerCoordinates.mo7711localPositionOfR5De75A(layoutCoordinates, companion.m6003getZeroF1C5BW0());
        MultiWidgetSelectionDelegateKt.m2967appendSelectableInfoParwq6A(selectionLayoutBuilder, textLayoutResultInvoke, Offset.m5991minusMKHz9U(selectionLayoutBuilder.m2989getCurrentPositionF1C5BW0(), jMo7711localPositionOfR5De75A), (selectionLayoutBuilder.m2990getPreviousHandlePositionF1C5BW0() & 9223372034707292159L) == InlineClassHelperKt.UnspecifiedPackedFloats ? companion.m6002getUnspecifiedF1C5BW0() : Offset.m5991minusMKHz9U(selectionLayoutBuilder.m2990getPreviousHandlePositionF1C5BW0(), jMo7711localPositionOfR5De75A), getSelectableId());
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    public Rect getBoundingBox(int i) {
        int length;
        TextLayoutResult textLayoutResultInvoke = this.layoutResultCallback.invoke();
        if (textLayoutResultInvoke != null && (length = textLayoutResultInvoke.getLayoutInput().getText().length()) >= 1) {
            return textLayoutResultInvoke.getBoundingBox(kx6.f(i, 0, length - 1));
        }
        return Rect.Companion.getZero();
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    public float getCenterYForOffset(int i) {
        int lineForOffset;
        TextLayoutResult textLayoutResultInvoke = this.layoutResultCallback.invoke();
        if (textLayoutResultInvoke == null || (lineForOffset = textLayoutResultInvoke.getLineForOffset(i)) >= textLayoutResultInvoke.getLineCount()) {
            return -1.0f;
        }
        float lineTop = textLayoutResultInvoke.getLineTop(lineForOffset);
        return ((textLayoutResultInvoke.getLineBottom(lineForOffset) - lineTop) / 2.0f) + lineTop;
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    /* JADX INFO: renamed from: getHandlePosition-dBAh8RU, reason: not valid java name */
    public long mo2965getHandlePositiondBAh8RU(Selection selection, boolean z) {
        TextLayoutResult textLayoutResultInvoke;
        if ((z && selection.getStart().getSelectableId() != getSelectableId()) || (!z && selection.getEnd().getSelectableId() != getSelectableId())) {
            return Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        if (getLayoutCoordinates() != null && (textLayoutResultInvoke = this.layoutResultCallback.invoke()) != null) {
            return TextSelectionDelegateKt.getSelectionHandleCoordinates(textLayoutResultInvoke, kx6.f((z ? selection.getStart() : selection.getEnd()).getOffset(), 0, getLastVisibleOffset(textLayoutResultInvoke)), z, selection.getHandlesCrossed());
        }
        return Offset.Companion.m6002getUnspecifiedF1C5BW0();
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    public LayoutCoordinates getLayoutCoordinates() {
        LayoutCoordinates layoutCoordinatesInvoke = this.coordinatesCallback.invoke();
        if (layoutCoordinatesInvoke == null || !layoutCoordinatesInvoke.isAttached()) {
            return null;
        }
        return layoutCoordinatesInvoke;
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    public float getLineHeight(int i) {
        TextLayoutResult textLayoutResultInvoke = this.layoutResultCallback.invoke();
        if (textLayoutResultInvoke != null) {
            return TextLayoutHelperKt.getLineHeight(textLayoutResultInvoke, i);
        }
        return 0.0f;
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    public float getLineLeft(int i) {
        int lineForOffset;
        TextLayoutResult textLayoutResultInvoke = this.layoutResultCallback.invoke();
        if (textLayoutResultInvoke != null && (lineForOffset = textLayoutResultInvoke.getLineForOffset(i)) < textLayoutResultInvoke.getLineCount()) {
            return textLayoutResultInvoke.getLineLeft(lineForOffset);
        }
        return -1.0f;
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    public float getLineRight(int i) {
        int lineForOffset;
        TextLayoutResult textLayoutResultInvoke = this.layoutResultCallback.invoke();
        if (textLayoutResultInvoke != null && (lineForOffset = textLayoutResultInvoke.getLineForOffset(i)) < textLayoutResultInvoke.getLineCount()) {
            return textLayoutResultInvoke.getLineRight(lineForOffset);
        }
        return -1.0f;
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    /* JADX INFO: renamed from: getRangeOfLineContaining--jx7JFs, reason: not valid java name */
    public long mo2966getRangeOfLineContainingjx7JFs(int i) {
        int lastVisibleOffset;
        TextLayoutResult textLayoutResultInvoke = this.layoutResultCallback.invoke();
        if (textLayoutResultInvoke != null && (lastVisibleOffset = getLastVisibleOffset(textLayoutResultInvoke)) >= 1) {
            int lineForOffset = textLayoutResultInvoke.getLineForOffset(kx6.f(i, 0, lastVisibleOffset - 1));
            return TextRangeKt.TextRange(textLayoutResultInvoke.getLineStart(lineForOffset), textLayoutResultInvoke.getLineEnd(lineForOffset, true));
        }
        return TextRange.Companion.m8496getZerod9O1mEE();
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    public Selection getSelectAllSelection() {
        TextLayoutResult textLayoutResultInvoke = this.layoutResultCallback.invoke();
        if (textLayoutResultInvoke == null) {
            return null;
        }
        int length = textLayoutResultInvoke.getLayoutInput().getText().length();
        return new Selection(new Selection.AnchorInfo(textLayoutResultInvoke.getBidiRunDirection(0), 0, getSelectableId()), new Selection.AnchorInfo(textLayoutResultInvoke.getBidiRunDirection(Math.max(length - 1, 0)), length, getSelectableId()), false);
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    public long getSelectableId() {
        return this.selectableId;
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    public AnnotatedString getText() {
        TextLayoutResult textLayoutResultInvoke = this.layoutResultCallback.invoke();
        return textLayoutResultInvoke == null ? new AnnotatedString("", null, 2, null) : textLayoutResultInvoke.getLayoutInput().getText();
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    public TextLayoutResult textLayoutResult() {
        return this.layoutResultCallback.invoke();
    }

    @Override // androidx.compose.foundation.text.selection.Selectable
    public int getLastVisibleOffset() {
        TextLayoutResult textLayoutResultInvoke = this.layoutResultCallback.invoke();
        if (textLayoutResultInvoke == null) {
            return 0;
        }
        return getLastVisibleOffset(textLayoutResultInvoke);
    }
}
