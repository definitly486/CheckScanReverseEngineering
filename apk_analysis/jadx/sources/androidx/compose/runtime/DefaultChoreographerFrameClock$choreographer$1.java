package androidx.compose.runtime;

import android.view.Choreographer;
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
@bd2(c = "androidx.compose.runtime.DefaultChoreographerFrameClock$choreographer$1", f = "MonotonicFrameClock.android.kt", l = {}, m = "invokeSuspend", v = 1)
public final class DefaultChoreographerFrameClock$choreographer$1 extends pg8 implements bm3<y22, e02<? super Choreographer>, Object> {
    int label;

    public DefaultChoreographerFrameClock$choreographer$1(e02<? super DefaultChoreographerFrameClock$choreographer$1> e02Var) {
        super(2, e02Var);
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DefaultChoreographerFrameClock$choreographer$1(e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super Choreographer> e02Var) {
        return ((DefaultChoreographerFrameClock$choreographer$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            r57.b(obj);
            return Choreographer.getInstance();
        }
        ah.f("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
