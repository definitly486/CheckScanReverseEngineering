package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGestureNode$tryShowContextMenu$1", f = "TextContextMenuGesturesModifier.kt", l = {107, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR}, m = "invokeSuspend", v = 1)
public final class TextContextMenuGestureNode$tryShowContextMenu$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ TextContextMenuGestureNode.ClickTextContextMenuDataProvider $dataProvider;
    final /* synthetic */ long $localClickOffset;
    final /* synthetic */ TextContextMenuProvider $provider;
    int label;
    final /* synthetic */ TextContextMenuGestureNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextContextMenuGestureNode$tryShowContextMenu$1(TextContextMenuGestureNode textContextMenuGestureNode, long j, TextContextMenuProvider textContextMenuProvider, TextContextMenuGestureNode.ClickTextContextMenuDataProvider clickTextContextMenuDataProvider, e02<? super TextContextMenuGestureNode$tryShowContextMenu$1> e02Var) {
        super(2, e02Var);
        this.this$0 = textContextMenuGestureNode;
        this.$localClickOffset = j;
        this.$provider = textContextMenuProvider;
        this.$dataProvider = clickTextContextMenuDataProvider;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new TextContextMenuGestureNode$tryShowContextMenu$1(this.this$0, this.$localClickOffset, this.$provider, this.$dataProvider, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((TextContextMenuGestureNode$tryShowContextMenu$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003f, code lost:
    
        if (r7.showTextContextMenu(r1, r6) == r0) goto L17;
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
            goto L42
        L10:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            r6 = 0
            return r6
        L17:
            defpackage.r57.b(r7)
            goto L35
        L1b:
            defpackage.r57.b(r7)
            androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGestureNode r7 = r6.this$0
            bm3 r7 = androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGestureNode.access$getOnPreShowContextMenu$p(r7)
            if (r7 == 0) goto L35
            long r4 = r6.$localClickOffset
            androidx.compose.ui.geometry.Offset r1 = androidx.compose.ui.geometry.Offset.m5976boximpl(r4)
            r6.label = r3
            java.lang.Object r7 = r7.invoke(r1, r6)
            if (r7 != r0) goto L35
            goto L41
        L35:
            androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider r7 = r6.$provider
            androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGestureNode$ClickTextContextMenuDataProvider r1 = r6.$dataProvider
            r6.label = r2
            java.lang.Object r6 = r7.showTextContextMenu(r1, r6)
            if (r6 != r0) goto L42
        L41:
            return r0
        L42:
            j59 r6 = defpackage.j59.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGestureNode$tryShowContextMenu$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
