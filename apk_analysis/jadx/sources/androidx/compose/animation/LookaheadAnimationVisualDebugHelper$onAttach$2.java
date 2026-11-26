package androidx.compose.animation;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.animation.LookaheadAnimationVisualDebugHelper$onAttach$2", f = "LookaheadAnimationVisualDebugHelper.kt", l = {114, 115}, m = "invokeSuspend", v = 1)
public final class LookaheadAnimationVisualDebugHelper$onAttach$2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;
    final /* synthetic */ LookaheadAnimationVisualDebugHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LookaheadAnimationVisualDebugHelper$onAttach$2(LookaheadAnimationVisualDebugHelper lookaheadAnimationVisualDebugHelper, e02<? super LookaheadAnimationVisualDebugHelper$onAttach$2> e02Var) {
        super(2, e02Var);
        this.this$0 = lookaheadAnimationVisualDebugHelper;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new LookaheadAnimationVisualDebugHelper$onAttach$2(this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((LookaheadAnimationVisualDebugHelper$onAttach$2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0062, code lost:
    
        if (androidx.compose.animation.core.Animatable.animateTo$default(r4, r5, r6, null, null, r13, 12, null) == r0) goto L15;
     */
    @Override // defpackage.cd0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            r13 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r13.label
            r2 = 1
            r3 = 2
            if (r1 == 0) goto L1b
            if (r1 == r2) goto L17
            if (r1 != r3) goto L10
            defpackage.r57.b(r14)
            goto L65
        L10:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r13)
            r13 = 0
            return r13
        L17:
            defpackage.r57.b(r14)
            goto L33
        L1b:
            defpackage.r57.b(r14)
            androidx.compose.animation.LookaheadAnimationVisualDebugHelper r14 = r13.this$0
            androidx.compose.animation.core.Animatable r14 = androidx.compose.animation.LookaheadAnimationVisualDebugHelper.access$getRestartProgress$p(r14)
            java.lang.Float r1 = new java.lang.Float
            r4 = 0
            r1.<init>(r4)
            r13.label = r2
            java.lang.Object r14 = r14.snapTo(r1, r13)
            if (r14 != r0) goto L33
            goto L64
        L33:
            androidx.compose.animation.LookaheadAnimationVisualDebugHelper r14 = r13.this$0
            androidx.compose.animation.core.Animatable r4 = androidx.compose.animation.LookaheadAnimationVisualDebugHelper.access$getRestartProgress$p(r14)
            java.lang.Float r5 = new java.lang.Float
            r14 = 1065353216(0x3f800000, float:1.0)
            r5.<init>(r14)
            androidx.compose.animation.core.Easing r14 = androidx.compose.animation.core.EasingKt.getLinearEasing()
            r1 = 0
            r2 = 1000(0x3e8, float:1.401E-42)
            r6 = 0
            androidx.compose.animation.core.TweenSpec r7 = androidx.compose.animation.core.AnimationSpecKt.tween$default(r2, r6, r14, r3, r1)
            androidx.compose.animation.core.RepeatMode r8 = androidx.compose.animation.core.RepeatMode.Restart
            r11 = 4
            r12 = 0
            r9 = 0
            androidx.compose.animation.core.InfiniteRepeatableSpec r6 = androidx.compose.animation.core.AnimationSpecKt.m1199infiniteRepeatable9IiC70o$default(r7, r8, r9, r11, r12)
            r13.label = r3
            r7 = 0
            r8 = 0
            r10 = 12
            r11 = 0
            r9 = r13
            java.lang.Object r13 = androidx.compose.animation.core.Animatable.animateTo$default(r4, r5, r6, r7, r8, r9, r10, r11)
            if (r13 != r0) goto L65
        L64:
            return r0
        L65:
            j59 r13 = defpackage.j59.a
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.animation.LookaheadAnimationVisualDebugHelper$onAttach$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
