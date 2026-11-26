package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.TransformOriginKt;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionKt$TransformOriginVectorConverter$2 extends gh4 implements nl3<AnimationVector2D, TransformOrigin> {
    public static final EnterExitTransitionKt$TransformOriginVectorConverter$2 INSTANCE = new EnterExitTransitionKt$TransformOriginVectorConverter$2();

    public EnterExitTransitionKt$TransformOriginVectorConverter$2() {
        super(1);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ TransformOrigin invoke(AnimationVector2D animationVector2D) {
        return TransformOrigin.m6632boximpl(m1100invokeLIALnN8(animationVector2D));
    }

    /* JADX INFO: renamed from: invoke-LIALnN8, reason: not valid java name */
    public final long m1100invokeLIALnN8(AnimationVector2D animationVector2D) {
        return TransformOriginKt.TransformOrigin(animationVector2D.getV1(), animationVector2D.getV2());
    }
}
