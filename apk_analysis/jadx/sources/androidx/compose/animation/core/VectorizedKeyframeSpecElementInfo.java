package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class VectorizedKeyframeSpecElementInfo<V extends AnimationVector> {
    public static final int $stable = 0;
    private final int arcMode;
    private final Easing easing;
    private final V vectorValue;

    private VectorizedKeyframeSpecElementInfo(V v, Easing easing, int i) {
        this.vectorValue = v;
        this.easing = easing;
        this.arcMode = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: copy-2NF0KzA$default, reason: not valid java name */
    public static /* synthetic */ VectorizedKeyframeSpecElementInfo m1248copy2NF0KzA$default(VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo, AnimationVector animationVector, Easing easing, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            animationVector = vectorizedKeyframeSpecElementInfo.vectorValue;
        }
        if ((i2 & 2) != 0) {
            easing = vectorizedKeyframeSpecElementInfo.easing;
        }
        if ((i2 & 4) != 0) {
            i = vectorizedKeyframeSpecElementInfo.arcMode;
        }
        return vectorizedKeyframeSpecElementInfo.m1250copy2NF0KzA(animationVector, easing, i);
    }

    public final V component1() {
        return this.vectorValue;
    }

    public final Easing component2() {
        return this.easing;
    }

    /* JADX INFO: renamed from: component3--9T-Mq4, reason: not valid java name */
    public final int m1249component39TMq4() {
        return this.arcMode;
    }

    /* JADX INFO: renamed from: copy-2NF0KzA, reason: not valid java name */
    public final VectorizedKeyframeSpecElementInfo<V> m1250copy2NF0KzA(V v, Easing easing, int i) {
        return new VectorizedKeyframeSpecElementInfo<>(v, easing, i, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VectorizedKeyframeSpecElementInfo)) {
            return false;
        }
        VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo = (VectorizedKeyframeSpecElementInfo) obj;
        return aa4.e(this.vectorValue, vectorizedKeyframeSpecElementInfo.vectorValue) && aa4.e(this.easing, vectorizedKeyframeSpecElementInfo.easing) && ArcMode.m1206equalsimpl0(this.arcMode, vectorizedKeyframeSpecElementInfo.arcMode);
    }

    /* JADX INFO: renamed from: getArcMode--9T-Mq4, reason: not valid java name */
    public final int m1251getArcMode9TMq4() {
        return this.arcMode;
    }

    public final Easing getEasing() {
        return this.easing;
    }

    public final V getVectorValue() {
        return this.vectorValue;
    }

    public int hashCode() {
        return ArcMode.m1207hashCodeimpl(this.arcMode) + ((this.easing.hashCode() + (this.vectorValue.hashCode() * 31)) * 31);
    }

    public String toString() {
        return "VectorizedKeyframeSpecElementInfo(vectorValue=" + this.vectorValue + ", easing=" + this.easing + ", arcMode=" + ((Object) ArcMode.m1208toStringimpl(this.arcMode)) + ')';
    }

    public /* synthetic */ VectorizedKeyframeSpecElementInfo(AnimationVector animationVector, Easing easing, int i, jh2 jh2Var) {
        this(animationVector, easing, i);
    }
}
