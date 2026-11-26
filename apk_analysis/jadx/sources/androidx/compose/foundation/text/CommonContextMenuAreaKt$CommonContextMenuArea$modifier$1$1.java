package androidx.compose.foundation.text;

import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.ui.geometry.Offset;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.CommonContextMenuAreaKt$CommonContextMenuArea$modifier$1$1", f = "CommonContextMenuArea.kt", l = {82, 83}, m = "invokeSuspend", v = 1)
public final class CommonContextMenuAreaKt$CommonContextMenuArea$modifier$1$1 extends pg8 implements bm3<Offset, e02<? super j59>, Object> {
    final /* synthetic */ TextFieldSelectionState $selectionState;
    /* synthetic */ long J$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonContextMenuAreaKt$CommonContextMenuArea$modifier$1$1(TextFieldSelectionState textFieldSelectionState, e02<? super CommonContextMenuAreaKt$CommonContextMenuArea$modifier$1$1> e02Var) {
        super(2, e02Var);
        this.$selectionState = textFieldSelectionState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        CommonContextMenuAreaKt$CommonContextMenuArea$modifier$1$1 commonContextMenuAreaKt$CommonContextMenuArea$modifier$1$1 = new CommonContextMenuAreaKt$CommonContextMenuArea$modifier$1$1(this.$selectionState, e02Var);
        commonContextMenuAreaKt$CommonContextMenuArea$modifier$1$1.J$0 = ((Offset) obj).m5997unboximpl();
        return commonContextMenuAreaKt$CommonContextMenuArea$modifier$1$1;
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(Offset offset, e02<? super j59> e02Var) {
        return m2465invoke3MmeM6k(offset.m5997unboximpl(), e02Var);
    }

    /* JADX INFO: renamed from: invoke-3MmeM6k, reason: not valid java name */
    public final Object m2465invoke3MmeM6k(long j, e02<? super j59> e02Var) {
        return ((CommonContextMenuAreaKt$CommonContextMenuArea$modifier$1$1) create(Offset.m5976boximpl(j), e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x005f, code lost:
    
        if (r5.mo2971onShowContextMenu_2OEclM(r6, r7, r9, r11) == r0) goto L18;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r11.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1d
            if (r1 == r3) goto L17
            if (r1 != r2) goto L10
            defpackage.r57.b(r12)
            goto L62
        L10:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r11)
            r11 = 0
            return r11
        L17:
            long r3 = r11.J$0
            defpackage.r57.b(r12)
            goto L30
        L1d:
            defpackage.r57.b(r12)
            long r4 = r11.J$0
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r12 = r11.$selectionState
            r11.J$0 = r4
            r11.label = r3
            java.lang.Object r12 = r12.updateClipboardEntry(r11)
            if (r12 != r0) goto L2f
            goto L61
        L2f:
            r3 = r4
        L30:
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r12 = r11.$selectionState
            androidx.compose.foundation.text.selection.PlatformSelectionBehaviors r5 = r12.getPlatformSelectionBehaviors$foundation()
            if (r5 == 0) goto L62
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r12 = r11.$selectionState
            androidx.compose.foundation.text.input.internal.TransformedTextFieldState r12 = r12.getTextFieldState$foundation()
            androidx.compose.foundation.text.input.TextFieldCharSequence r12 = r12.getVisualText()
            java.lang.CharSequence r6 = r12.getText()
            androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r12 = r11.$selectionState
            androidx.compose.foundation.text.input.internal.TransformedTextFieldState r12 = r12.getTextFieldState$foundation()
            androidx.compose.foundation.text.input.TextFieldCharSequence r12 = r12.getVisualText()
            long r7 = r12.m2665getSelectiond9O1mEE()
            androidx.compose.ui.geometry.Offset r9 = androidx.compose.ui.geometry.Offset.m5976boximpl(r3)
            r11.label = r2
            r10 = r11
            java.lang.Object r11 = r5.mo2971onShowContextMenu_2OEclM(r6, r7, r9, r10)
            if (r11 != r0) goto L62
        L61:
            return r0
        L62:
            j59 r11 = defpackage.j59.a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.CommonContextMenuAreaKt$CommonContextMenuArea$modifier$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
