package androidx.compose.foundation.text.input.internal;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.input.internal.TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$2", f = "TextFieldCoreModifier.kt", l = {}, m = "invokeSuspend", v = 1)
public final class TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$2 extends pg8 implements nl3<e02<? super j59>, Object> {
    int label;
    final /* synthetic */ TextFieldCoreModifierNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$2(TextFieldCoreModifierNode textFieldCoreModifierNode, e02<? super TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$2> e02Var) {
        super(1, e02Var);
        this.this$0 = textFieldCoreModifierNode;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$2(this.this$0, e02Var);
    }

    @Override // defpackage.nl3
    public final Object invoke(e02<? super j59> e02Var) {
        return ((TextFieldCoreModifierNode$textContextMenuToolbarHandlerNode$2) create(e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        this.this$0.textFieldSelectionState.setTextToolbarShown$foundation(false);
        return j59.a;
    }
}
