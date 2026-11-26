package androidx.compose.foundation;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.CombinedClickableNode$onClickKeyUpEvent$2", f = "Clickable.kt", l = {1628, 1632}, m = "invokeSuspend", v = 1)
public final class CombinedClickableNode$onClickKeyUpEvent$2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ long $keyCode;
    long J$0;
    long J$1;
    int label;
    final /* synthetic */ CombinedClickableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombinedClickableNode$onClickKeyUpEvent$2(CombinedClickableNode combinedClickableNode, long j, e02<? super CombinedClickableNode$onClickKeyUpEvent$2> e02Var) {
        super(2, e02Var);
        this.this$0 = combinedClickableNode;
        this.$keyCode = j;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CombinedClickableNode$onClickKeyUpEvent$2(this.this$0, this.$keyCode, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((CombinedClickableNode$onClickKeyUpEvent$2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x005d, code lost:
    
        if (defpackage.yk2.b(r4 - r6, r10) == r0) goto L18;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r10.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1f
            if (r1 == r3) goto L17
            if (r1 != r2) goto L10
            defpackage.r57.b(r11)
            goto L60
        L10:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r10)
            r10 = 0
            return r10
        L17:
            long r4 = r10.J$1
            long r6 = r10.J$0
            defpackage.r57.b(r11)
            goto L43
        L1f:
            defpackage.r57.b(r11)
            androidx.compose.foundation.CombinedClickableNode r11 = r10.this$0
            androidx.compose.runtime.ProvidableCompositionLocal r1 = androidx.compose.ui.platform.CompositionLocalsKt.getLocalViewConfiguration()
            java.lang.Object r11 = androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt.currentValueOf(r11, r1)
            androidx.compose.ui.platform.ViewConfiguration r11 = (androidx.compose.ui.platform.ViewConfiguration) r11
            long r6 = r11.getDoubleTapMinTimeMillis()
            long r4 = r11.getDoubleTapTimeoutMillis()
            r10.J$0 = r6
            r10.J$1 = r4
            r10.label = r3
            java.lang.Object r11 = defpackage.yk2.b(r6, r10)
            if (r11 != r0) goto L43
            goto L5f
        L43:
            androidx.compose.foundation.CombinedClickableNode r11 = r10.this$0
            androidx.collection.MutableLongObjectMap r11 = androidx.compose.foundation.CombinedClickableNode.access$getDoubleKeyClickStates$p(r11)
            long r8 = r10.$keyCode
            java.lang.Object r11 = r11.get(r8)
            androidx.compose.foundation.CombinedClickableNode$DoubleKeyClickState r11 = (androidx.compose.foundation.CombinedClickableNode.DoubleKeyClickState) r11
            if (r11 == 0) goto L56
            r11.setDoubleTapMinTimeMillisElapsed(r3)
        L56:
            long r4 = r4 - r6
            r10.label = r2
            java.lang.Object r11 = defpackage.yk2.b(r4, r10)
            if (r11 != r0) goto L60
        L5f:
            return r0
        L60:
            androidx.compose.foundation.CombinedClickableNode r10 = r10.this$0
            ll3 r10 = r10.getOnClick()
            r10.invoke()
            j59 r10 = defpackage.j59.a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.CombinedClickableNode$onClickKeyUpEvent$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
