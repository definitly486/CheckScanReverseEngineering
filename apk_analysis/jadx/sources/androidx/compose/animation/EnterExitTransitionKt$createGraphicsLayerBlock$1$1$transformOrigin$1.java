package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.ui.graphics.TransformOrigin;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$1 extends gh4 implements nl3<Transition.Segment<EnterExitState>, FiniteAnimationSpec<TransformOrigin>> {
    public static final EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$1 INSTANCE = new EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$1();

    public EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$1() {
        super(1);
    }

    @Override // defpackage.nl3
    public final FiniteAnimationSpec<TransformOrigin> invoke(Transition.Segment<EnterExitState> segment) {
        return AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
    }
}
