package androidx.compose.animation.core;

import androidx.compose.runtime.MonotonicFrameClockKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.animation.core.Transition$animateTo$1$1$1", f = "Transition.kt", l = {1222}, m = "invokeSuspend", v = 1)
public final class Transition$animateTo$1$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    float F$0;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ Transition<S> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Transition$animateTo$1$1$1(Transition<S> transition, e02<? super Transition$animateTo$1$1$1> e02Var) {
        super(2, e02Var);
        this.this$0 = transition;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(Transition transition, float f, long j) {
        if (!transition.isSeeking()) {
            transition.onFrame$animation_core(j, f);
        }
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        Transition$animateTo$1$1$1 transition$animateTo$1$1$1 = new Transition$animateTo$1$1$1(this.this$0, e02Var);
        transition$animateTo$1$1$1.L$0 = obj;
        return transition$animateTo$1$1$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((Transition$animateTo$1$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        final float durationScale;
        y22 y22Var;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            y22 y22Var2 = (y22) this.L$0;
            durationScale = SuspendAnimationKt.getDurationScale(y22Var2.getCoroutineContext());
            y22Var = y22Var2;
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            durationScale = this.F$0;
            y22Var = (y22) this.L$0;
            r57.b(obj);
        }
        while (z22.e(y22Var)) {
            final Transition<S> transition = this.this$0;
            nl3 nl3Var = new nl3() { // from class: androidx.compose.animation.core.d
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return Transition$animateTo$1$1$1.invokeSuspend$lambda$0(transition, durationScale, ((Long) obj2).longValue());
                }
            };
            this.L$0 = y22Var;
            this.F$0 = durationScale;
            this.label = 1;
            if (MonotonicFrameClockKt.withFrameNanos(nl3Var, this) == a32Var) {
                return a32Var;
            }
        }
        return j59.a;
    }
}
