package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.text.TextLayoutResult;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldCoreModifier_androidKt {
    public static final void drawCursor(TextFieldCoreModifierNode textFieldCoreModifierNode, DrawScope drawScope, Brush brush, boolean z, CursorAnimationState cursorAnimationState, TextFieldSelectionState textFieldSelectionState) {
        TextFieldCoreModifierKt.drawDefaultCursor(textFieldCoreModifierNode, drawScope, brush, z, cursorAnimationState, textFieldSelectionState);
    }

    /* JADX INFO: renamed from: drawSelectionHighlight-YmzfRxQ, reason: not valid java name */
    public static final void m2801drawSelectionHighlightYmzfRxQ(TextFieldCoreModifierNode textFieldCoreModifierNode, DrawScope drawScope, long j, TextLayoutResult textLayoutResult) {
        TextFieldCoreModifierKt.m2796drawDefaultSelectionHighlightYmzfRxQ(textFieldCoreModifierNode, drawScope, j, textLayoutResult);
    }
}
