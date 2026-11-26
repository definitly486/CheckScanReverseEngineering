package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: Add missing generic type declarations: [S] */
/* JADX INFO: loaded from: classes.dex */
public final class AnimatedContentKt$AnimatedContent$1$1<S> extends gh4 implements nl3<AnimatedContentTransitionScope<S>, ContentTransform> {
    public static final AnimatedContentKt$AnimatedContent$1$1 INSTANCE = new AnimatedContentKt$AnimatedContent$1$1();

    public AnimatedContentKt$AnimatedContent$1$1() {
        super(1);
    }

    @Override // defpackage.nl3
    public final ContentTransform invoke(AnimatedContentTransitionScope<S> animatedContentTransitionScope) {
        return AnimatedContentKt.togetherWith(EnterExitTransitionKt.fadeIn$default(AnimationSpecKt.tween$default(220, 90, null, 4, null), 0.0f, 2, null).plus(EnterExitTransitionKt.m1092scaleInL8ZKhE$default(AnimationSpecKt.tween$default(220, 90, null, 4, null), 0.92f, 0L, 4, null)), EnterExitTransitionKt.fadeOut$default(AnimationSpecKt.tween$default(90, 0, null, 6, null), 0.0f, 2, null));
    }
}
