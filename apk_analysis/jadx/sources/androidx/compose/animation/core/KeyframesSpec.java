package androidx.compose.animation.core;

import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class KeyframesSpec<T> implements DurationBasedAnimationSpec<T> {
    public static final int $stable = 0;
    private final KeyframesSpecConfig<T> config;

    public static final class KeyframesSpecConfig<T> extends KeyframesSpecBaseConfig<T, KeyframeEntity<T>> {
        public static final int $stable = 8;

        public KeyframesSpecConfig() {
            super(null);
        }

        @Override // androidx.compose.animation.core.KeyframesSpecBaseConfig
        public KeyframeEntity<T> at(T t, int i) {
            KeyframeEntity<T> keyframeEntity = new KeyframeEntity<>(t, null, 0, 6, null);
            getKeyframes$animation_core().set(i, keyframeEntity);
            return keyframeEntity;
        }

        @Override // androidx.compose.animation.core.KeyframesSpecBaseConfig
        public KeyframeEntity<T> atFraction(T t, float f) {
            return at((Object) t, Math.round(getDurationMillis() * f));
        }

        @Override // androidx.compose.animation.core.KeyframesSpecBaseConfig
        public KeyframeEntity<T> createEntityFor$animation_core(T t) {
            return new KeyframeEntity<>(t, null, 0, 6, null);
        }

        /* JADX INFO: renamed from: using-ngzHuyU, reason: not valid java name */
        public final KeyframeEntity<T> m1216usingngzHuyU(KeyframeEntity<T> keyframeEntity, int i) {
            keyframeEntity.m1215setArcModeRur9ykg$animation_core(i);
            return keyframeEntity;
        }

        @ul2
        public final void with(KeyframeEntity<T> keyframeEntity, Easing easing) {
            keyframeEntity.setEasing$animation_core(easing);
        }
    }

    public KeyframesSpec(KeyframesSpecConfig<T> keyframesSpecConfig) {
        this.config = keyframesSpecConfig;
    }

    public final KeyframesSpecConfig<T> getConfig() {
        return this.config;
    }

    @Override // androidx.compose.animation.core.FiniteAnimationSpec, androidx.compose.animation.core.AnimationSpec
    public <V extends AnimationVector> VectorizedKeyframesSpec<V> vectorize(TwoWayConverter<T, V> twoWayConverter) {
        long[] jArr;
        int[] iArr;
        MutableIntList mutableIntList = new MutableIntList(this.config.getKeyframes$animation_core().getSize() + 2);
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(this.config.getKeyframes$animation_core().getSize());
        MutableIntObjectMap<KeyframeEntity<T>> keyframes$animation_core = this.config.getKeyframes$animation_core();
        int[] iArr2 = keyframes$animation_core.keys;
        Object[] objArr = keyframes$animation_core.values;
        long[] jArr2 = keyframes$animation_core.metadata;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr2[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8;
                    int i3 = 8 - ((~(i - length)) >>> 31);
                    int i4 = 0;
                    while (i4 < i3) {
                        if ((255 & j) < 128) {
                            int i5 = (i << 3) + i4;
                            int i6 = iArr2[i5];
                            KeyframeEntity keyframeEntity = (KeyframeEntity) objArr[i5];
                            mutableIntList.add(i6);
                            mutableIntObjectMap.set(i6, new VectorizedKeyframeSpecElementInfo(twoWayConverter.getConvertToVector().invoke(keyframeEntity.getValue$animation_core()), keyframeEntity.getEasing$animation_core(), keyframeEntity.m1214getArcMode9TMq4$animation_core(), null));
                        }
                        j >>= i2;
                        i4++;
                        i2 = i2;
                        jArr2 = jArr2;
                        iArr2 = iArr2;
                    }
                    jArr = jArr2;
                    iArr = iArr2;
                    if (i3 != i2) {
                        break;
                    }
                } else {
                    jArr = jArr2;
                    iArr = iArr2;
                }
                if (i == length) {
                    break;
                }
                i++;
                jArr2 = jArr;
                iArr2 = iArr;
            }
        }
        if (!this.config.getKeyframes$animation_core().containsKey(0)) {
            mutableIntList.add(0, 0);
        }
        if (!this.config.getKeyframes$animation_core().containsKey(this.config.getDurationMillis())) {
            mutableIntList.add(this.config.getDurationMillis());
        }
        mutableIntList.sort();
        return new VectorizedKeyframesSpec<>(mutableIntList, mutableIntObjectMap, this.config.getDurationMillis(), this.config.getDelayMillis(), EasingKt.getLinearEasing(), ArcMode.Companion.m1212getArcLinear9TMq4(), null);
    }

    public static final class KeyframeEntity<T> extends KeyframeBaseEntity<T> {
        public static final int $stable = 8;
        private int arcMode;

        public /* synthetic */ KeyframeEntity(Object obj, Easing easing, int i, int i2, jh2 jh2Var) {
            this(obj, (i2 & 2) != 0 ? EasingKt.getLinearEasing() : easing, (i2 & 4) != 0 ? ArcMode.Companion.m1212getArcLinear9TMq4() : i, null);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof KeyframeEntity)) {
                return false;
            }
            KeyframeEntity keyframeEntity = (KeyframeEntity) obj;
            return aa4.e(keyframeEntity.getValue$animation_core(), getValue$animation_core()) && aa4.e(keyframeEntity.getEasing$animation_core(), getEasing$animation_core()) && ArcMode.m1206equalsimpl0(keyframeEntity.arcMode, this.arcMode);
        }

        /* JADX INFO: renamed from: getArcMode--9T-Mq4$animation_core, reason: not valid java name */
        public final int m1214getArcMode9TMq4$animation_core() {
            return this.arcMode;
        }

        public int hashCode() {
            T value$animation_core = getValue$animation_core();
            int iHashCode = value$animation_core != null ? value$animation_core.hashCode() : 0;
            return getEasing$animation_core().hashCode() + ((ArcMode.m1207hashCodeimpl(this.arcMode) + (iHashCode * 31)) * 31);
        }

        /* JADX INFO: renamed from: setArcMode-Rur9ykg$animation_core, reason: not valid java name */
        public final void m1215setArcModeRur9ykg$animation_core(int i) {
            this.arcMode = i;
        }

        private KeyframeEntity(T t, Easing easing, int i) {
            super(t, easing, null);
            this.arcMode = i;
        }

        public /* synthetic */ KeyframeEntity(Object obj, Easing easing, int i, jh2 jh2Var) {
            this(obj, easing, i);
        }
    }
}
