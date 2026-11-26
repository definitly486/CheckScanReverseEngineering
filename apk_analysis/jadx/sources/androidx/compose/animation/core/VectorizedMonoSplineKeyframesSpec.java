package androidx.compose.animation.core;

import androidx.collection.IntList;
import androidx.collection.IntObjectMap;
import androidx.compose.animation.core.AnimationVector;
import defpackage.aa4;
import defpackage.b36;

/* JADX INFO: loaded from: classes.dex */
public final class VectorizedMonoSplineKeyframesSpec<V extends AnimationVector> implements VectorizedDurationBasedAnimationSpec<V> {
    public static final int $stable = 8;
    private final int delayMillis;
    private final int durationMillis;
    private final IntObjectMap<b36<V, Easing>> keyframes;
    private V lastInitialValue;
    private V lastTargetValue;
    private MonoSpline monoSpline;
    private final float periodicBias;
    private float[] times;
    private final IntList timestamps;
    private V valueVector;
    private float[][] values;
    private V velocityVector;

    public VectorizedMonoSplineKeyframesSpec(IntList intList, IntObjectMap<b36<V, Easing>> intObjectMap, int i, int i2, float f) {
        this.timestamps = intList;
        this.keyframes = intObjectMap;
        this.durationMillis = i;
        this.delayMillis = i2;
        this.periodicBias = f;
    }

    private final int findEntryForTimeMillis(int i) {
        int iBinarySearch$default = IntList.binarySearch$default(this.timestamps, i, 0, 0, 6, null);
        return iBinarySearch$default < -1 ? -(iBinarySearch$default + 2) : iBinarySearch$default;
    }

    private final float getEasedTimeFromIndex(int i, int i2) {
        float fTransform;
        IntList intList = this.timestamps;
        if (i >= intList._size - 1) {
            fTransform = i2;
        } else {
            int i3 = intList.get(i);
            int i4 = this.timestamps.get(i + 1);
            if (i2 == i3) {
                fTransform = i3;
            } else {
                Easing easing = getEasing(i);
                float f = i2 - i3;
                float f2 = i4 - i3;
                fTransform = (easing.transform(f / f2) * f2) + i3;
            }
        }
        return fTransform / 1000.0f;
    }

    private final Easing getEasing(int i) {
        Easing easing;
        b36<V, Easing> b36Var = this.keyframes.get(this.timestamps.get(i));
        return (b36Var == null || (easing = b36Var.c) == null) ? EasingKt.getLinearEasing() : easing;
    }

    private final void init(V v, V v2, V v3) {
        float[] fArr;
        if (this.valueVector == null) {
            this.valueVector = (V) AnimationVectorsKt.newInstance(v);
            this.velocityVector = (V) AnimationVectorsKt.newInstance(v3);
            int i = this.timestamps._size;
            float[] fArr2 = new float[i];
            for (int i2 = 0; i2 < i; i2++) {
                fArr2[i2] = this.timestamps.get(i2) / 1000.0f;
            }
            this.times = fArr2;
        }
        if (this.monoSpline != null && aa4.e(this.lastInitialValue, v) && aa4.e(this.lastTargetValue, v2)) {
            return;
        }
        boolean zE = aa4.e(this.lastInitialValue, v);
        boolean zE2 = aa4.e(this.lastTargetValue, v2);
        this.lastInitialValue = v;
        this.lastTargetValue = v2;
        int size$animation_core = v.getSize$animation_core();
        float[][] fArr3 = this.values;
        if (fArr3 == null) {
            int i3 = this.timestamps._size;
            fArr3 = new float[i3][];
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = this.timestamps.get(i4);
                b36<V, Easing> b36Var = this.keyframes.get(i5);
                if (i5 == 0 && b36Var == null) {
                    fArr = new float[size$animation_core];
                    for (int i6 = 0; i6 < size$animation_core; i6++) {
                        fArr[i6] = v.get$animation_core(i6);
                    }
                } else if (i5 == getDurationMillis() && b36Var == null) {
                    fArr = new float[size$animation_core];
                    for (int i7 = 0; i7 < size$animation_core; i7++) {
                        fArr[i7] = v2.get$animation_core(i7);
                    }
                } else {
                    b36Var.getClass();
                    V v4 = b36Var.b;
                    float[] fArr4 = new float[size$animation_core];
                    for (int i8 = 0; i8 < size$animation_core; i8++) {
                        fArr4[i8] = v4.get$animation_core(i8);
                    }
                    fArr = fArr4;
                }
                fArr3[i4] = fArr;
            }
            this.values = fArr3;
        } else {
            if (!zE && !this.keyframes.containsKey(0)) {
                int iBinarySearch$default = IntList.binarySearch$default(this.timestamps, 0, 0, 0, 6, null);
                float[] fArr5 = new float[size$animation_core];
                for (int i9 = 0; i9 < size$animation_core; i9++) {
                    fArr5[i9] = v.get$animation_core(i9);
                }
                fArr3[iBinarySearch$default] = fArr5;
            }
            if (!zE2 && !this.keyframes.containsKey(getDurationMillis())) {
                int iBinarySearch$default2 = IntList.binarySearch$default(this.timestamps, getDurationMillis(), 0, 0, 6, null);
                float[] fArr6 = new float[size$animation_core];
                for (int i10 = 0; i10 < size$animation_core; i10++) {
                    fArr6[i10] = v2.get$animation_core(i10);
                }
                fArr3[iBinarySearch$default2] = fArr6;
            }
        }
        float[] fArr7 = this.times;
        if (fArr7 == null) {
            aa4.j("times");
            throw null;
        }
        this.monoSpline = new MonoSpline(fArr7, fArr3, this.periodicBias);
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public int getDelayMillis() {
        return this.delayMillis;
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public int getDurationMillis() {
        return this.durationMillis;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public V getValueFromNanos(long j, V v, V v2, V v3) {
        int iClampPlayTime = (int) VectorizedAnimationSpecKt.clampPlayTime(this, j / 1000000);
        b36<V, Easing> b36Var = this.keyframes.get(iClampPlayTime);
        if (b36Var != null) {
            return b36Var.b;
        }
        if (iClampPlayTime >= getDurationMillis()) {
            return v2;
        }
        if (iClampPlayTime <= 0) {
            return v;
        }
        init(v, v2, v3);
        int iFindEntryForTimeMillis = findEntryForTimeMillis(iClampPlayTime);
        V v4 = this.valueVector;
        v4.getClass();
        MonoSpline monoSpline = this.monoSpline;
        monoSpline.getClass();
        monoSpline.getPos(getEasedTimeFromIndex(iFindEntryForTimeMillis, iClampPlayTime), v4, iFindEntryForTimeMillis);
        return v4;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public V getVelocityFromNanos(long j, V v, V v2, V v3) {
        int iClampPlayTime = (int) VectorizedAnimationSpecKt.clampPlayTime(this, j / 1000000);
        init(v, v2, v3);
        int iFindEntryForTimeMillis = findEntryForTimeMillis(iClampPlayTime);
        V v4 = this.velocityVector;
        v4.getClass();
        MonoSpline monoSpline = this.monoSpline;
        monoSpline.getClass();
        monoSpline.getSlope(getEasedTimeFromIndex(iFindEntryForTimeMillis, iClampPlayTime), v4, iFindEntryForTimeMillis);
        return v4;
    }
}
