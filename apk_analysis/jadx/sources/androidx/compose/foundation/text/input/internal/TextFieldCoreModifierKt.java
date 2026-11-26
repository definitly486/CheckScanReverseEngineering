package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldCoreModifierKt {
    private static final float DefaultCursorThickness = Dp.m9042constructorimpl(2.0f);

    public static final void drawDefaultCursor(TextFieldCoreModifierNode textFieldCoreModifierNode, DrawScope drawScope, Brush brush, boolean z, CursorAnimationState cursorAnimationState, TextFieldSelectionState textFieldSelectionState) {
        float cursorAlpha = cursorAnimationState != null ? cursorAnimationState.getCursorAlpha() : 0.0f;
        if (cursorAlpha != 0.0f && z) {
            Rect cursorRect = textFieldSelectionState.getCursorRect();
            DrawScope.m6791drawLine1RTmtNc$default(drawScope, brush, cursorRect.m6021getTopCenterF1C5BW0(), cursorRect.m6014getBottomCenterF1C5BW0(), cursorRect.getRight() - cursorRect.getLeft(), 0, null, cursorAlpha, null, 0, 432, null);
        }
    }

    /* JADX INFO: renamed from: drawDefaultSelectionHighlight-YmzfRxQ, reason: not valid java name */
    public static final void m2796drawDefaultSelectionHighlightYmzfRxQ(TextFieldCoreModifierNode textFieldCoreModifierNode, DrawScope drawScope, long j, TextLayoutResult textLayoutResult) {
        int iM8489getMinimpl = TextRange.m8489getMinimpl(j);
        int iM8488getMaximpl = TextRange.m8488getMaximpl(j);
        if (iM8489getMinimpl != iM8488getMaximpl) {
            DrawScope.m6796drawPathLG529CI$default(drawScope, textLayoutResult.getPathForRange(iM8489getMinimpl, iM8488getMaximpl), ((TextSelectionColors) CompositionLocalConsumerModifierNodeKt.currentValueOf(textFieldCoreModifierNode, TextSelectionColorsKt.getLocalTextSelectionColors())).m3048getBackgroundColor0d7_KjU(), 0.0f, null, null, 0, 60, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect getCursorRectInScroller(Density density, Rect rect, boolean z, int i) {
        return Rect.copy$default(rect, z ? i - rect.getRight() : rect.getLeft(), 0.0f, (z ? i - rect.getRight() : rect.getLeft()) + density.mo1428roundToPx0680j_4(DefaultCursorThickness), 0.0f, 10, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isSpecified(Brush brush) {
        return ((brush instanceof SolidColor) && ((SolidColor) brush).m6588getValue0d7_KjU() == 16) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float roundToNext(float f) {
        if (Float.isNaN(f) || Float.isInfinite(f)) {
            return f;
        }
        return (float) (f > 0.0f ? Math.ceil(f) : Math.floor(f));
    }
}
