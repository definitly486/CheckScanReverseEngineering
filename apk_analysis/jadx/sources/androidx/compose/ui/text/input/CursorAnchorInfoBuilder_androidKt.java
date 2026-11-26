package androidx.compose.ui.text.input;

import android.graphics.Matrix;
import android.os.Build;
import android.view.inputmethod.CursorAnchorInfo;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import defpackage.kx6;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class CursorAnchorInfoBuilder_androidKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    private static final CursorAnchorInfo.Builder addCharacterBounds(CursorAnchorInfo.Builder builder, int i, int i2, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, Rect rect) {
        ?? r5;
        int iOriginalToTransformed = offsetMapping.originalToTransformed(i);
        int iOriginalToTransformed2 = offsetMapping.originalToTransformed(i2);
        float[] fArr = new float[(iOriginalToTransformed2 - iOriginalToTransformed) * 4];
        textLayoutResult.getMultiParagraph().m8351fillBoundingBoxes8ffj60Q(TextRangeKt.TextRange(iOriginalToTransformed, iOriginalToTransformed2), fArr, 0);
        for (int i3 = i; i3 < i2; i3++) {
            int iOriginalToTransformed3 = offsetMapping.originalToTransformed(i3);
            int i4 = (iOriginalToTransformed3 - iOriginalToTransformed) * 4;
            Rect rect2 = new Rect(fArr[i4], fArr[i4 + 1], fArr[i4 + 2], fArr[i4 + 3]);
            boolean zOverlaps = rect.overlaps(rect2);
            if (!containsInclusive(rect, rect2.getLeft(), rect2.getTop()) || !containsInclusive(rect, rect2.getRight(), rect2.getBottom())) {
                r5 = zOverlaps;
                r5 = (zOverlaps ? 1 : 0) | 2;
            }
            r5 = zOverlaps;
            if (textLayoutResult.getBidiRunDirection(iOriginalToTransformed3) == ResolvedTextDirection.Rtl) {
                r5 = (r5 == true ? 1 : 0) | 4;
            }
            builder.addCharacterBounds(i3, rect2.getLeft(), rect2.getTop(), rect2.getRight(), rect2.getBottom(), r5 == true ? 1 : 0);
        }
        return builder;
    }

    @ul2
    public static final CursorAnchorInfo build(CursorAnchorInfo.Builder builder, TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, Matrix matrix, Rect rect, Rect rect2, boolean z, boolean z2, boolean z3, boolean z4) {
        builder.reset();
        builder.setMatrix(matrix);
        int iM8489getMinimpl = TextRange.m8489getMinimpl(textFieldValue.m8741getSelectiond9O1mEE());
        builder.setSelectionRange(iM8489getMinimpl, TextRange.m8488getMaximpl(textFieldValue.m8741getSelectiond9O1mEE()));
        if (z) {
            setInsertionMarker(builder, iM8489getMinimpl, offsetMapping, textLayoutResult, rect);
        }
        if (z2) {
            TextRange textRangeM8740getCompositionMzsxiRA = textFieldValue.m8740getCompositionMzsxiRA();
            int iM8489getMinimpl2 = textRangeM8740getCompositionMzsxiRA != null ? TextRange.m8489getMinimpl(textRangeM8740getCompositionMzsxiRA.m8495unboximpl()) : -1;
            TextRange textRangeM8740getCompositionMzsxiRA2 = textFieldValue.m8740getCompositionMzsxiRA();
            int iM8488getMaximpl = textRangeM8740getCompositionMzsxiRA2 != null ? TextRange.m8488getMaximpl(textRangeM8740getCompositionMzsxiRA2.m8495unboximpl()) : -1;
            if (iM8489getMinimpl2 >= 0 && iM8489getMinimpl2 < iM8488getMaximpl) {
                builder.setComposingText(iM8489getMinimpl2, textFieldValue.getText().subSequence(iM8489getMinimpl2, iM8488getMaximpl));
                addCharacterBounds(builder, iM8489getMinimpl2, iM8488getMaximpl, offsetMapping, textLayoutResult, rect);
            }
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 33 && z3) {
            CursorAnchorInfoApi33Helper.setEditorBoundsInfo(builder, rect2);
        }
        if (i >= 34 && z4) {
            CursorAnchorInfoApi34Helper.addVisibleLineBounds(builder, textLayoutResult, rect);
        }
        return builder.build();
    }

    public static /* synthetic */ CursorAnchorInfo build$default(CursorAnchorInfo.Builder builder, TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, Matrix matrix, Rect rect, Rect rect2, boolean z, boolean z2, boolean z3, boolean z4, int i, Object obj) {
        if ((i & 64) != 0) {
            z = true;
        }
        if ((i & 128) != 0) {
            z2 = true;
        }
        if ((i & 256) != 0) {
            z3 = true;
        }
        if ((i & 512) != 0) {
            z4 = true;
        }
        return build(builder, textFieldValue, offsetMapping, textLayoutResult, matrix, rect, rect2, z, z2, z3, z4);
    }

    private static final boolean containsInclusive(Rect rect, float f, float f2) {
        float left = rect.getLeft();
        if (f > rect.getRight() || left > f) {
            return false;
        }
        return f2 <= rect.getBottom() && rect.getTop() <= f2;
    }

    private static final CursorAnchorInfo.Builder setInsertionMarker(CursorAnchorInfo.Builder builder, int i, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, Rect rect) {
        if (i < 0) {
            return builder;
        }
        int iOriginalToTransformed = offsetMapping.originalToTransformed(i);
        Rect cursorRect = textLayoutResult.getCursorRect(iOriginalToTransformed);
        float fD = kx6.d(cursorRect.getLeft(), 0.0f, (int) (textLayoutResult.m8462getSizeYbymL2g() >> 32));
        boolean zContainsInclusive = containsInclusive(rect, fD, cursorRect.getTop());
        boolean zContainsInclusive2 = containsInclusive(rect, fD, cursorRect.getBottom());
        boolean z = textLayoutResult.getBidiRunDirection(iOriginalToTransformed) == ResolvedTextDirection.Rtl;
        int i2 = (zContainsInclusive || zContainsInclusive2) ? 1 : 0;
        if (!zContainsInclusive || !zContainsInclusive2) {
            i2 |= 2;
        }
        if (z) {
            i2 |= 4;
        }
        builder.setInsertionMarkerLocation(fD, cursorRect.getTop(), cursorRect.getBottom(), cursorRect.getBottom(), i2);
        return builder;
    }
}
