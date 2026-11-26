package androidx.compose.animation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.ui.geometry.Offset;
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
@bd2(c = "androidx.compose.animation.SharedElement$updateExitVelocity$1", f = "SharedElement.kt", l = {94}, m = "invokeSuspend", v = 1)
public final class SharedElement$updateExitVelocity$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ long $velocity;
    int label;
    final /* synthetic */ SharedElement this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedElement$updateExitVelocity$1(SharedElement sharedElement, long j, e02<? super SharedElement$updateExitVelocity$1> e02Var) {
        super(2, e02Var);
        this.this$0 = sharedElement;
        this.$velocity = j;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new SharedElement$updateExitVelocity$1(this.this$0, this.$velocity, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((SharedElement$updateExitVelocity$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        SharedElement$updateExitVelocity$1 sharedElement$updateExitVelocity$1;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            Animatable animatable = this.this$0.momentumAnimation;
            Offset offsetM5976boximpl = Offset.m5976boximpl(Offset.Companion.m6003getZeroF1C5BW0());
            SpringSpec springSpec = SharedElementKt.DefaultMomentumSpring;
            Offset offsetM5976boximpl2 = Offset.m5976boximpl(SharedElementKt.m1149toOffsetTH1AsA0(this.$velocity));
            this.label = 1;
            sharedElement$updateExitVelocity$1 = this;
            if (Animatable.animateTo$default(animatable, offsetM5976boximpl, springSpec, offsetM5976boximpl2, null, sharedElement$updateExitVelocity$1, 8, null) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            sharedElement$updateExitVelocity$1 = this;
        }
        sharedElement$updateExitVelocity$1.this$0.animationSpecFinalized = true;
        return j59.a;
    }
}
