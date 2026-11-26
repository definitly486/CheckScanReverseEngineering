package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mb4;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.AbstractClickableNode$handlePressInteractionRelease$1$1", f = "Clickable.kt", l = {2157, 2162, 2163}, m = "invokeSuspend", v = 1)
public final class AbstractClickableNode$handlePressInteractionRelease$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ mb4 $job;
    final /* synthetic */ long $offset;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractClickableNode$handlePressInteractionRelease$1$1(mb4 mb4Var, long j, MutableInteractionSource mutableInteractionSource, e02<? super AbstractClickableNode$handlePressInteractionRelease$1$1> e02Var) {
        super(2, e02Var);
        this.$job = mb4Var;
        this.$offset = j;
        this.$interactionSource = mutableInteractionSource;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new AbstractClickableNode$handlePressInteractionRelease$1$1(this.$job, this.$offset, this.$interactionSource, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((AbstractClickableNode$handlePressInteractionRelease$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0058, code lost:
    
        if (r8.emit(r1, r7) == r0) goto L20;
     */
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
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L27
            if (r1 == r5) goto L23
            if (r1 == r4) goto L1b
            if (r1 != r3) goto L14
            defpackage.r57.b(r8)
            goto L5b
        L14:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            r7 = 0
            return r7
        L1b:
            java.lang.Object r1 = r7.L$0
            androidx.compose.foundation.interaction.PressInteraction$Release r1 = (androidx.compose.foundation.interaction.PressInteraction.Release) r1
            defpackage.r57.b(r8)
            goto L4e
        L23:
            defpackage.r57.b(r8)
            goto L35
        L27:
            defpackage.r57.b(r8)
            mb4 r8 = r7.$job
            r7.label = r5
            java.lang.Object r8 = r8.e0(r7)
            if (r8 != r0) goto L35
            goto L5a
        L35:
            androidx.compose.foundation.interaction.PressInteraction$Press r8 = new androidx.compose.foundation.interaction.PressInteraction$Press
            long r5 = r7.$offset
            r8.<init>(r5, r2)
            androidx.compose.foundation.interaction.PressInteraction$Release r1 = new androidx.compose.foundation.interaction.PressInteraction$Release
            r1.<init>(r8)
            androidx.compose.foundation.interaction.MutableInteractionSource r5 = r7.$interactionSource
            r7.L$0 = r1
            r7.label = r4
            java.lang.Object r8 = r5.emit(r8, r7)
            if (r8 != r0) goto L4e
            goto L5a
        L4e:
            androidx.compose.foundation.interaction.MutableInteractionSource r8 = r7.$interactionSource
            r7.L$0 = r2
            r7.label = r3
            java.lang.Object r7 = r8.emit(r1, r7)
            if (r7 != r0) goto L5b
        L5a:
            return r0
        L5b:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AbstractClickableNode$handlePressInteractionRelease$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
