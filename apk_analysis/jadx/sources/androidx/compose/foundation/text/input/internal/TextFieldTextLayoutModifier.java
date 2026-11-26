package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Density;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jn;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldTextLayoutModifier extends ModifierNodeElement<TextFieldTextLayoutModifierNode> {
    public static final int $stable = 0;
    private final KeyboardOptions keyboardOptions;
    private final bm3<Density, ll3<TextLayoutResult>, j59> onTextLayout;
    private final boolean singleLine;
    private final TransformedTextFieldState textFieldState;
    private final TextLayoutState textLayoutState;
    private final TextStyle textStyle;

    /* JADX WARN: Multi-variable type inference failed */
    public TextFieldTextLayoutModifier(TextLayoutState textLayoutState, TransformedTextFieldState transformedTextFieldState, TextStyle textStyle, boolean z, bm3<? super Density, ? super ll3<TextLayoutResult>, j59> bm3Var, KeyboardOptions keyboardOptions) {
        this.textLayoutState = textLayoutState;
        this.textFieldState = transformedTextFieldState;
        this.textStyle = textStyle;
        this.singleLine = z;
        this.onTextLayout = bm3Var;
        this.keyboardOptions = keyboardOptions;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public TextFieldTextLayoutModifierNode create() {
        return new TextFieldTextLayoutModifierNode(this.textLayoutState, this.textFieldState, this.textStyle, this.singleLine, this.onTextLayout, this.keyboardOptions);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextFieldTextLayoutModifier)) {
            return false;
        }
        TextFieldTextLayoutModifier textFieldTextLayoutModifier = (TextFieldTextLayoutModifier) obj;
        return this.singleLine == textFieldTextLayoutModifier.singleLine && aa4.e(this.textLayoutState, textFieldTextLayoutModifier.textLayoutState) && aa4.e(this.textFieldState, textFieldTextLayoutModifier.textFieldState) && aa4.e(this.textStyle, textFieldTextLayoutModifier.textStyle) && this.onTextLayout == textFieldTextLayoutModifier.onTextLayout && aa4.e(this.keyboardOptions, textFieldTextLayoutModifier.keyboardOptions);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        int iC = jn.c(this.textStyle, (this.textFieldState.hashCode() + ((this.textLayoutState.hashCode() + (Boolean.hashCode(this.singleLine) * 31)) * 31)) * 31, 31);
        bm3<Density, ll3<TextLayoutResult>, j59> bm3Var = this.onTextLayout;
        return this.keyboardOptions.hashCode() + ((iC + (bm3Var != null ? bm3Var.hashCode() : 0)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(TextFieldTextLayoutModifierNode textFieldTextLayoutModifierNode) {
        textFieldTextLayoutModifierNode.updateNode(this.textLayoutState, this.textFieldState, this.textStyle, this.singleLine, this.onTextLayout, this.keyboardOptions);
    }
}
