package androidx.compose.animation.core;

import defpackage.a31;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.yg5;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.animation.core.TransitionKt$rememberTransition$2$1", f = "Transition.kt", l = {2194}, m = "invokeSuspend", v = 1)
public final class TransitionKt$rememberTransition$2$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ TransitionState<T> $transitionState;
    Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransitionKt$rememberTransition$2$1(TransitionState<T> transitionState, e02<? super TransitionKt$rememberTransition$2$1> e02Var) {
        super(2, e02Var);
        this.$transitionState = transitionState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new TransitionKt$rememberTransition$2$1(this.$transitionState, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((TransitionKt$rememberTransition$2$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        yg5 yg5Var;
        TransitionState transitionState;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            ((SeekableTransitionState) this.$transitionState).observeTotalDuration$animation_core();
            yg5 compositionContinuationMutex$animation_core = ((SeekableTransitionState) this.$transitionState).getCompositionContinuationMutex$animation_core();
            TransitionState transitionState2 = this.$transitionState;
            this.L$0 = compositionContinuationMutex$animation_core;
            this.L$1 = transitionState2;
            this.label = 1;
            if (compositionContinuationMutex$animation_core.lock(null, this) == a32Var) {
                return a32Var;
            }
            yg5Var = compositionContinuationMutex$animation_core;
            transitionState = transitionState2;
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            transitionState = (TransitionState) this.L$1;
            yg5Var = (yg5) this.L$0;
            r57.b(obj);
        }
        try {
            ((SeekableTransitionState) transitionState).setComposedTargetState$animation_core(((SeekableTransitionState) transitionState).getTargetState());
            a31 compositionContinuation$animation_core = ((SeekableTransitionState) transitionState).getCompositionContinuation$animation_core();
            if (compositionContinuation$animation_core != null) {
                compositionContinuation$animation_core.resumeWith(((SeekableTransitionState) transitionState).getTargetState());
            }
            ((SeekableTransitionState) transitionState).setCompositionContinuation$animation_core(null);
            j59 j59Var = j59.a;
            return j59.a;
        } finally {
            yg5Var.unlock(null);
        }
    }
}
