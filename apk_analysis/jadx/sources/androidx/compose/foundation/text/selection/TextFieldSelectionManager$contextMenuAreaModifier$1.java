package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$contextMenuAreaModifier$1", f = "TextFieldSelectionManager.kt", l = {228, 230}, m = "invokeSuspend", v = 1)
public final class TextFieldSelectionManager$contextMenuAreaModifier$1 extends pg8 implements bm3<Offset, e02<? super j59>, Object> {
    /* synthetic */ long J$0;
    int label;
    final /* synthetic */ TextFieldSelectionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$contextMenuAreaModifier$1(TextFieldSelectionManager textFieldSelectionManager, e02<? super TextFieldSelectionManager$contextMenuAreaModifier$1> e02Var) {
        super(2, e02Var);
        this.this$0 = textFieldSelectionManager;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        TextFieldSelectionManager$contextMenuAreaModifier$1 textFieldSelectionManager$contextMenuAreaModifier$1 = new TextFieldSelectionManager$contextMenuAreaModifier$1(this.this$0, e02Var);
        textFieldSelectionManager$contextMenuAreaModifier$1.J$0 = ((Offset) obj).m5997unboximpl();
        return textFieldSelectionManager$contextMenuAreaModifier$1;
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(Offset offset, e02<? super j59> e02Var) {
        return m3046invoke3MmeM6k(offset.m5997unboximpl(), e02Var);
    }

    /* JADX INFO: renamed from: invoke-3MmeM6k, reason: not valid java name */
    public final Object m3046invoke3MmeM6k(long j, e02<? super j59> e02Var) {
        return ((TextFieldSelectionManager$contextMenuAreaModifier$1) create(Offset.m5976boximpl(j), e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0058, code lost:
    
        if (r6.mo2971onShowContextMenu_2OEclM(r7, r8, r10, r12) == r0) goto L20;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r12.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1d
            if (r1 == r3) goto L17
            if (r1 != r2) goto L10
            defpackage.r57.b(r13)
            goto L5b
        L10:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r12)
            r12 = 0
            return r12
        L17:
            long r3 = r12.J$0
            defpackage.r57.b(r13)
            goto L30
        L1d:
            defpackage.r57.b(r13)
            long r4 = r12.J$0
            androidx.compose.foundation.text.selection.TextFieldSelectionManager r13 = r12.this$0
            r12.J$0 = r4
            r12.label = r3
            java.lang.Object r13 = r13.updateClipboardEntry$foundation(r12)
            if (r13 != r0) goto L2f
            goto L5a
        L2f:
            r3 = r4
        L30:
            androidx.compose.foundation.text.selection.TextFieldSelectionManager r13 = r12.this$0
            b36 r13 = androidx.compose.foundation.text.selection.TextFieldSelectionManager.access$getContextTextAndSelection(r13)
            if (r13 == 0) goto L5b
            androidx.compose.foundation.text.selection.TextFieldSelectionManager r1 = r12.this$0
            A r5 = r13.b
            r7 = r5
            java.lang.String r7 = (java.lang.String) r7
            B r13 = r13.c
            androidx.compose.ui.text.TextRange r13 = (androidx.compose.ui.text.TextRange) r13
            long r8 = r13.m8495unboximpl()
            androidx.compose.foundation.text.selection.PlatformSelectionBehaviors r6 = r1.getPlatformSelectionBehaviors$foundation()
            if (r6 == 0) goto L5b
            androidx.compose.ui.geometry.Offset r10 = androidx.compose.ui.geometry.Offset.m5976boximpl(r3)
            r12.label = r2
            r11 = r12
            java.lang.Object r12 = r6.mo2971onShowContextMenu_2OEclM(r7, r8, r10, r11)
            if (r12 != r0) goto L5b
        L5a:
            return r0
        L5b:
            j59 r12 = defpackage.j59.a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.TextFieldSelectionManager$contextMenuAreaModifier$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
