package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;

/* JADX INFO: loaded from: classes.dex */
public interface VectorizedAnimationSpec<V extends AnimationVector> {

    public static final class DefaultImpls {
        @Deprecated
        public static <V extends AnimationVector> V getEndVelocity(VectorizedAnimationSpec<V> vectorizedAnimationSpec, V v, V v2, V v3) {
            return (V) VectorizedAnimationSpec.super.getEndVelocity(v, v2, v3);
        }
    }

    long getDurationNanos(V v, V v2, V v3);

    default V getEndVelocity(V v, V v2, V v3) {
        return (V) getVelocityFromNanos(getDurationNanos(v, v2, v3), v, v2, v3);
    }

    V getValueFromNanos(long j, V v, V v2, V v3);

    V getVelocityFromNanos(long j, V v, V v2, V v3);

    boolean isInfinite();
}
