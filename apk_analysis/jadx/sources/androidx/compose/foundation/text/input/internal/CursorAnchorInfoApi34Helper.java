package androidx.compose.foundation.text.input.internal;

import android.view.inputmethod.CursorAnchorInfo;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextLayoutResult;
import defpackage.kx6;

/* JADX INFO: loaded from: classes.dex */
public final class CursorAnchorInfoApi34Helper {
    public static final int $stable = 0;
    public static final CursorAnchorInfoApi34Helper INSTANCE = new CursorAnchorInfoApi34Helper();

    private CursorAnchorInfoApi34Helper() {
    }

    public static final CursorAnchorInfo.Builder addVisibleLineBounds(CursorAnchorInfo.Builder builder, TextLayoutResult textLayoutResult, Rect rect) {
        if (!rect.isEmpty()) {
            int lineCount = textLayoutResult.getLineCount() - 1;
            if (lineCount < 0) {
                lineCount = 0;
            }
            int iF = kx6.f(textLayoutResult.getLineForVerticalPosition(rect.getTop()), 0, lineCount);
            int iF2 = kx6.f(textLayoutResult.getLineForVerticalPosition(rect.getBottom()), 0, lineCount);
            if (iF <= iF2) {
                while (true) {
                    builder.addVisibleLineBounds(textLayoutResult.getLineLeft(iF), textLayoutResult.getLineTop(iF), textLayoutResult.getLineRight(iF), textLayoutResult.getLineBottom(iF));
                    if (iF == iF2) {
                        break;
                    }
                    iF++;
                }
            }
        }
        return builder;
    }
}
