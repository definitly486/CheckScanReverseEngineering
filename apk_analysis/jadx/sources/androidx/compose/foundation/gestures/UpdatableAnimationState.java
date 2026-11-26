package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.animation.core.VectorizedAnimationSpec;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.sc3;
import defpackage.w65;

/* JADX INFO: loaded from: classes.dex */
public final class UpdatableAnimationState {

    @Deprecated
    public static final float VisibilityThreshold = 0.01f;
    private boolean isRunning;
    private long lastFrameTime = Long.MIN_VALUE;
    private AnimationVector1D lastVelocity = ZeroVector;
    private float value;
    private final VectorizedAnimationSpec<AnimationVector1D> vectorizedSpec;
    private static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final AnimationVector1D ZeroVector = new AnimationVector1D(0.0f);

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.UpdatableAnimationState$animateToZero$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.UpdatableAnimationState", f = "UpdatableAnimationState.kt", l = {100, 151}, m = "animateToZero", v = 1)
    public static final class AnonymousClass1 extends f02 {
        float F$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UpdatableAnimationState.this.animateToZero(null, null, this);
        }
    }

    public UpdatableAnimationState(AnimationSpec<Float> animationSpec) {
        this.vectorizedSpec = animationSpec.vectorize(VectorConvertersKt.getVectorConverter(sc3.a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 animateToZero$lambda$1(UpdatableAnimationState updatableAnimationState, float f, nl3 nl3Var, long j) {
        if (updatableAnimationState.lastFrameTime == Long.MIN_VALUE) {
            updatableAnimationState.lastFrameTime = j;
        }
        AnimationVector1D animationVector1D = new AnimationVector1D(updatableAnimationState.value);
        long durationNanos = f == 0.0f ? updatableAnimationState.vectorizedSpec.getDurationNanos(new AnimationVector1D(updatableAnimationState.value), ZeroVector, updatableAnimationState.lastVelocity) : w65.c((j - updatableAnimationState.lastFrameTime) / f);
        VectorizedAnimationSpec<AnimationVector1D> vectorizedAnimationSpec = updatableAnimationState.vectorizedSpec;
        AnimationVector1D animationVector1D2 = ZeroVector;
        float value = ((AnimationVector1D) vectorizedAnimationSpec.getValueFromNanos(durationNanos, animationVector1D, animationVector1D2, updatableAnimationState.lastVelocity)).getValue();
        updatableAnimationState.lastVelocity = (AnimationVector1D) updatableAnimationState.vectorizedSpec.getVelocityFromNanos(durationNanos, animationVector1D, animationVector1D2, updatableAnimationState.lastVelocity);
        updatableAnimationState.lastFrameTime = j;
        float f2 = updatableAnimationState.value - value;
        updatableAnimationState.value = value;
        nl3Var.invoke(Float.valueOf(f2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 animateToZero$lambda$2(UpdatableAnimationState updatableAnimationState, nl3 nl3Var, long j) {
        float f = updatableAnimationState.value;
        updatableAnimationState.value = 0.0f;
        nl3Var.invoke(Float.valueOf(f));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0074 A[Catch: all -> 0x0034, PHI: r13 r14 r15
      0x0074: PHI (r13v4 float) = (r13v2 float), (r13v5 float) binds: [B:29:0x006e, B:36:0x0097] A[DONT_GENERATE, DONT_INLINE]
      0x0074: PHI (r14v5 nl3<? super java.lang.Float, j59>) = (r14v2 nl3<? super java.lang.Float, j59>), (r14v6 nl3<? super java.lang.Float, j59>) binds: [B:29:0x006e, B:36:0x0097] A[DONT_GENERATE, DONT_INLINE]
      0x0074: PHI (r15v16 ll3<j59>) = (r15v8 ll3<j59>), (r15v17 ll3<j59>) binds: [B:29:0x006e, B:36:0x0097] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x002f, B:43:0x00b7, B:20:0x0047, B:35:0x0092, B:30:0x0074, B:32:0x007e, B:37:0x0099, B:40:0x00a5), top: B:48:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x007e A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x002f, B:43:0x00b7, B:20:0x0047, B:35:0x0092, B:30:0x0074, B:32:0x007e, B:37:0x0099, B:40:0x00a5), top: B:48:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0091  */
    /* JADX WARN: Code duplicated, block: B:35:0x0092 A[Catch: all -> 0x0034, PHI: r13 r14 r15
      0x0092: PHI (r13v5 float) = (r13v4 float), (r13v8 float) binds: [B:33:0x008f, B:21:0x004a] A[DONT_GENERATE, DONT_INLINE]
      0x0092: PHI (r14v6 nl3<? super java.lang.Float, j59>) = (r14v5 nl3<? super java.lang.Float, j59>), (r14v9 nl3<? super java.lang.Float, j59>) binds: [B:33:0x008f, B:21:0x004a] A[DONT_GENERATE, DONT_INLINE]
      0x0092: PHI (r15v17 ll3<j59>) = (r15v16 ll3<j59>), (r15v18 ll3<j59>) binds: [B:33:0x008f, B:21:0x004a] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0034, blocks: (B:13:0x002f, B:43:0x00b7, B:20:0x0047, B:35:0x0092, B:30:0x0074, B:32:0x007e, B:37:0x0099, B:40:0x00a5), top: B:48:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0099 A[Catch: all -> 0x0034, PHI: r14 r15
      0x0099: PHI (r14v3 nl3<? super java.lang.Float, j59>) = (r14v5 nl3<? super java.lang.Float, j59>), (r14v6 nl3<? super java.lang.Float, j59>) binds: [B:31:0x007c, B:36:0x0097] A[DONT_GENERATE, DONT_INLINE]
      0x0099: PHI (r15v11 ll3<j59>) = (r15v16 ll3<j59>), (r15v17 ll3<j59>) binds: [B:31:0x007c, B:36:0x0097] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0034, blocks: (B:13:0x002f, B:43:0x00b7, B:20:0x0047, B:35:0x0092, B:30:0x0074, B:32:0x007e, B:37:0x0099, B:40:0x00a5), top: B:48:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a5 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x002f, B:43:0x00b7, B:20:0x0047, B:35:0x0092, B:30:0x0074, B:32:0x007e, B:37:0x0099, B:40:0x00a5), top: B:48:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x008f -> B:35:0x0092). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object animateToZero(defpackage.nl3<? super java.lang.Float, defpackage.j59> r13, defpackage.ll3<defpackage.j59> r14, defpackage.e02<? super defpackage.j59> r15) {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.UpdatableAnimationState.animateToZero(nl3, ll3, e02):java.lang.Object");
    }

    public final float getValue() {
        return this.value;
    }

    public final void setValue(float f) {
        this.value = f;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final AnimationVector1D getZeroVector() {
            return UpdatableAnimationState.ZeroVector;
        }

        public final boolean isZeroish(float f) {
            return Math.abs(f) < 0.01f;
        }

        private Companion() {
        }
    }
}
