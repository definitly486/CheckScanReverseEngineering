package androidx.compose.animation.core;

import androidx.collection.IntList;
import androidx.collection.IntObjectMap;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.animation.core.AnimationVector;
import defpackage.aa4;
import defpackage.b36;
import defpackage.jh2;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class VectorizedKeyframesSpec<V extends AnimationVector> implements VectorizedDurationBasedAnimationSpec<V> {
    public static final int $stable = 8;
    private ArcSpline arcSpline;
    private final Easing defaultEasing;
    private final int delayMillis;
    private final int durationMillis;
    private final int initialArcMode;
    private final IntObjectMap<VectorizedKeyframeSpecElementInfo<V>> keyframes;
    private V lastInitialValue;
    private V lastTargetValue;
    private int[] modes;
    private float[] posArray;
    private float[] slopeArray;
    private float[] times;
    private final IntList timestamps;
    private V valueVector;
    private V velocityVector;

    /* JADX WARN: Multi-variable type inference failed */
    public VectorizedKeyframesSpec(Map<Integer, ? extends b36<? extends V, ? extends Easing>> map, int i, int i2) {
        MutableIntList mutableIntList = new MutableIntList(map.size() + 2);
        Iterator<Map.Entry<Integer, ? extends b36<? extends V, ? extends Easing>>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            mutableIntList.add(it.next().getKey().intValue());
        }
        if (!map.containsKey(0)) {
            mutableIntList.add(0, 0);
        }
        if (!map.containsKey(Integer.valueOf(i))) {
            mutableIntList.add(i);
        }
        mutableIntList.sort();
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
        for (Map.Entry<Integer, ? extends b36<? extends V, ? extends Easing>> entry : map.entrySet()) {
            int iIntValue = entry.getKey().intValue();
            b36<? extends V, ? extends Easing> value = entry.getValue();
            mutableIntObjectMap.set(iIntValue, new VectorizedKeyframeSpecElementInfo((AnimationVector) value.b, (Easing) value.c, ArcMode.Companion.m1212getArcLinear9TMq4(), null));
        }
        this(mutableIntList, mutableIntObjectMap, i, i2, EasingKt.getLinearEasing(), ArcMode.Companion.m1212getArcLinear9TMq4(), null);
    }

    private final int findEntryForTimeMillis(int i) {
        int iBinarySearch$default = IntList.binarySearch$default(this.timestamps, i, 0, 0, 6, null);
        return iBinarySearch$default < -1 ? -(iBinarySearch$default + 2) : iBinarySearch$default;
    }

    private final float getEasedTime(int i) {
        return getEasedTimeFromIndex(findEntryForTimeMillis(i), i, false);
    }

    private final float getEasedTimeFromIndex(int i, int i2, boolean z) {
        Easing easing;
        float f;
        IntList intList = this.timestamps;
        if (i >= intList._size - 1) {
            f = i2;
        } else {
            int i3 = intList.get(i);
            int i4 = this.timestamps.get(i + 1);
            if (i2 != i3) {
                int i5 = i4 - i3;
                VectorizedKeyframeSpecElementInfo<V> vectorizedKeyframeSpecElementInfo = this.keyframes.get(i3);
                if (vectorizedKeyframeSpecElementInfo == null || (easing = vectorizedKeyframeSpecElementInfo.getEasing()) == null) {
                    easing = this.defaultEasing;
                }
                float f2 = i5;
                float fTransform = easing.transform((i2 - i3) / f2);
                return z ? fTransform : ((f2 * fTransform) + i3) / 1000.0f;
            }
            f = i3;
        }
        return f / 1000.0f;
    }

    private final void init(V v, V v2, V v3) {
        float[] fArr;
        boolean z = this.arcSpline != VectorizedAnimationSpecKt.EmptyArcSpline;
        if (this.valueVector == null) {
            this.valueVector = (V) AnimationVectorsKt.newInstance(v);
            this.velocityVector = (V) AnimationVectorsKt.newInstance(v3);
            int i = this.timestamps._size;
            float[] fArr2 = new float[i];
            for (int i2 = 0; i2 < i; i2++) {
                fArr2[i2] = this.timestamps.get(i2) / 1000.0f;
            }
            this.times = fArr2;
            int i3 = this.timestamps._size;
            int[] iArr = new int[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                VectorizedKeyframeSpecElementInfo<V> vectorizedKeyframeSpecElementInfo = this.keyframes.get(this.timestamps.get(i4));
                int iM1251getArcMode9TMq4 = vectorizedKeyframeSpecElementInfo != null ? vectorizedKeyframeSpecElementInfo.m1251getArcMode9TMq4() : this.initialArcMode;
                if (!ArcMode.m1206equalsimpl0(iM1251getArcMode9TMq4, ArcMode.Companion.m1212getArcLinear9TMq4())) {
                    z = true;
                }
                iArr[i4] = iM1251getArcMode9TMq4;
            }
            this.modes = iArr;
        }
        if (z) {
            if (this.arcSpline != VectorizedAnimationSpecKt.EmptyArcSpline && aa4.e(this.lastInitialValue, v) && aa4.e(this.lastTargetValue, v2)) {
                return;
            }
            this.lastInitialValue = v;
            this.lastTargetValue = v2;
            int size$animation_core = v.getSize$animation_core() + (v.getSize$animation_core() % 2);
            this.posArray = new float[size$animation_core];
            this.slopeArray = new float[size$animation_core];
            int i5 = this.timestamps._size;
            float[][] fArr3 = new float[i5][];
            for (int i6 = 0; i6 < i5; i6++) {
                int i7 = this.timestamps.get(i6);
                VectorizedKeyframeSpecElementInfo<V> vectorizedKeyframeSpecElementInfo2 = this.keyframes.get(i7);
                if (i7 == 0 && vectorizedKeyframeSpecElementInfo2 == null) {
                    fArr = new float[size$animation_core];
                    for (int i8 = 0; i8 < size$animation_core; i8++) {
                        fArr[i8] = v.get$animation_core(i8);
                    }
                } else if (i7 == getDurationMillis() && vectorizedKeyframeSpecElementInfo2 == null) {
                    fArr = new float[size$animation_core];
                    for (int i9 = 0; i9 < size$animation_core; i9++) {
                        fArr[i9] = v2.get$animation_core(i9);
                    }
                } else {
                    vectorizedKeyframeSpecElementInfo2.getClass();
                    AnimationVector vectorValue = vectorizedKeyframeSpecElementInfo2.getVectorValue();
                    float[] fArr4 = new float[size$animation_core];
                    for (int i10 = 0; i10 < size$animation_core; i10++) {
                        fArr4[i10] = vectorValue.get$animation_core(i10);
                    }
                    fArr = fArr4;
                }
                fArr3[i6] = fArr;
            }
            this.arcSpline = new ArcSpline(this.modes, this.times, fArr3);
        }
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
        AnimationVector vectorValue;
        AnimationVector vectorValue2;
        int iClampPlayTime = (int) VectorizedAnimationSpecKt.clampPlayTime(this, j / 1000000);
        VectorizedKeyframeSpecElementInfo<V> vectorizedKeyframeSpecElementInfo = this.keyframes.get(iClampPlayTime);
        if (vectorizedKeyframeSpecElementInfo != null) {
            return (V) vectorizedKeyframeSpecElementInfo.getVectorValue();
        }
        if (iClampPlayTime >= getDurationMillis()) {
            return v2;
        }
        if (iClampPlayTime <= 0) {
            return v;
        }
        init(v, v2, v3);
        V v4 = this.valueVector;
        v4.getClass();
        int i = 0;
        if (this.arcSpline != VectorizedAnimationSpecKt.EmptyArcSpline) {
            float easedTime = getEasedTime(iClampPlayTime);
            float[] fArr = this.posArray;
            this.arcSpline.getPos(easedTime, fArr);
            int length = fArr.length;
            while (i < length) {
                v4.set$animation_core(i, fArr[i]);
                i++;
            }
        } else {
            int iFindEntryForTimeMillis = findEntryForTimeMillis(iClampPlayTime);
            float easedTimeFromIndex = getEasedTimeFromIndex(iFindEntryForTimeMillis, iClampPlayTime, true);
            VectorizedKeyframeSpecElementInfo<V> vectorizedKeyframeSpecElementInfo2 = this.keyframes.get(this.timestamps.get(iFindEntryForTimeMillis));
            if (vectorizedKeyframeSpecElementInfo2 != null && (vectorValue2 = vectorizedKeyframeSpecElementInfo2.getVectorValue()) != null) {
                v = (V) vectorValue2;
            }
            VectorizedKeyframeSpecElementInfo<V> vectorizedKeyframeSpecElementInfo3 = this.keyframes.get(this.timestamps.get(iFindEntryForTimeMillis + 1));
            if (vectorizedKeyframeSpecElementInfo3 != null && (vectorValue = vectorizedKeyframeSpecElementInfo3.getVectorValue()) != null) {
                v2 = (V) vectorValue;
            }
            int size$animation_core = v4.getSize$animation_core();
            while (i < size$animation_core) {
                v4.set$animation_core(i, (v2.get$animation_core(i) * easedTimeFromIndex) + ((1.0f - easedTimeFromIndex) * v.get$animation_core(i)));
                i++;
            }
        }
        return v4;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public V getVelocityFromNanos(long j, V v, V v2, V v3) {
        long jClampPlayTime = VectorizedAnimationSpecKt.clampPlayTime(this, j / 1000000);
        if (jClampPlayTime < 0) {
            return v3;
        }
        init(v, v2, v3);
        V v4 = this.velocityVector;
        v4.getClass();
        int i = 0;
        if (this.arcSpline != VectorizedAnimationSpecKt.EmptyArcSpline) {
            float easedTime = getEasedTime((int) jClampPlayTime);
            float[] fArr = this.slopeArray;
            this.arcSpline.getSlope(easedTime, fArr);
            int length = fArr.length;
            while (i < length) {
                v4.set$animation_core(i, fArr[i]);
                i++;
            }
        } else {
            AnimationVector valueFromMillis = VectorizedAnimationSpecKt.getValueFromMillis(this, jClampPlayTime - 1, v, v2, v3);
            AnimationVector valueFromMillis2 = VectorizedAnimationSpecKt.getValueFromMillis(this, jClampPlayTime, v, v2, v3);
            int size$animation_core = valueFromMillis.getSize$animation_core();
            while (i < size$animation_core) {
                v4.set$animation_core(i, (valueFromMillis.get$animation_core(i) - valueFromMillis2.get$animation_core(i)) * 1000.0f);
                i++;
            }
        }
        return v4;
    }

    private VectorizedKeyframesSpec(IntList intList, IntObjectMap<VectorizedKeyframeSpecElementInfo<V>> intObjectMap, int i, int i2, Easing easing, int i3) {
        this.timestamps = intList;
        this.keyframes = intObjectMap;
        this.durationMillis = i;
        this.delayMillis = i2;
        this.defaultEasing = easing;
        this.initialArcMode = i3;
        this.modes = VectorizedAnimationSpecKt.EmptyIntArray;
        this.times = VectorizedAnimationSpecKt.EmptyFloatArray;
        this.posArray = VectorizedAnimationSpecKt.EmptyFloatArray;
        this.slopeArray = VectorizedAnimationSpecKt.EmptyFloatArray;
        this.arcSpline = VectorizedAnimationSpecKt.EmptyArcSpline;
    }

    public /* synthetic */ VectorizedKeyframesSpec(Map map, int i, int i2, int i3, jh2 jh2Var) {
        this(map, i, (i3 & 4) != 0 ? 0 : i2);
    }

    public /* synthetic */ VectorizedKeyframesSpec(IntList intList, IntObjectMap intObjectMap, int i, int i2, Easing easing, int i3, jh2 jh2Var) {
        this(intList, intObjectMap, i, i2, easing, i3);
    }
}
