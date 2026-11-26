package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$applySemantics$12$1", f = "TextFieldDecoratorModifier.kt", l = {679}, m = "invokeSuspend", v = 1)
public final class TextFieldDecoratorModifierNode$applySemantics$12$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;
    final /* synthetic */ TextFieldDecoratorModifierNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldDecoratorModifierNode$applySemantics$12$1(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, e02<? super TextFieldDecoratorModifierNode$applySemantics$12$1> e02Var) {
        super(2, e02Var);
        this.this$0 = textFieldDecoratorModifierNode;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new TextFieldDecoratorModifierNode$applySemantics$12$1(this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((TextFieldDecoratorModifierNode$applySemantics$12$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            TextFieldSelectionState textFieldSelectionState = this.this$0.getTextFieldSelectionState();
            this.label = 1;
            if (textFieldSelectionState.paste(this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
