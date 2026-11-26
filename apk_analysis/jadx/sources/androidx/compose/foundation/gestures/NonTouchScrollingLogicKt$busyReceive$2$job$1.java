package androidx.compose.foundation.gestures;

import androidx.compose.runtime.MonotonicFrameClockKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.qb4;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.NonTouchScrollingLogicKt$busyReceive$2$job$1", f = "NonTouchScrollingLogic.kt", l = {76}, m = "invokeSuspend", v = 1)
public final class NonTouchScrollingLogicKt$busyReceive$2$job$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    public NonTouchScrollingLogicKt$busyReceive$2$job$1(e02<? super NonTouchScrollingLogicKt$busyReceive$2$job$1> e02Var) {
        super(2, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invokeSuspend$lambda$0(long j) {
        return j59.a;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        NonTouchScrollingLogicKt$busyReceive$2$job$1 nonTouchScrollingLogicKt$busyReceive$2$job$1 = new NonTouchScrollingLogicKt$busyReceive$2$job$1(e02Var);
        nonTouchScrollingLogicKt$busyReceive$2$job$1.L$0 = obj;
        return nonTouchScrollingLogicKt$busyReceive$2$job$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((NonTouchScrollingLogicKt$busyReceive$2$job$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        y22 y22Var;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            y22Var = (y22) this.L$0;
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            y22Var = (y22) this.L$0;
            r57.b(obj);
        }
        while (qb4.h(y22Var.getCoroutineContext())) {
            s sVar = new s();
            this.L$0 = y22Var;
            this.label = 1;
            if (MonotonicFrameClockKt.withFrameNanos(sVar, this) == a32Var) {
                return a32Var;
            }
        }
        return j59.a;
    }
}
