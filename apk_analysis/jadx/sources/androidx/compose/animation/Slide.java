package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import defpackage.aa4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class Slide {
    public static final int $stable = 0;
    private final FiniteAnimationSpec<IntOffset> animationSpec;
    private final nl3<IntSize, IntOffset> slideOffset;

    /* JADX WARN: Multi-variable type inference failed */
    public Slide(nl3<? super IntSize, IntOffset> nl3Var, FiniteAnimationSpec<IntOffset> finiteAnimationSpec) {
        this.slideOffset = nl3Var;
        this.animationSpec = finiteAnimationSpec;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Slide copy$default(Slide slide, nl3 nl3Var, FiniteAnimationSpec finiteAnimationSpec, int i, Object obj) {
        if ((i & 1) != 0) {
            nl3Var = slide.slideOffset;
        }
        if ((i & 2) != 0) {
            finiteAnimationSpec = slide.animationSpec;
        }
        return slide.copy(nl3Var, finiteAnimationSpec);
    }

    public final nl3<IntSize, IntOffset> component1() {
        return this.slideOffset;
    }

    public final FiniteAnimationSpec<IntOffset> component2() {
        return this.animationSpec;
    }

    public final Slide copy(nl3<? super IntSize, IntOffset> nl3Var, FiniteAnimationSpec<IntOffset> finiteAnimationSpec) {
        return new Slide(nl3Var, finiteAnimationSpec);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Slide)) {
            return false;
        }
        Slide slide = (Slide) obj;
        return aa4.e(this.slideOffset, slide.slideOffset) && aa4.e(this.animationSpec, slide.animationSpec);
    }

    public final FiniteAnimationSpec<IntOffset> getAnimationSpec() {
        return this.animationSpec;
    }

    public final nl3<IntSize, IntOffset> getSlideOffset() {
        return this.slideOffset;
    }

    public int hashCode() {
        return this.animationSpec.hashCode() + (this.slideOffset.hashCode() * 31);
    }

    public String toString() {
        return "Slide(slideOffset=" + this.slideOffset + ", animationSpec=" + this.animationSpec + ')';
    }
}
