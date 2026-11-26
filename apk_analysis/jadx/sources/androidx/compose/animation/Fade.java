package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
public final class Fade {
    public static final int $stable = 0;
    private final float alpha;
    private final FiniteAnimationSpec<Float> animationSpec;

    public Fade(float f, FiniteAnimationSpec<Float> finiteAnimationSpec) {
        this.alpha = f;
        this.animationSpec = finiteAnimationSpec;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Fade copy$default(Fade fade, float f, FiniteAnimationSpec finiteAnimationSpec, int i, Object obj) {
        if ((i & 1) != 0) {
            f = fade.alpha;
        }
        if ((i & 2) != 0) {
            finiteAnimationSpec = fade.animationSpec;
        }
        return fade.copy(f, finiteAnimationSpec);
    }

    public final float component1() {
        return this.alpha;
    }

    public final FiniteAnimationSpec<Float> component2() {
        return this.animationSpec;
    }

    public final Fade copy(float f, FiniteAnimationSpec<Float> finiteAnimationSpec) {
        return new Fade(f, finiteAnimationSpec);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Fade)) {
            return false;
        }
        Fade fade = (Fade) obj;
        return Float.compare(this.alpha, fade.alpha) == 0 && aa4.e(this.animationSpec, fade.animationSpec);
    }

    public final float getAlpha() {
        return this.alpha;
    }

    public final FiniteAnimationSpec<Float> getAnimationSpec() {
        return this.animationSpec;
    }

    public int hashCode() {
        return this.animationSpec.hashCode() + (Float.hashCode(this.alpha) * 31);
    }

    public String toString() {
        return "Fade(alpha=" + this.alpha + ", animationSpec=" + this.animationSpec + ')';
    }
}
