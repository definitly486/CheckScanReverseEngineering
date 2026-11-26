package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.KeyCommand;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$clipboardKeyCommandsHandler$1$1", f = "TextFieldDecoratorModifier.kt", l = {392, 393, 394}, m = "invokeSuspend", v = 1)
public final class TextFieldDecoratorModifierNode$clipboardKeyCommandsHandler$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ KeyCommand $keyCommand;
    int label;
    final /* synthetic */ TextFieldDecoratorModifierNode this$0;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[KeyCommand.values().length];
            try {
                iArr[KeyCommand.COPY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KeyCommand.CUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KeyCommand.PASTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldDecoratorModifierNode$clipboardKeyCommandsHandler$1$1(KeyCommand keyCommand, TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, e02<? super TextFieldDecoratorModifierNode$clipboardKeyCommandsHandler$1$1> e02Var) {
        super(2, e02Var);
        this.$keyCommand = keyCommand;
        this.this$0 = textFieldDecoratorModifierNode;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new TextFieldDecoratorModifierNode$clipboardKeyCommandsHandler$1$1(this.$keyCommand, this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((TextFieldDecoratorModifierNode$clipboardKeyCommandsHandler$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003a, code lost:
    
        if (r6.paste(r5) == r0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0049, code lost:
    
        if (r6.cut(r5) == r0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0059, code lost:
    
        if (r6.copy(false, r5) == r0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
    
        return r0;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r5.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1a
            if (r1 == r4) goto Lf
            if (r1 == r3) goto Lf
            if (r1 != r2) goto L13
        Lf:
            defpackage.r57.b(r6)
            goto L5c
        L13:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r5)
            r5 = 0
            return r5
        L1a:
            defpackage.r57.b(r6)
            androidx.compose.foundation.text.KeyCommand r6 = r5.$keyCommand
            int[] r1 = androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$clipboardKeyCommandsHandler$1$1.WhenMappings.$EnumSwitchMapping$0
            int r6 = r6.ordinal()
            r6 = r1[r6]
            if (r6 == r4) goto L4c
            if (r6 == r3) goto L3d
            if (r6 == r2) goto L2e
            goto L5c
        L2e:
            androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode r6 = r5.this$0
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r6 = r6.getTextFieldSelectionState()
            r5.label = r2
            java.lang.Object r5 = r6.paste(r5)
            if (r5 != r0) goto L5c
            goto L5b
        L3d:
            androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode r6 = r5.this$0
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r6 = r6.getTextFieldSelectionState()
            r5.label = r3
            java.lang.Object r5 = r6.cut(r5)
            if (r5 != r0) goto L5c
            goto L5b
        L4c:
            androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode r6 = r5.this$0
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r6 = r6.getTextFieldSelectionState()
            r5.label = r4
            r1 = 0
            java.lang.Object r5 = r6.copy(r1, r5)
            if (r5 != r0) goto L5c
        L5b:
            return r0
        L5c:
            j59 r5 = defpackage.j59.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$clipboardKeyCommandsHandler$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
