package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.graphics.TransformOrigin;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class Scale {
    public static final int $stable = 0;
    private final FiniteAnimationSpec<Float> animationSpec;
    private final float scale;
    private final long transformOrigin;

    private Scale(float f, long j, FiniteAnimationSpec<Float> finiteAnimationSpec) {
        this.scale = f;
        this.transformOrigin = j;
        this.animationSpec = finiteAnimationSpec;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: copy-bnNdC4k$default, reason: not valid java name */
    public static /* synthetic */ Scale m1143copybnNdC4k$default(Scale scale, float f, long j, FiniteAnimationSpec finiteAnimationSpec, int i, Object obj) {
        if ((i & 1) != 0) {
            f = scale.scale;
        }
        if ((i & 2) != 0) {
            j = scale.transformOrigin;
        }
        if ((i & 4) != 0) {
            finiteAnimationSpec = scale.animationSpec;
        }
        return scale.m1145copybnNdC4k(f, j, finiteAnimationSpec);
    }

    public final float component1() {
        return this.scale;
    }

    /* JADX INFO: renamed from: component2-SzJe1aQ, reason: not valid java name */
    public final long m1144component2SzJe1aQ() {
        return this.transformOrigin;
    }

    public final FiniteAnimationSpec<Float> component3() {
        return this.animationSpec;
    }

    /* JADX INFO: renamed from: copy-bnNdC4k, reason: not valid java name */
    public final Scale m1145copybnNdC4k(float f, long j, FiniteAnimationSpec<Float> finiteAnimationSpec) {
        return new Scale(f, j, finiteAnimationSpec, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scale)) {
            return false;
        }
        Scale scale = (Scale) obj;
        return Float.compare(this.scale, scale.scale) == 0 && TransformOrigin.m6639equalsimpl0(this.transformOrigin, scale.transformOrigin) && aa4.e(this.animationSpec, scale.animationSpec);
    }

    public final FiniteAnimationSpec<Float> getAnimationSpec() {
        return this.animationSpec;
    }

    public final float getScale() {
        return this.scale;
    }

    /* JADX INFO: renamed from: getTransformOrigin-SzJe1aQ, reason: not valid java name */
    public final long m1146getTransformOriginSzJe1aQ() {
        return this.transformOrigin;
    }

    public int hashCode() {
        return this.animationSpec.hashCode() + ((TransformOrigin.m6642hashCodeimpl(this.transformOrigin) + (Float.hashCode(this.scale) * 31)) * 31);
    }

    public String toString() {
        return "Scale(scale=" + this.scale + ", transformOrigin=" + ((Object) TransformOrigin.m6643toStringimpl(this.transformOrigin)) + ", animationSpec=" + this.animationSpec + ')';
    }

    public /* synthetic */ Scale(float f, long j, FiniteAnimationSpec finiteAnimationSpec, jh2 jh2Var) {
        this(f, j, finiteAnimationSpec);
    }
}
