package androidx.compose.foundation.text.selection;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$paste$1", f = "TextFieldSelectionManager.kt", l = {928, 928}, m = "invokeSuspend", v = 1)
public final class TextFieldSelectionManager$paste$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;
    final /* synthetic */ TextFieldSelectionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$paste$1(TextFieldSelectionManager textFieldSelectionManager, e02<? super TextFieldSelectionManager$paste$1> e02Var) {
        super(2, e02Var);
        this.this$0 = textFieldSelectionManager;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new TextFieldSelectionManager$paste$1(this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((TextFieldSelectionManager$paste$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
    
        if (r5 == r0) goto L19;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r4.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1b
            if (r1 == r3) goto L17
            if (r1 != r2) goto L10
            defpackage.r57.b(r5)
            goto L3c
        L10:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r4)
            r4 = 0
            return r4
        L17:
            defpackage.r57.b(r5)
            goto L2f
        L1b:
            defpackage.r57.b(r5)
            androidx.compose.foundation.text.selection.TextFieldSelectionManager r5 = r4.this$0
            androidx.compose.ui.platform.Clipboard r5 = r5.getClipboard$foundation()
            if (r5 == 0) goto L49
            r4.label = r3
            java.lang.Object r5 = r5.getClipEntry(r4)
            if (r5 != r0) goto L2f
            goto L3b
        L2f:
            androidx.compose.ui.platform.ClipEntry r5 = (androidx.compose.ui.platform.ClipEntry) r5
            if (r5 == 0) goto L49
            r4.label = r2
            java.lang.Object r5 = androidx.compose.foundation.internal.ClipboardUtils_androidKt.readAnnotatedString(r5, r4)
            if (r5 != r0) goto L3c
        L3b:
            return r0
        L3c:
            androidx.compose.ui.text.AnnotatedString r5 = (androidx.compose.ui.text.AnnotatedString) r5
            if (r5 != 0) goto L41
            goto L49
        L41:
            androidx.compose.foundation.text.selection.TextFieldSelectionManager r4 = r4.this$0
            r4.paste$foundation(r5)
            j59 r4 = defpackage.j59.a
            return r4
        L49:
            j59 r4 = defpackage.j59.a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.TextFieldSelectionManager$paste$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
