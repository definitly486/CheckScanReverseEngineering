package androidx.compose.ui.text.android;

import android.graphics.RectF;
import android.text.Layout;
import androidx.compose.ui.text.android.selection.SegmentFinder;
import androidx.compose.ui.text.android.selection.SegmentFinder_androidKt;
import androidx.compose.ui.text.android.selection.WordSegmentFinder;
import defpackage.bm3;
import defpackage.kx6;
import defpackage.w74;
import defpackage.y74;
import defpackage.yr;

/* JADX INFO: loaded from: classes2.dex */
public final class TextLayoutGetRangeForRectExtensions_androidKt {
    private static final float getCharacterLeftBounds(int i, int i2, float[] fArr) {
        return fArr[(i - i2) * 2];
    }

    private static final float getCharacterRightBounds(int i, int i2, float[] fArr) {
        return fArr[((i - i2) * 2) + 1];
    }

    private static final int getEndOffsetForRectWithinRun(LayoutHelper.BidiRun bidiRun, RectF rectF, int i, int i2, int i3, float f, float f2, float[] fArr, SegmentFinder segmentFinder, bm3<? super RectF, ? super RectF, Boolean> bm3Var) {
        int start;
        int iNextEndBoundary;
        if (!horizontalOverlap(rectF, f, f2)) {
            return -1;
        }
        if ((bidiRun.isRtl() || rectF.right < f2) && (!bidiRun.isRtl() || rectF.left > f)) {
            start = bidiRun.getStart();
            int end = bidiRun.getEnd();
            while (end - start > 1) {
                int i4 = (end + start) / 2;
                float characterLeftBounds = getCharacterLeftBounds(i4, i, fArr);
                if ((bidiRun.isRtl() || characterLeftBounds <= rectF.right) && (!bidiRun.isRtl() || characterLeftBounds >= rectF.left)) {
                    start = i4;
                } else {
                    end = i4;
                }
            }
            if (bidiRun.isRtl()) {
                start = end;
            }
        } else {
            start = bidiRun.getEnd() - 1;
        }
        int iPreviousStartBoundary = segmentFinder.previousStartBoundary(start + 1);
        if (iPreviousStartBoundary == -1 || (iNextEndBoundary = segmentFinder.nextEndBoundary(iPreviousStartBoundary)) <= bidiRun.getStart()) {
            return -1;
        }
        int start2 = bidiRun.getStart();
        if (iPreviousStartBoundary < start2) {
            iPreviousStartBoundary = start2;
        }
        int end2 = bidiRun.getEnd();
        if (iNextEndBoundary > end2) {
            iNextEndBoundary = end2;
        }
        RectF rectF2 = new RectF(0.0f, i2, 0.0f, i3);
        while (true) {
            rectF2.left = bidiRun.isRtl() ? getCharacterLeftBounds(iNextEndBoundary - 1, i, fArr) : getCharacterLeftBounds(iPreviousStartBoundary, i, fArr);
            rectF2.right = bidiRun.isRtl() ? getCharacterRightBounds(iPreviousStartBoundary, i, fArr) : getCharacterRightBounds(iNextEndBoundary - 1, i, fArr);
            if (bm3Var.invoke(rectF2, rectF).booleanValue()) {
                return iNextEndBoundary;
            }
            iNextEndBoundary = segmentFinder.previousEndBoundary(iNextEndBoundary);
            if (iNextEndBoundary == -1 || iNextEndBoundary <= bidiRun.getStart()) {
                return -1;
            }
            int iPreviousStartBoundary2 = segmentFinder.previousStartBoundary(iNextEndBoundary);
            int start3 = bidiRun.getStart();
            iPreviousStartBoundary = iPreviousStartBoundary2 < start3 ? start3 : iPreviousStartBoundary2;
        }
    }

    public static final int[] getRangeForRect(TextLayout textLayout, Layout layout, LayoutHelper layoutHelper, RectF rectF, int i, bm3<? super RectF, ? super RectF, Boolean> bm3Var) {
        int i2;
        SegmentFinder wordSegmentFinder = i == 1 ? new WordSegmentFinder(textLayout.getText(), textLayout.getWordIterator()) : SegmentFinder_androidKt.createGraphemeClusterSegmentFinder(textLayout.getText(), textLayout.getTextPaint());
        int lineForVertical = layout.getLineForVertical((int) rectF.top);
        if (rectF.top > textLayout.getLineBottom(lineForVertical) && (lineForVertical = lineForVertical + 1) >= textLayout.getLineCount()) {
            return null;
        }
        int i3 = lineForVertical;
        int lineForVertical2 = layout.getLineForVertical((int) rectF.bottom);
        if (lineForVertical2 == 0 && rectF.bottom < textLayout.getLineTop(0)) {
            return null;
        }
        int startOrEndOffsetForRectWithinLine = getStartOrEndOffsetForRectWithinLine(textLayout, layout, layoutHelper, i3, rectF, wordSegmentFinder, bm3Var, true);
        while (true) {
            i2 = i3;
            if (startOrEndOffsetForRectWithinLine != -1 || i2 >= lineForVertical2) {
                break;
            }
            i3 = i2 + 1;
            startOrEndOffsetForRectWithinLine = getStartOrEndOffsetForRectWithinLine(textLayout, layout, layoutHelper, i3, rectF, wordSegmentFinder, bm3Var, true);
        }
        if (startOrEndOffsetForRectWithinLine == -1) {
            return null;
        }
        int startOrEndOffsetForRectWithinLine2 = getStartOrEndOffsetForRectWithinLine(textLayout, layout, layoutHelper, lineForVertical2, rectF, wordSegmentFinder, bm3Var, false);
        while (startOrEndOffsetForRectWithinLine2 == -1 && i2 < lineForVertical2) {
            int i4 = lineForVertical2 - 1;
            startOrEndOffsetForRectWithinLine2 = getStartOrEndOffsetForRectWithinLine(textLayout, layout, layoutHelper, i4, rectF, wordSegmentFinder, bm3Var, false);
            lineForVertical2 = i4;
        }
        if (startOrEndOffsetForRectWithinLine2 == -1) {
            return null;
        }
        return new int[]{wordSegmentFinder.previousStartBoundary(startOrEndOffsetForRectWithinLine + 1), wordSegmentFinder.nextEndBoundary(startOrEndOffsetForRectWithinLine2 - 1)};
    }

    private static final int getStartOffsetForRectWithinRun(LayoutHelper.BidiRun bidiRun, RectF rectF, int i, int i2, int i3, float f, float f2, float[] fArr, SegmentFinder segmentFinder, bm3<? super RectF, ? super RectF, Boolean> bm3Var) {
        int start;
        int iPreviousStartBoundary;
        if (!horizontalOverlap(rectF, f, f2)) {
            return -1;
        }
        if ((bidiRun.isRtl() || rectF.left > f) && (!bidiRun.isRtl() || rectF.right < f2)) {
            start = bidiRun.getStart();
            int end = bidiRun.getEnd();
            while (end - start > 1) {
                int i4 = (end + start) / 2;
                float characterLeftBounds = getCharacterLeftBounds(i4, i, fArr);
                if ((bidiRun.isRtl() || characterLeftBounds <= rectF.left) && (!bidiRun.isRtl() || characterLeftBounds >= rectF.right)) {
                    start = i4;
                } else {
                    end = i4;
                }
            }
            if (bidiRun.isRtl()) {
                start = end;
            }
        } else {
            start = bidiRun.getStart();
        }
        int iNextEndBoundary = segmentFinder.nextEndBoundary(start);
        if (iNextEndBoundary == -1 || (iPreviousStartBoundary = segmentFinder.previousStartBoundary(iNextEndBoundary)) >= bidiRun.getEnd()) {
            return -1;
        }
        int start2 = bidiRun.getStart();
        if (iPreviousStartBoundary < start2) {
            iPreviousStartBoundary = start2;
        }
        int end2 = bidiRun.getEnd();
        if (iNextEndBoundary > end2) {
            iNextEndBoundary = end2;
        }
        RectF rectF2 = new RectF(0.0f, i2, 0.0f, i3);
        while (true) {
            rectF2.left = bidiRun.isRtl() ? getCharacterLeftBounds(iNextEndBoundary - 1, i, fArr) : getCharacterLeftBounds(iPreviousStartBoundary, i, fArr);
            rectF2.right = bidiRun.isRtl() ? getCharacterRightBounds(iPreviousStartBoundary, i, fArr) : getCharacterRightBounds(iNextEndBoundary - 1, i, fArr);
            if (bm3Var.invoke(rectF2, rectF).booleanValue()) {
                return iPreviousStartBoundary;
            }
            iPreviousStartBoundary = segmentFinder.nextStartBoundary(iPreviousStartBoundary);
            if (iPreviousStartBoundary == -1 || iPreviousStartBoundary >= bidiRun.getEnd()) {
                return -1;
            }
            int iNextEndBoundary2 = segmentFinder.nextEndBoundary(iPreviousStartBoundary);
            int end3 = bidiRun.getEnd();
            iNextEndBoundary = iNextEndBoundary2 > end3 ? end3 : iNextEndBoundary2;
        }
    }

    private static final int getStartOrEndOffsetForRectWithinLine(TextLayout textLayout, Layout layout, LayoutHelper layoutHelper, int i, RectF rectF, SegmentFinder segmentFinder, bm3<? super RectF, ? super RectF, Boolean> bm3Var, boolean z) {
        w74 w74VarK;
        int lineTop = layout.getLineTop(i);
        int lineBottom = layout.getLineBottom(i);
        int lineStart = layout.getLineStart(i);
        int lineEnd = layout.getLineEnd(i);
        if (lineStart == lineEnd) {
            return -1;
        }
        float[] fArr = new float[(lineEnd - lineStart) * 2];
        textLayout.fillLineHorizontalBounds$ui_text(i, fArr);
        LayoutHelper.BidiRun[] lineBidiRuns$ui_text = layoutHelper.getLineBidiRuns$ui_text(i);
        if (z) {
            lineBidiRuns$ui_text.getClass();
            w74VarK = new y74(0, lineBidiRuns$ui_text.length - 1, 1);
        } else {
            w74VarK = kx6.k(yr.N(lineBidiRuns$ui_text), 0);
        }
        int i2 = w74VarK.b;
        int i3 = w74VarK.c;
        int i4 = w74VarK.d;
        if ((i4 > 0 && i2 <= i3) || (i4 < 0 && i3 <= i2)) {
            int i5 = i2;
            while (true) {
                LayoutHelper.BidiRun bidiRun = lineBidiRuns$ui_text[i5];
                float characterLeftBounds = bidiRun.isRtl() ? getCharacterLeftBounds(bidiRun.getEnd() - 1, lineStart, fArr) : getCharacterLeftBounds(bidiRun.getStart(), lineStart, fArr);
                float characterRightBounds = bidiRun.isRtl() ? getCharacterRightBounds(bidiRun.getStart(), lineStart, fArr) : getCharacterRightBounds(bidiRun.getEnd() - 1, lineStart, fArr);
                int startOffsetForRectWithinRun = z ? getStartOffsetForRectWithinRun(bidiRun, rectF, lineStart, lineTop, lineBottom, characterLeftBounds, characterRightBounds, fArr, segmentFinder, bm3Var) : getEndOffsetForRectWithinRun(bidiRun, rectF, lineStart, lineTop, lineBottom, characterLeftBounds, characterRightBounds, fArr, segmentFinder, bm3Var);
                if (startOffsetForRectWithinRun >= 0) {
                    return startOffsetForRectWithinRun;
                }
                if (i5 != i3) {
                    i5 += i4;
                }
            }
        }
        return -1;
    }

    private static final boolean horizontalOverlap(RectF rectF, float f, float f2) {
        return f2 >= rectF.left && f <= rectF.right;
    }
}
