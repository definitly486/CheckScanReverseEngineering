package androidx.window.embedding;

import defpackage.aa4;
import defpackage.fg;
import defpackage.jh;
import defpackage.jh2;

/* JADX INFO: loaded from: classes3.dex */
public final class EmbeddingAnimationParams {
    private final EmbeddingAnimationBackground animationBackground;
    private final AnimationSpec changeAnimation;
    private final AnimationSpec closeAnimation;
    private final AnimationSpec openAnimation;

    public static final class Builder {
        private EmbeddingAnimationBackground animationBackground = EmbeddingAnimationBackground.DEFAULT;
        private AnimationSpec changeAnimation;
        private AnimationSpec closeAnimation;
        private AnimationSpec openAnimation;

        public Builder() {
            AnimationSpec animationSpec = AnimationSpec.DEFAULT;
            this.openAnimation = animationSpec;
            this.closeAnimation = animationSpec;
            this.changeAnimation = animationSpec;
        }

        public final EmbeddingAnimationParams build() {
            return new EmbeddingAnimationParams(this.animationBackground, this.openAnimation, this.closeAnimation, this.changeAnimation, null);
        }

        public final Builder setAnimationBackground(EmbeddingAnimationBackground embeddingAnimationBackground) {
            embeddingAnimationBackground.getClass();
            this.animationBackground = embeddingAnimationBackground;
            return this;
        }

        public final Builder setChangeAnimation(AnimationSpec animationSpec) {
            animationSpec.getClass();
            this.changeAnimation = animationSpec;
            return this;
        }

        public final Builder setCloseAnimation(AnimationSpec animationSpec) {
            animationSpec.getClass();
            this.closeAnimation = animationSpec;
            return this;
        }

        public final Builder setOpenAnimation(AnimationSpec animationSpec) {
            animationSpec.getClass();
            this.openAnimation = animationSpec;
            return this;
        }
    }

    public /* synthetic */ EmbeddingAnimationParams(EmbeddingAnimationBackground embeddingAnimationBackground, AnimationSpec animationSpec, AnimationSpec animationSpec2, AnimationSpec animationSpec3, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? EmbeddingAnimationBackground.DEFAULT : embeddingAnimationBackground, (i & 2) != 0 ? AnimationSpec.DEFAULT : animationSpec, (i & 4) != 0 ? AnimationSpec.DEFAULT : animationSpec2, (i & 8) != 0 ? AnimationSpec.DEFAULT : animationSpec3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EmbeddingAnimationParams)) {
            return false;
        }
        EmbeddingAnimationParams embeddingAnimationParams = (EmbeddingAnimationParams) obj;
        return aa4.e(this.animationBackground, embeddingAnimationParams.animationBackground) && aa4.e(this.openAnimation, embeddingAnimationParams.openAnimation) && aa4.e(this.closeAnimation, embeddingAnimationParams.closeAnimation) && aa4.e(this.changeAnimation, embeddingAnimationParams.changeAnimation);
    }

    public final EmbeddingAnimationBackground getAnimationBackground() {
        return this.animationBackground;
    }

    public final AnimationSpec getChangeAnimation() {
        return this.changeAnimation;
    }

    public final AnimationSpec getCloseAnimation() {
        return this.closeAnimation;
    }

    public final AnimationSpec getOpenAnimation() {
        return this.openAnimation;
    }

    public int hashCode() {
        return this.changeAnimation.hashCode() + ((this.closeAnimation.hashCode() + ((this.openAnimation.hashCode() + (this.animationBackground.hashCode() * 31)) * 31)) * 31);
    }

    public String toString() {
        return "EmbeddingAnimationParams:{animationBackground=" + this.animationBackground + ", openAnimation=" + this.openAnimation + ", closeAnimation=" + this.closeAnimation + ", changeAnimation=" + this.changeAnimation + " }";
    }

    public static final class AnimationSpec {
        public static final Companion Companion = new Companion(null);
        public static final AnimationSpec DEFAULT = new AnimationSpec(0);
        public static final AnimationSpec JUMP_CUT = new AnimationSpec(1);
        private final int value;

        private AnimationSpec(int i) {
            this.value = i;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof AnimationSpec) && this.value == ((AnimationSpec) obj).value;
        }

        public final int getValue$window_release() {
            return this.value;
        }

        public int hashCode() {
            return this.value * 31;
        }

        public String toString() {
            int i = this.value;
            if (i == 0) {
                return "DEFAULT";
            }
            if (i == 1) {
                return "JUMP_CUT";
            }
            return "Unknown value: " + this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final AnimationSpec getAnimationSpecFromValue$window_release(int i) {
                AnimationSpec animationSpec = AnimationSpec.DEFAULT;
                if (i == animationSpec.getValue$window_release()) {
                    return animationSpec;
                }
                AnimationSpec animationSpec2 = AnimationSpec.JUMP_CUT;
                if (i == animationSpec2.getValue$window_release()) {
                    return animationSpec2;
                }
                fg.c(jh.b(i, "Undefined value:"));
                return null;
            }

            private Companion() {
            }
        }
    }

    private EmbeddingAnimationParams(EmbeddingAnimationBackground embeddingAnimationBackground, AnimationSpec animationSpec, AnimationSpec animationSpec2, AnimationSpec animationSpec3) {
        this.animationBackground = embeddingAnimationBackground;
        this.openAnimation = animationSpec;
        this.closeAnimation = animationSpec2;
        this.changeAnimation = animationSpec3;
    }

    public /* synthetic */ EmbeddingAnimationParams(EmbeddingAnimationBackground embeddingAnimationBackground, AnimationSpec animationSpec, AnimationSpec animationSpec2, AnimationSpec animationSpec3, jh2 jh2Var) {
        this(embeddingAnimationBackground, animationSpec, animationSpec2, animationSpec3);
    }
}
