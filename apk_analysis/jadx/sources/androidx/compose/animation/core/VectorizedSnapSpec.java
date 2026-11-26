package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class VectorizedSnapSpec<V extends AnimationVector> implements VectorizedDurationBasedAnimationSpec<V> {
    public static final int $stable = 0;
    private final int delayMillis;

    public /* synthetic */ VectorizedSnapSpec(int i, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 0 : i);
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public int getDelayMillis() {
        return this.delayMillis;
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public int getDurationMillis() {
        return 0;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public V getValueFromNanos(long j, V v, V v2, V v3) {
        return j < ((long) getDelayMillis()) * 1000000 ? v : v2;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public V getVelocityFromNanos(long j, V v, V v2, V v3) {
        return v3;
    }

    public VectorizedSnapSpec(int i) {
        this.delayMillis = i;
    }

    public VectorizedSnapSpec() {
        this(0, 1, null);
    }
}
