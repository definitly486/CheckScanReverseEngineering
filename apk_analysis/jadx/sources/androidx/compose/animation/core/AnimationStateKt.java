package androidx.compose.animation.core;

import defpackage.sc3;

/* JADX INFO: loaded from: classes.dex */
public final class AnimationStateKt {
    public static final AnimationState<Float, AnimationVector1D> AnimationState(float f, float f2, long j, long j2, boolean z) {
        return new AnimationState<>(VectorConvertersKt.getVectorConverter(sc3.a), Float.valueOf(f), AnimationVectorsKt.AnimationVector(f2), j, j2, z);
    }

    public static /* synthetic */ AnimationState AnimationState$default(float f, float f2, long j, long j2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        if ((i & 4) != 0) {
            j = Long.MIN_VALUE;
        }
        if ((i & 8) != 0) {
            j2 = Long.MIN_VALUE;
        }
        if ((i & 16) != 0) {
            z = false;
        }
        return AnimationState(f, f2, j, j2, z);
    }

    public static final AnimationState<Float, AnimationVector1D> copy(AnimationState<Float, AnimationVector1D> animationState, float f, float f2, long j, long j2, boolean z) {
        return new AnimationState<>(animationState.getTypeConverter(), Float.valueOf(f), AnimationVectorsKt.AnimationVector(f2), j, j2, z);
    }

    public static /* synthetic */ AnimationState copy$default(AnimationState animationState, float f, float f2, long j, long j2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            f = ((Number) animationState.getValue()).floatValue();
        }
        if ((i & 2) != 0) {
            f2 = ((AnimationVector1D) animationState.getVelocityVector()).getValue();
        }
        if ((i & 4) != 0) {
            j = animationState.getLastFrameTimeNanos();
        }
        if ((i & 8) != 0) {
            j2 = animationState.getFinishedTimeNanos();
        }
        if ((i & 16) != 0) {
            z = animationState.isRunning();
        }
        boolean z2 = z;
        long j3 = j2;
        return copy((AnimationState<Float, AnimationVector1D>) animationState, f, f2, j, j3, z2);
    }

    public static final <T, V extends AnimationVector> V createZeroVectorFrom(TwoWayConverter<T, V> twoWayConverter, T t) {
        V vInvoke = twoWayConverter.getConvertToVector().invoke(t);
        vInvoke.reset$animation_core();
        return vInvoke;
    }

    public static final boolean isFinished(AnimationState<?, ?> animationState) {
        return animationState.getFinishedTimeNanos() != Long.MIN_VALUE;
    }

    public static final <T, V extends AnimationVector> AnimationState<T, V> copy(AnimationState<T, V> animationState, T t, V v, long j, long j2, boolean z) {
        return new AnimationState<>(animationState.getTypeConverter(), t, v, j, j2, z);
    }

    public static final <T, V extends AnimationVector> AnimationState<T, V> AnimationState(TwoWayConverter<T, V> twoWayConverter, T t, T t2, long j, long j2, boolean z) {
        return new AnimationState<>(twoWayConverter, t, twoWayConverter.getConvertToVector().invoke(t2), j, j2, z);
    }

    public static /* synthetic */ AnimationState AnimationState$default(TwoWayConverter twoWayConverter, Object obj, Object obj2, long j, long j2, boolean z, int i, Object obj3) {
        if ((i & 8) != 0) {
            j = Long.MIN_VALUE;
        }
        if ((i & 16) != 0) {
            j2 = Long.MIN_VALUE;
        }
        if ((i & 32) != 0) {
            z = false;
        }
        return AnimationState(twoWayConverter, obj, obj2, j, j2, z);
    }

    public static /* synthetic */ AnimationState copy$default(AnimationState animationState, Object obj, AnimationVector animationVector, long j, long j2, boolean z, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = animationState.getValue();
        }
        if ((i & 2) != 0) {
            animationVector = AnimationVectorsKt.copy(animationState.getVelocityVector());
        }
        if ((i & 4) != 0) {
            j = animationState.getLastFrameTimeNanos();
        }
        if ((i & 8) != 0) {
            j2 = animationState.getFinishedTimeNanos();
        }
        if ((i & 16) != 0) {
            z = animationState.isRunning();
        }
        boolean z2 = z;
        long j3 = j2;
        return copy((AnimationState<Object, AnimationVector>) animationState, obj, animationVector, j, j3, z2);
    }
}
