package androidx.compose.foundation.style;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector1D;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.style.StyleAnimations$Entry$animateIn$1", f = "StyleAnimations.kt", l = {86}, m = "invokeSuspend", v = 1)
public final class StyleAnimations$Entry$animateIn$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;
    final /* synthetic */ StyleAnimations.Entry this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StyleAnimations$Entry$animateIn$1(StyleAnimations.Entry entry, e02<? super StyleAnimations$Entry$animateIn$1> e02Var) {
        super(2, e02Var);
        this.this$0 = entry;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new StyleAnimations$Entry$animateIn$1(this.this$0, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((StyleAnimations$Entry$animateIn$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            Animatable<Float, AnimationVector1D> anim = this.this$0.getAnim();
            Float f = new Float(1.0f);
            AnimationSpec<Float> toSpec = this.this$0.getToSpec();
            this.label = 1;
            if (Animatable.animateTo$default(anim, f, toSpec, null, null, this, 12, null) == a32Var) {
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
