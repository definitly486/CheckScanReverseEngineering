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
@bd2(c = "androidx.compose.foundation.style.StyleAnimations$Entry$animateOut$1", f = "StyleAnimations.kt", l = {99}, m = "invokeSuspend", v = 1)
public final class StyleAnimations$Entry$animateOut$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    int label;
    final /* synthetic */ StyleAnimations.Entry this$0;
    final /* synthetic */ StyleAnimations this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StyleAnimations$Entry$animateOut$1(StyleAnimations.Entry entry, StyleAnimations styleAnimations, e02<? super StyleAnimations$Entry$animateOut$1> e02Var) {
        super(2, e02Var);
        this.this$0 = entry;
        this.this$1 = styleAnimations;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new StyleAnimations$Entry$animateOut$1(this.this$0, this.this$1, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((StyleAnimations$Entry$animateOut$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        StyleAnimations$Entry$animateOut$1 styleAnimations$Entry$animateOut$1;
        Throwable th;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            try {
                r57.b(obj);
                styleAnimations$Entry$animateOut$1 = this;
                styleAnimations$Entry$animateOut$1.this$1.cleanupAnimations();
                return j59.a;
            } catch (Throwable th2) {
                th = th2;
                styleAnimations$Entry$animateOut$1 = this;
                styleAnimations$Entry$animateOut$1.this$1.cleanupAnimations();
                throw th;
            }
        }
        r57.b(obj);
        try {
            Animatable<Float, AnimationVector1D> anim = this.this$0.getAnim();
            try {
                Float f = new Float(0.0f);
                AnimationSpec<Float> fromSpec = this.this$0.getFromSpec();
                this.label = 1;
                styleAnimations$Entry$animateOut$1 = this;
                try {
                    obj = Animatable.animateTo$default(anim, f, fromSpec, null, null, styleAnimations$Entry$animateOut$1, 12, null);
                    if (obj == a32Var) {
                        return a32Var;
                    }
                    styleAnimations$Entry$animateOut$1.this$1.cleanupAnimations();
                    return j59.a;
                } catch (Throwable th3) {
                    th = th3;
                    th = th;
                    styleAnimations$Entry$animateOut$1.this$1.cleanupAnimations();
                    throw th;
                }
            } catch (Throwable th4) {
                styleAnimations$Entry$animateOut$1 = this;
                th = th4;
                styleAnimations$Entry$animateOut$1.this$1.cleanupAnimations();
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            styleAnimations$Entry$animateOut$1 = this;
            th = th;
            styleAnimations$Entry$animateOut$1.this$1.cleanupAnimations();
            throw th;
        }
    }
}
