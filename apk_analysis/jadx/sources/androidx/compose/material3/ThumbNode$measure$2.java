package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
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
@bd2(c = "androidx.compose.material3.ThumbNode$measure$2", f = "Switch.kt", l = {278}, m = "invokeSuspend")
public final class ThumbNode$measure$2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ float $offset;
    int label;
    final /* synthetic */ ThumbNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThumbNode$measure$2(ThumbNode thumbNode, float f, e02<? super ThumbNode$measure$2> e02Var) {
        super(2, e02Var);
        this.this$0 = thumbNode;
        this.$offset = f;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new ThumbNode$measure$2(this.this$0, this.$offset, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((ThumbNode$measure$2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            Animatable animatable = this.this$0.offsetAnim;
            if (animatable != null) {
                Float f = new Float(this.$offset);
                FiniteAnimationSpec<Float> animationSpec = this.this$0.isPressed ? SwitchKt.SnapSpec : this.this$0.getAnimationSpec();
                this.label = 1;
                obj = Animatable.animateTo$default(animatable, f, animationSpec, null, null, this, 12, null);
                if (obj == a32Var) {
                    return a32Var;
                }
            }
            return j59.a;
        }
        if (i != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        return j59.a;
    }
}
