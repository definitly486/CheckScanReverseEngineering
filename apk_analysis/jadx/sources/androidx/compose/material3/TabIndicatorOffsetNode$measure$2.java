package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.unit.Dp;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.material3.TabIndicatorOffsetNode$measure$2", f = "TabRow.kt", l = {715}, m = "invokeSuspend")
public final class TabIndicatorOffsetNode$measure$2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ float $currentTabWidth;
    final /* synthetic */ Animatable<Dp, AnimationVector1D> $widthAnim;
    int label;
    final /* synthetic */ TabIndicatorOffsetNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TabIndicatorOffsetNode$measure$2(Animatable<Dp, AnimationVector1D> animatable, float f, TabIndicatorOffsetNode tabIndicatorOffsetNode, e02<? super TabIndicatorOffsetNode$measure$2> e02Var) {
        super(2, e02Var);
        this.$widthAnim = animatable;
        this.$currentTabWidth = f;
        this.this$0 = tabIndicatorOffsetNode;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new TabIndicatorOffsetNode$measure$2(this.$widthAnim, this.$currentTabWidth, this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((TabIndicatorOffsetNode$measure$2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            Animatable<Dp, AnimationVector1D> animatable = this.$widthAnim;
            Dp dpM9040boximpl = Dp.m9040boximpl(this.$currentTabWidth);
            FiniteAnimationSpec<Dp> animationSpec = this.this$0.getAnimationSpec();
            this.label = 1;
            if (Animatable.animateTo$default(animatable, dpM9040boximpl, animationSpec, null, null, this, 12, null) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
