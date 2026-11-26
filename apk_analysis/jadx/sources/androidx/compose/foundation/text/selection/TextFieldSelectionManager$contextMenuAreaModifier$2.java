package androidx.compose.foundation.text.selection;

import androidx.media3.muxer.WebmConstants;
import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$contextMenuAreaModifier$2", f = "TextFieldSelectionManager.kt", l = {WebmConstants.MkvEbmlElement.CUE_CLUSTER_POSITION, 243}, m = "invokeSuspend", v = 1)
public final class TextFieldSelectionManager$contextMenuAreaModifier$2 extends pg8 implements nl3<e02<? super j59>, Object> {
    int label;
    final /* synthetic */ TextFieldSelectionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$contextMenuAreaModifier$2(TextFieldSelectionManager textFieldSelectionManager, e02<? super TextFieldSelectionManager$contextMenuAreaModifier$2> e02Var) {
        super(1, e02Var);
        this.this$0 = textFieldSelectionManager;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new TextFieldSelectionManager$contextMenuAreaModifier$2(this.this$0, e02Var);
    }

    @Override // defpackage.nl3
    public final Object invoke(e02<? super j59> e02Var) {
        return ((TextFieldSelectionManager$contextMenuAreaModifier$2) create(e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004b, code lost:
    
        if (r8.mo2972onShowSelectionToolbarSbBc2M(r4, r5, r7) == r0) goto L19;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r7.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1b
            if (r1 == r3) goto L17
            if (r1 != r2) goto L10
            defpackage.r57.b(r8)
            goto L4e
        L10:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            r7 = 0
            return r7
        L17:
            defpackage.r57.b(r8)
            goto L29
        L1b:
            defpackage.r57.b(r8)
            androidx.compose.foundation.text.selection.TextFieldSelectionManager r8 = r7.this$0
            r7.label = r3
            java.lang.Object r8 = r8.updateClipboardEntry$foundation(r7)
            if (r8 != r0) goto L29
            goto L4d
        L29:
            androidx.compose.foundation.text.selection.TextFieldSelectionManager r8 = r7.this$0
            b36 r8 = androidx.compose.foundation.text.selection.TextFieldSelectionManager.access$getContextTextAndSelection(r8)
            if (r8 == 0) goto L4e
            androidx.compose.foundation.text.selection.TextFieldSelectionManager r1 = r7.this$0
            A r4 = r8.b
            java.lang.String r4 = (java.lang.String) r4
            B r8 = r8.c
            androidx.compose.ui.text.TextRange r8 = (androidx.compose.ui.text.TextRange) r8
            long r5 = r8.m8495unboximpl()
            androidx.compose.foundation.text.selection.PlatformSelectionBehaviors r8 = r1.getPlatformSelectionBehaviors$foundation()
            if (r8 == 0) goto L4e
            r7.label = r2
            java.lang.Object r8 = r8.mo2972onShowSelectionToolbarSbBc2M(r4, r5, r7)
            if (r8 != r0) goto L4e
        L4d:
            return r0
        L4e:
            androidx.compose.foundation.text.selection.TextFieldSelectionManager r7 = r7.this$0
            r7.setTextToolbarShownViaProvider$foundation(r3)
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.TextFieldSelectionManager$contextMenuAreaModifier$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
