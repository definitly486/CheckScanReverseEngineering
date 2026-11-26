package androidx.compose.animation.core;

import androidx.collection.IntListKt;
import androidx.collection.IntObjectMapKt;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class ArcAnimationSpec<T> implements DurationBasedAnimationSpec<T> {
    public static final int $stable = 0;
    private final int delayMillis;
    private final int durationMillis;
    private final Easing easing;
    private final int mode;

    public /* synthetic */ ArcAnimationSpec(int i, int i2, int i3, Easing easing, int i4, jh2 jh2Var) {
        this((i4 & 1) != 0 ? ArcMode.Companion.m1211getArcBelow9TMq4() : i, (i4 & 2) != 0 ? 300 : i2, (i4 & 4) != 0 ? 0 : i3, (i4 & 8) != 0 ? EasingKt.getFastOutSlowInEasing() : easing, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ArcAnimationSpec)) {
            return false;
        }
        ArcAnimationSpec arcAnimationSpec = (ArcAnimationSpec) obj;
        if (ArcMode.m1206equalsimpl0(this.mode, arcAnimationSpec.mode) && this.durationMillis == arcAnimationSpec.durationMillis && this.delayMillis == arcAnimationSpec.delayMillis) {
            return aa4.e(this.easing, arcAnimationSpec.easing);
        }
        return false;
    }

    public final int getDelayMillis() {
        return this.delayMillis;
    }

    public final int getDurationMillis() {
        return this.durationMillis;
    }

    public final Easing getEasing() {
        return this.easing;
    }

    /* JADX INFO: renamed from: getMode--9T-Mq4, reason: not valid java name */
    public final int m1202getMode9TMq4() {
        return this.mode;
    }

    public int hashCode() {
        return this.easing.hashCode() + (((((ArcMode.m1207hashCodeimpl(this.mode) * 31) + this.durationMillis) * 31) + this.delayMillis) * 31);
    }

    @Override // androidx.compose.animation.core.FiniteAnimationSpec, androidx.compose.animation.core.AnimationSpec
    public <V extends AnimationVector> VectorizedDurationBasedAnimationSpec<V> vectorize(TwoWayConverter<T, V> twoWayConverter) {
        return new VectorizedKeyframesSpec(IntListKt.intListOf(0, this.durationMillis), IntObjectMapKt.emptyIntObjectMap(), this.durationMillis, this.delayMillis, this.easing, this.mode, null);
    }

    private ArcAnimationSpec(int i, int i2, int i3, Easing easing) {
        this.mode = i;
        this.durationMillis = i2;
        this.delayMillis = i3;
        this.easing = easing;
    }

    public /* synthetic */ ArcAnimationSpec(int i, int i2, int i3, Easing easing, jh2 jh2Var) {
        this(i, i2, i3, easing);
    }
}
