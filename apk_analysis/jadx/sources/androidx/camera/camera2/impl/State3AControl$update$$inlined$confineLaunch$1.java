package androidx.camera.camera2.impl;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.q07;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.State3AControl$update$$inlined$confineLaunch$1", f = "State3AControl.kt", l = {}, m = "invokeSuspend", v = 1)
public final class State3AControl$update$$inlined$confineLaunch$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ q07 $revision$inlined;
    int label;
    final /* synthetic */ State3AControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public State3AControl$update$$inlined$confineLaunch$1(e02 e02Var, State3AControl state3AControl, q07 q07Var) {
        super(2, e02Var);
        this.this$0 = state3AControl;
        this.$revision$inlined = q07Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new State3AControl$update$$inlined$confineLaunch$1(e02Var, this.this$0, this.$revision$inlined);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((State3AControl$update$$inlined$confineLaunch$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        this.this$0.applyUpdate(this.$revision$inlined.b);
        return j59.a;
    }
}
