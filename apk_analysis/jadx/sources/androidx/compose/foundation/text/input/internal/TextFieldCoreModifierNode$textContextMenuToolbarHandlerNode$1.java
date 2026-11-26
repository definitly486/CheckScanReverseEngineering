package androidx.compose.foundation.text.input.internal;

import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$1", f = "TextFieldCoreModifier.kt", l = {209, 210}, m = "invokeSuspend", v = 1)
public final class TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$1 extends pg8 implements nl3<e02<? super j59>, Object> {
    int label;
    final /* synthetic */ TextFieldCoreModifierNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$1(TextFieldCoreModifierNode textFieldCoreModifierNode, e02<? super TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$1> e02Var) {
        super(1, e02Var);
        this.this$0 = textFieldCoreModifierNode;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$1(this.this$0, e02Var);
    }

    @Override // defpackage.nl3
    public final Object invoke(e02<? super j59> e02Var) {
        return ((TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$1) create(e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005f, code lost:
    
        if (r7.mo2972onShowSelectionToolbarSbBc2M(r1, r4, r6) == r0) goto L17;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r6.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1b
            if (r1 == r3) goto L17
            if (r1 != r2) goto L10
            defpackage.r57.b(r7)
            goto L62
        L10:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            r6 = 0
            return r6
        L17:
            defpackage.r57.b(r7)
            goto L2d
        L1b:
            defpackage.r57.b(r7)
            androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode r7 = r6.this$0
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r7 = androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode.access$getTextFieldSelectionState$p(r7)
            r6.label = r3
            java.lang.Object r7 = r7.updateClipboardEntry(r6)
            if (r7 != r0) goto L2d
            goto L61
        L2d:
            androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode r7 = r6.this$0
            androidx.compose.foundation.text.selection.PlatformSelectionBehaviors r7 = androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode.access$getPlatformSelectionBehaviors$p(r7)
            if (r7 == 0) goto L62
            androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode r1 = r6.this$0
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r1 = androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode.access$getTextFieldSelectionState$p(r1)
            androidx.compose.foundation.text.input.internal.TransformedTextFieldState r1 = r1.getTextFieldState$foundation()
            androidx.compose.foundation.text.input.TextFieldCharSequence r1 = r1.getVisualText()
            java.lang.CharSequence r1 = r1.getText()
            androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode r4 = r6.this$0
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r4 = androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode.access$getTextFieldSelectionState$p(r4)
            androidx.compose.foundation.text.input.internal.TransformedTextFieldState r4 = r4.getTextFieldState$foundation()
            androidx.compose.foundation.text.input.TextFieldCharSequence r4 = r4.getVisualText()
            long r4 = r4.m2665getSelectiond9O1mEE()
            r6.label = r2
            java.lang.Object r7 = r7.mo2972onShowSelectionToolbarSbBc2M(r1, r4, r6)
            if (r7 != r0) goto L62
        L61:
            return r0
        L62:
            androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode r6 = r6.this$0
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r6 = androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode.access$getTextFieldSelectionState$p(r6)
            r6.setTextToolbarShown$foundation(r3)
            j59 r6 = defpackage.j59.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
