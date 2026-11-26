package androidx.compose.foundation.style;

import androidx.compose.animation.core.Animatable;
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
@bd2(c = "androidx.compose.foundation.style.StyleAnimations$Entry$snapOut$1", f = "StyleAnimations.kt", l = {113}, m = "invokeSuspend", v = 1)
public final class StyleAnimations$Entry$snapOut$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;
    final /* synthetic */ StyleAnimations.Entry this$0;
    final /* synthetic */ StyleAnimations this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StyleAnimations$Entry$snapOut$1(StyleAnimations.Entry entry, StyleAnimations styleAnimations, e02<? super StyleAnimations$Entry$snapOut$1> e02Var) {
        super(2, e02Var);
        this.this$0 = entry;
        this.this$1 = styleAnimations;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new StyleAnimations$Entry$snapOut$1(this.this$0, this.this$1, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((StyleAnimations$Entry$snapOut$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [j59, java.lang.Object] */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        try {
            if (i == 0) {
                r57.b(obj);
                Animatable<Float, AnimationVector1D> anim = this.this$0.getAnim();
                Float f = new Float(0.0f);
                this.label = 1;
                if (anim.snapTo(f, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            this.this$1.cleanupAnimations();
            this = j59.a;
            return this;
        } catch (Throwable th) {
            this.this$1.cleanupAnimations();
            throw th;
        }
    }
}
