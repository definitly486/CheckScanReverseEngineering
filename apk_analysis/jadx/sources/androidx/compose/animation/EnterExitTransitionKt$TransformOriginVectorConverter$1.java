package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.ui.graphics.TransformOrigin;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionKt$TransformOriginVectorConverter$1 extends gh4 implements nl3<TransformOrigin, AnimationVector2D> {
    public static final EnterExitTransitionKt$TransformOriginVectorConverter$1 INSTANCE = new EnterExitTransitionKt$TransformOriginVectorConverter$1();

    public EnterExitTransitionKt$TransformOriginVectorConverter$1() {
        super(1);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ AnimationVector2D invoke(TransformOrigin transformOrigin) {
        return m1099invoke__ExYCQ(transformOrigin.m6644unboximpl());
    }

    /* JADX INFO: renamed from: invoke-__ExYCQ, reason: not valid java name */
    public final AnimationVector2D m1099invoke__ExYCQ(long j) {
        return new AnimationVector2D(TransformOrigin.m6640getPivotFractionXimpl(j), TransformOrigin.m6641getPivotFractionYimpl(j));
    }
}
