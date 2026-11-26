package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;

/* JADX INFO: loaded from: classes.dex */
public interface VectorizedDurationBasedAnimationSpec<V extends AnimationVector> extends VectorizedFiniteAnimationSpec<V> {

    public static final class DefaultImpls {
        @Deprecated
        public static <V extends AnimationVector> long getDurationNanos(VectorizedDurationBasedAnimationSpec<V> vectorizedDurationBasedAnimationSpec, V v, V v2, V v3) {
            return VectorizedDurationBasedAnimationSpec.super.getDurationNanos(v, v2, v3);
        }

        @Deprecated
        public static <V extends AnimationVector> V getEndVelocity(VectorizedDurationBasedAnimationSpec<V> vectorizedDurationBasedAnimationSpec, V v, V v2, V v3) {
            return (V) VectorizedDurationBasedAnimationSpec.super.getEndVelocity(v, v2, v3);
        }

        @Deprecated
        public static <V extends AnimationVector> boolean isInfinite(VectorizedDurationBasedAnimationSpec<V> vectorizedDurationBasedAnimationSpec) {
            return VectorizedDurationBasedAnimationSpec.super.isInfinite();
        }
    }

    int getDelayMillis();

    int getDurationMillis();

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    default long getDurationNanos(V v, V v2, V v3) {
        return ((long) (getDurationMillis() + getDelayMillis())) * 1000000;
    }
}
