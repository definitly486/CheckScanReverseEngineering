package androidx.compose.material3.internal;

import androidx.compose.foundation.shape.RoundedCornerShape;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.x81;
import defpackage.y22;
import org.conscrypt.metrics.ConscryptStatsLog;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$3$1", f = "AnimatedShape.kt", l = {ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_128_CBC_SHA}, m = "invokeSuspend")
public final class AnimatedShapeKt$rememberAnimatedShape$3$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ x81<RoundedCornerShape> $channel;
    final /* synthetic */ AnimatedShapeState $state;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: renamed from: androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$3$1$1, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$3$1$1", f = "AnimatedShape.kt", l = {142}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ RoundedCornerShape $newTarget;
        final /* synthetic */ AnimatedShapeState $state;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AnimatedShapeState animatedShapeState, RoundedCornerShape roundedCornerShape, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$state = animatedShapeState;
            this.$newTarget = roundedCornerShape;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.$state, this.$newTarget, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                AnimatedShapeState animatedShapeState = this.$state;
                RoundedCornerShape roundedCornerShape = this.$newTarget;
                this.label = 1;
                if (animatedShapeState.animateToShape(roundedCornerShape, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedShapeKt$rememberAnimatedShape$3$1(x81<RoundedCornerShape> x81Var, AnimatedShapeState animatedShapeState, e02<? super AnimatedShapeKt$rememberAnimatedShape$3$1> e02Var) {
        super(2, e02Var);
        this.$channel = x81Var;
        this.$state = animatedShapeState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        AnimatedShapeKt$rememberAnimatedShape$3$1 animatedShapeKt$rememberAnimatedShape$3$1 = new AnimatedShapeKt$rememberAnimatedShape$3$1(this.$channel, this.$state, e02Var);
        animatedShapeKt$rememberAnimatedShape$3$1.L$0 = obj;
        return animatedShapeKt$rememberAnimatedShape$3$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((AnimatedShapeKt$rememberAnimatedShape$3$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0036 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x003f  */
    /* JADX WARN: Code duplicated, block: B:17:0x0054  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0034 -> B:12:0x0037). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:14:0x003f
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r7.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L1c
            if (r1 != r3) goto L16
            java.lang.Object r1 = r7.L$1
            k91 r1 = (defpackage.k91) r1
            java.lang.Object r4 = r7.L$0
            y22 r4 = (defpackage.y22) r4
            defpackage.r57.b(r8)
            goto L37
        L16:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r7)
            return r2
        L1c:
            defpackage.r57.b(r8)
            java.lang.Object r8 = r7.L$0
            y22 r8 = (defpackage.y22) r8
            x81<androidx.compose.foundation.shape.RoundedCornerShape> r1 = r7.$channel
            k91 r1 = r1.iterator()
            r4 = r8
        L2a:
            r7.L$0 = r4
            r7.L$1 = r1
            r7.label = r3
            java.lang.Object r8 = r1.b(r7)
            if (r8 != r0) goto L37
            return r0
        L37:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L61
            java.lang.Object r8 = r1.next()
            androidx.compose.foundation.shape.RoundedCornerShape r8 = (androidx.compose.foundation.shape.RoundedCornerShape) r8
            x81<androidx.compose.foundation.shape.RoundedCornerShape> r5 = r7.$channel
            java.lang.Object r5 = r5.i()
            java.lang.Object r5 = defpackage.p91.b(r5)
            androidx.compose.foundation.shape.RoundedCornerShape r5 = (androidx.compose.foundation.shape.RoundedCornerShape) r5
            if (r5 != 0) goto L54
            goto L55
        L54:
            r8 = r5
        L55:
            androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$3$1$1 r5 = new androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$3$1$1
            androidx.compose.material3.internal.AnimatedShapeState r6 = r7.$state
            r5.<init>(r6, r8, r2)
            r8 = 3
            defpackage.av0.c(r4, r2, r2, r5, r8)
            goto L2a
        L61:
            j59 r7 = defpackage.j59.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.AnimatedShapeKt$rememberAnimatedShape$3$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
