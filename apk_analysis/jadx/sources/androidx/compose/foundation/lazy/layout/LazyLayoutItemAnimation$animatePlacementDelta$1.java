package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.unit.IntOffset;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;
import org.conscrypt.metrics.ConscryptStatsLog;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$animatePlacementDelta$1", f = "LazyLayoutItemAnimation.kt", l = {ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_256_CBC_SHA, 148}, m = "invokeSuspend", v = 1)
public final class LazyLayoutItemAnimation$animatePlacementDelta$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ FiniteAnimationSpec<IntOffset> $spec;
    final /* synthetic */ long $totalDelta;
    Object L$0;
    int label;
    final /* synthetic */ LazyLayoutItemAnimation this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyLayoutItemAnimation$animatePlacementDelta$1(LazyLayoutItemAnimation lazyLayoutItemAnimation, FiniteAnimationSpec<IntOffset> finiteAnimationSpec, long j, e02<? super LazyLayoutItemAnimation$animatePlacementDelta$1> e02Var) {
        super(2, e02Var);
        this.this$0 = lazyLayoutItemAnimation;
        this.$spec = finiteAnimationSpec;
        this.$totalDelta = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(LazyLayoutItemAnimation lazyLayoutItemAnimation, long j, Animatable animatable) {
        lazyLayoutItemAnimation.m2206setPlacementDeltagyyYBs(IntOffset.m9173minusqkQi6aY(((IntOffset) animatable.getValue()).m9179unboximpl(), j));
        lazyLayoutItemAnimation.onLayerPropertyChanged.invoke();
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new LazyLayoutItemAnimation$animatePlacementDelta$1(this.this$0, this.$spec, this.$totalDelta, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((LazyLayoutItemAnimation$animatePlacementDelta$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a0, code lost:
    
        if (androidx.compose.animation.core.Animatable.animateTo$default(r13, r5, r6, null, r8, r9, 4, null) == r0) goto L29;
     */
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
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L21
            if (r1 == r4) goto L19
            if (r1 != r3) goto L13
            defpackage.r57.b(r13)     // Catch: java.util.concurrent.CancellationException -> Lae
            r9 = r12
            goto La3
        L13:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r12)
            return r2
        L19:
            java.lang.Object r1 = r12.L$0
            androidx.compose.animation.core.FiniteAnimationSpec r1 = (androidx.compose.animation.core.FiniteAnimationSpec) r1
            defpackage.r57.b(r13)     // Catch: java.util.concurrent.CancellationException -> Lae
            goto L60
        L21:
            defpackage.r57.b(r13)
            androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation r13 = r12.this$0     // Catch: java.util.concurrent.CancellationException -> Lae
            androidx.compose.animation.core.Animatable r13 = androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation.access$getPlacementDeltaAnimation$p(r13)     // Catch: java.util.concurrent.CancellationException -> Lae
            boolean r13 = r13.isRunning()     // Catch: java.util.concurrent.CancellationException -> Lae
            androidx.compose.animation.core.FiniteAnimationSpec<androidx.compose.ui.unit.IntOffset> r1 = r12.$spec
            if (r13 == 0) goto L3d
            boolean r13 = r1 instanceof androidx.compose.animation.core.SpringSpec     // Catch: java.util.concurrent.CancellationException -> Lae
            if (r13 == 0) goto L39
            androidx.compose.animation.core.SpringSpec r1 = (androidx.compose.animation.core.SpringSpec) r1     // Catch: java.util.concurrent.CancellationException -> Lae
            goto L3d
        L39:
            androidx.compose.animation.core.SpringSpec r1 = androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimationKt.access$getInterruptionSpec$p()     // Catch: java.util.concurrent.CancellationException -> Lae
        L3d:
            androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation r13 = r12.this$0     // Catch: java.util.concurrent.CancellationException -> Lae
            androidx.compose.animation.core.Animatable r13 = androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation.access$getPlacementDeltaAnimation$p(r13)     // Catch: java.util.concurrent.CancellationException -> Lae
            boolean r13 = r13.isRunning()     // Catch: java.util.concurrent.CancellationException -> Lae
            if (r13 != 0) goto L69
            androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation r13 = r12.this$0     // Catch: java.util.concurrent.CancellationException -> Lae
            androidx.compose.animation.core.Animatable r13 = androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation.access$getPlacementDeltaAnimation$p(r13)     // Catch: java.util.concurrent.CancellationException -> Lae
            long r5 = r12.$totalDelta     // Catch: java.util.concurrent.CancellationException -> Lae
            androidx.compose.ui.unit.IntOffset r5 = androidx.compose.ui.unit.IntOffset.m9161boximpl(r5)     // Catch: java.util.concurrent.CancellationException -> Lae
            r12.L$0 = r1     // Catch: java.util.concurrent.CancellationException -> Lae
            r12.label = r4     // Catch: java.util.concurrent.CancellationException -> Lae
            java.lang.Object r13 = r13.snapTo(r5, r12)     // Catch: java.util.concurrent.CancellationException -> Lae
            if (r13 != r0) goto L60
            goto La2
        L60:
            androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation r13 = r12.this$0     // Catch: java.util.concurrent.CancellationException -> Lae
            ll3 r13 = androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation.access$getOnLayerPropertyChanged$p(r13)     // Catch: java.util.concurrent.CancellationException -> Lae
            r13.invoke()     // Catch: java.util.concurrent.CancellationException -> Lae
        L69:
            r6 = r1
            androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation r13 = r12.this$0     // Catch: java.util.concurrent.CancellationException -> Lae
            androidx.compose.animation.core.Animatable r13 = androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation.access$getPlacementDeltaAnimation$p(r13)     // Catch: java.util.concurrent.CancellationException -> Lae
            java.lang.Object r13 = r13.getValue()     // Catch: java.util.concurrent.CancellationException -> Lae
            androidx.compose.ui.unit.IntOffset r13 = (androidx.compose.ui.unit.IntOffset) r13     // Catch: java.util.concurrent.CancellationException -> Lae
            long r4 = r13.m9179unboximpl()     // Catch: java.util.concurrent.CancellationException -> Lae
            long r7 = r12.$totalDelta     // Catch: java.util.concurrent.CancellationException -> Lae
            long r4 = androidx.compose.ui.unit.IntOffset.m9173minusqkQi6aY(r4, r7)     // Catch: java.util.concurrent.CancellationException -> Lae
            androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation r13 = r12.this$0     // Catch: java.util.concurrent.CancellationException -> Lae
            androidx.compose.animation.core.Animatable r13 = androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation.access$getPlacementDeltaAnimation$p(r13)     // Catch: java.util.concurrent.CancellationException -> Lae
            r7 = r4
            androidx.compose.ui.unit.IntOffset r5 = androidx.compose.ui.unit.IntOffset.m9161boximpl(r7)     // Catch: java.util.concurrent.CancellationException -> Lae
            androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation r1 = r12.this$0     // Catch: java.util.concurrent.CancellationException -> Lae
            r9 = r7
            androidx.compose.foundation.lazy.layout.c r8 = new androidx.compose.foundation.lazy.layout.c     // Catch: java.util.concurrent.CancellationException -> Lae
            r8.<init>()     // Catch: java.util.concurrent.CancellationException -> Lae
            r12.L$0 = r2     // Catch: java.util.concurrent.CancellationException -> Lae
            r12.label = r3     // Catch: java.util.concurrent.CancellationException -> Lae
            r7 = 0
            r10 = 4
            r11 = 0
            r9 = r12
            r4 = r13
            java.lang.Object r12 = androidx.compose.animation.core.Animatable.animateTo$default(r4, r5, r6, r7, r8, r9, r10, r11)     // Catch: java.util.concurrent.CancellationException -> Lae
            if (r12 != r0) goto La3
        La2:
            return r0
        La3:
            androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation r12 = r9.this$0     // Catch: java.util.concurrent.CancellationException -> Lae
            r13 = 0
            androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation.access$setPlacementAnimationInProgress(r12, r13)     // Catch: java.util.concurrent.CancellationException -> Lae
            androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation r12 = r9.this$0     // Catch: java.util.concurrent.CancellationException -> Lae
            androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation.access$setRunningMovingAwayAnimation$p(r12, r13)     // Catch: java.util.concurrent.CancellationException -> Lae
        Lae:
            j59 r12 = defpackage.j59.a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$animatePlacementDelta$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
