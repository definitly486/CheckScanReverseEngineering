package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
final class VectorizedFloatDecaySpec<V extends AnimationVector> implements VectorizedDecayAnimationSpec<V> {
    private final float absVelocityThreshold;
    private final FloatDecayAnimationSpec floatDecaySpec;
    private V targetVector;
    private V valueVector;
    private V velocityVector;

    public VectorizedFloatDecaySpec(FloatDecayAnimationSpec floatDecayAnimationSpec) {
        this.floatDecaySpec = floatDecayAnimationSpec;
        this.absVelocityThreshold = floatDecayAnimationSpec.getAbsVelocityThreshold();
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    public float getAbsVelocityThreshold() {
        return this.absVelocityThreshold;
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    public long getDurationNanos(V v, V v2) {
        V v3 = this.velocityVector;
        if (v3 == null) {
            v3 = (V) AnimationVectorsKt.newInstance(v);
            this.velocityVector = v3;
        }
        if (v3 == null) {
            aa4.j("velocityVector");
            throw null;
        }
        int size$animation_core = v3.getSize$animation_core();
        long jMax = 0;
        for (int i = 0; i < size$animation_core; i++) {
            jMax = Math.max(jMax, this.floatDecaySpec.getDurationNanos(v.get$animation_core(i), v2.get$animation_core(i)));
        }
        return jMax;
    }

    public final FloatDecayAnimationSpec getFloatDecaySpec() {
        return this.floatDecaySpec;
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    public V getTargetValue(V v, V v2) {
        V v3 = this.targetVector;
        if (v3 == null) {
            v3 = (V) AnimationVectorsKt.newInstance(v);
            this.targetVector = v3;
        }
        if (v3 == null) {
            aa4.j("targetVector");
            throw null;
        }
        int size$animation_core = v3.getSize$animation_core();
        int i = 0;
        while (true) {
            V v4 = this.targetVector;
            if (i >= size$animation_core) {
                if (v4 != null) {
                    return v4;
                }
                aa4.j("targetVector");
                throw null;
            }
            if (v4 == null) {
                aa4.j("targetVector");
                throw null;
            }
            v4.set$animation_core(i, this.floatDecaySpec.getTargetValue(v.get$animation_core(i), v2.get$animation_core(i)));
            i++;
        }
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    public V getValueFromNanos(long j, V v, V v2) {
        V v3 = this.valueVector;
        if (v3 == null) {
            v3 = (V) AnimationVectorsKt.newInstance(v);
            this.valueVector = v3;
        }
        if (v3 == null) {
            aa4.j("valueVector");
            throw null;
        }
        int size$animation_core = v3.getSize$animation_core();
        int i = 0;
        while (true) {
            V v4 = this.valueVector;
            if (i >= size$animation_core) {
                if (v4 != null) {
                    return v4;
                }
                aa4.j("valueVector");
                throw null;
            }
            if (v4 == null) {
                aa4.j("valueVector");
                throw null;
            }
            v4.set$animation_core(i, this.floatDecaySpec.getValueFromNanos(j, v.get$animation_core(i), v2.get$animation_core(i)));
            i++;
        }
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    public V getVelocityFromNanos(long j, V v, V v2) {
        V v3 = this.velocityVector;
        if (v3 == null) {
            v3 = (V) AnimationVectorsKt.newInstance(v);
            this.velocityVector = v3;
        }
        if (v3 == null) {
            aa4.j("velocityVector");
            throw null;
        }
        int size$animation_core = v3.getSize$animation_core();
        int i = 0;
        while (true) {
            V v4 = this.velocityVector;
            if (i >= size$animation_core) {
                if (v4 != null) {
                    return v4;
                }
                aa4.j("velocityVector");
                throw null;
            }
            if (v4 == null) {
                aa4.j("velocityVector");
                throw null;
            }
            v4.set$animation_core(i, this.floatDecaySpec.getVelocityFromNanos(j, v.get$animation_core(i), v2.get$animation_core(i)));
            i++;
        }
    }
}
