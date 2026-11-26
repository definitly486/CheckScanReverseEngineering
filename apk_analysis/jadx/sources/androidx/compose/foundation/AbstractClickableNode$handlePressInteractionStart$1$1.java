package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.AbstractClickableNode$handlePressInteractionStart$1$1", f = "Clickable.kt", l = {2071, 2072}, m = "invokeSuspend", v = 1)
public final class AbstractClickableNode$handlePressInteractionStart$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ PressInteraction.Press $press;
    int label;
    final /* synthetic */ AbstractClickableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractClickableNode$handlePressInteractionStart$1$1(MutableInteractionSource mutableInteractionSource, PressInteraction.Press press, AbstractClickableNode abstractClickableNode, e02<? super AbstractClickableNode$handlePressInteractionStart$1$1> e02Var) {
        super(2, e02Var);
        this.$interactionSource = mutableInteractionSource;
        this.$press = press;
        this.this$0 = abstractClickableNode;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new AbstractClickableNode$handlePressInteractionStart$1$1(this.$interactionSource, this.$press, this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((AbstractClickableNode$handlePressInteractionStart$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
    
        if (r7.emit(r1, r6) == r0) goto L15;
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
            goto L38
        L10:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            r6 = 0
            return r6
        L17:
            defpackage.r57.b(r7)
            goto L2b
        L1b:
            defpackage.r57.b(r7)
            long r4 = androidx.compose.foundation.Clickable_androidKt.getTapIndicationDelay()
            r6.label = r3
            java.lang.Object r7 = defpackage.yk2.b(r4, r6)
            if (r7 != r0) goto L2b
            goto L37
        L2b:
            androidx.compose.foundation.interaction.MutableInteractionSource r7 = r6.$interactionSource
            androidx.compose.foundation.interaction.PressInteraction$Press r1 = r6.$press
            r6.label = r2
            java.lang.Object r7 = r7.emit(r1, r6)
            if (r7 != r0) goto L38
        L37:
            return r0
        L38:
            androidx.compose.foundation.AbstractClickableNode r7 = r6.this$0
            androidx.compose.foundation.interaction.PressInteraction$Press r6 = r6.$press
            androidx.compose.foundation.AbstractClickableNode.access$setIndirectPointerPressInteraction$p(r7, r6)
            j59 r6 = defpackage.j59.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AbstractClickableNode$handlePressInteractionStart$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
