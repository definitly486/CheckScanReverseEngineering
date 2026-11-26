package androidx.compose.foundation;

import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.AbstractClickableNode$handlePressInteraction$2$1", f = "Clickable.kt", l = {2245, 2247, 2254, 2255, 2265}, m = "invokeSuspend", v = 1)
public final class AbstractClickableNode$handlePressInteraction$2$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ long $offset;
    final /* synthetic */ PressGestureScope $this_handlePressInteraction;
    private /* synthetic */ Object L$0;
    boolean Z$0;
    int label;
    final /* synthetic */ AbstractClickableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractClickableNode$handlePressInteraction$2$1(PressGestureScope pressGestureScope, long j, MutableInteractionSource mutableInteractionSource, AbstractClickableNode abstractClickableNode, e02<? super AbstractClickableNode$handlePressInteraction$2$1> e02Var) {
        super(2, e02Var);
        this.$this_handlePressInteraction = pressGestureScope;
        this.$offset = j;
        this.$interactionSource = mutableInteractionSource;
        this.this$0 = abstractClickableNode;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        AbstractClickableNode$handlePressInteraction$2$1 abstractClickableNode$handlePressInteraction$2$1 = new AbstractClickableNode$handlePressInteraction$2$1(this.$this_handlePressInteraction, this.$offset, this.$interactionSource, this.this$0, e02Var);
        abstractClickableNode$handlePressInteraction$2$1.L$0 = obj;
        return abstractClickableNode$handlePressInteraction$2$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((AbstractClickableNode$handlePressInteraction$2$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0078  */
    /* JADX WARN: Code duplicated, block: B:29:0x0091 A[PHI: r1
      0x0091: PHI (r1v10 androidx.compose.foundation.interaction.PressInteraction$Release) = 
      (r1v9 androidx.compose.foundation.interaction.PressInteraction$Release)
      (r1v15 androidx.compose.foundation.interaction.PressInteraction$Release)
     binds: [B:27:0x008e, B:13:0x0022] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009b, code lost:
    
        if (r15.emit(r1, r14) == r0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bd, code lost:
    
        if (r3.emit(r15, r14) == r0) goto L40;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r14.label
            r2 = 5
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r1 == 0) goto L38
            if (r1 == r6) goto L30
            if (r1 == r5) goto L2a
            if (r1 == r4) goto L22
            if (r1 == r3) goto L1d
            if (r1 != r2) goto L17
            goto L1d
        L17:
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r14)
            return r7
        L1d:
            defpackage.r57.b(r15)
            goto Lc0
        L22:
            java.lang.Object r1 = r14.L$0
            androidx.compose.foundation.interaction.PressInteraction$Release r1 = (androidx.compose.foundation.interaction.PressInteraction.Release) r1
            defpackage.r57.b(r15)
            goto L91
        L2a:
            boolean r1 = r14.Z$0
            defpackage.r57.b(r15)
            goto L76
        L30:
            java.lang.Object r1 = r14.L$0
            mb4 r1 = (defpackage.mb4) r1
            defpackage.r57.b(r15)
            goto L5c
        L38:
            defpackage.r57.b(r15)
            java.lang.Object r15 = r14.L$0
            y22 r15 = (defpackage.y22) r15
            androidx.compose.foundation.AbstractClickableNode$handlePressInteraction$2$1$delayJob$1 r8 = new androidx.compose.foundation.AbstractClickableNode$handlePressInteraction$2$1$delayJob$1
            androidx.compose.foundation.AbstractClickableNode r9 = r14.this$0
            long r10 = r14.$offset
            androidx.compose.foundation.interaction.MutableInteractionSource r12 = r14.$interactionSource
            r13 = 0
            r8.<init>(r9, r10, r12, r13)
            s68 r1 = defpackage.av0.c(r15, r7, r7, r8, r4)
            androidx.compose.foundation.gestures.PressGestureScope r15 = r14.$this_handlePressInteraction
            r14.L$0 = r1
            r14.label = r6
            java.lang.Object r15 = r15.tryAwaitRelease(r14)
            if (r15 != r0) goto L5c
            goto Lbf
        L5c:
            java.lang.Boolean r15 = (java.lang.Boolean) r15
            boolean r15 = r15.booleanValue()
            boolean r6 = r1.isActive()
            if (r6 == 0) goto L9e
            r14.L$0 = r7
            r14.Z$0 = r15
            r14.label = r5
            java.lang.Object r1 = defpackage.qb4.c(r1, r14)
            if (r1 != r0) goto L75
            goto Lbf
        L75:
            r1 = r15
        L76:
            if (r1 == 0) goto Lc0
            androidx.compose.foundation.interaction.PressInteraction$Press r15 = new androidx.compose.foundation.interaction.PressInteraction$Press
            long r1 = r14.$offset
            r15.<init>(r1, r7)
            androidx.compose.foundation.interaction.PressInteraction$Release r1 = new androidx.compose.foundation.interaction.PressInteraction$Release
            r1.<init>(r15)
            androidx.compose.foundation.interaction.MutableInteractionSource r2 = r14.$interactionSource
            r14.L$0 = r1
            r14.label = r4
            java.lang.Object r15 = r2.emit(r15, r14)
            if (r15 != r0) goto L91
            goto Lbf
        L91:
            androidx.compose.foundation.interaction.MutableInteractionSource r15 = r14.$interactionSource
            r14.L$0 = r7
            r14.label = r3
            java.lang.Object r15 = r15.emit(r1, r14)
            if (r15 != r0) goto Lc0
            goto Lbf
        L9e:
            androidx.compose.foundation.AbstractClickableNode r1 = r14.this$0
            androidx.compose.foundation.interaction.PressInteraction$Press r1 = androidx.compose.foundation.AbstractClickableNode.access$getPressInteraction$p(r1)
            if (r1 == 0) goto Lc0
            androidx.compose.foundation.interaction.MutableInteractionSource r3 = r14.$interactionSource
            if (r15 == 0) goto Lb0
            androidx.compose.foundation.interaction.PressInteraction$Release r15 = new androidx.compose.foundation.interaction.PressInteraction$Release
            r15.<init>(r1)
            goto Lb5
        Lb0:
            androidx.compose.foundation.interaction.PressInteraction$Cancel r15 = new androidx.compose.foundation.interaction.PressInteraction$Cancel
            r15.<init>(r1)
        Lb5:
            r14.L$0 = r7
            r14.label = r2
            java.lang.Object r15 = r3.emit(r15, r14)
            if (r15 != r0) goto Lc0
        Lbf:
            return r0
        Lc0:
            androidx.compose.foundation.AbstractClickableNode r14 = r14.this$0
            androidx.compose.foundation.AbstractClickableNode.access$setPressInteraction$p(r14, r7)
            j59 r14 = defpackage.j59.a
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AbstractClickableNode$handlePressInteraction$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
