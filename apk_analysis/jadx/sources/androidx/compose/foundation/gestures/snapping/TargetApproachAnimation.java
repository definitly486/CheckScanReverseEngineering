package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.gestures.ScrollScope;
import defpackage.a32;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class TargetApproachAnimation implements ApproachAnimation<Float, AnimationVector1D> {
    private final AnimationSpec<Float> animationSpec;

    public TargetApproachAnimation(AnimationSpec<Float> animationSpec) {
        this.animationSpec = animationSpec;
    }

    public Object approachAnimation(ScrollScope scrollScope, float f, float f2, nl3<? super Float, j59> nl3Var, e02<? super AnimationResult<Float, AnimationVector1D>> e02Var) {
        Object objAnimateWithTarget = SnapFlingBehaviorKt.animateWithTarget(scrollScope, Math.signum(f2) * Math.abs(f), f, AnimationStateKt.AnimationState$default(0.0f, f2, 0L, 0L, false, 28, null), this.animationSpec, nl3Var, e02Var);
        return objAnimateWithTarget == a32.COROUTINE_SUSPENDED ? objAnimateWithTarget : (AnimationResult) objAnimateWithTarget;
    }

    @Override // androidx.compose.foundation.gestures.snapping.ApproachAnimation
    public /* bridge */ /* synthetic */ Object approachAnimation(ScrollScope scrollScope, Float f, Float f2, nl3<? super Float, j59> nl3Var, e02 e02Var) {
        return approachAnimation(scrollScope, f.floatValue(), f2.floatValue(), nl3Var, (e02<? super AnimationResult<Float, AnimationVector1D>>) e02Var);
    }
}
