package androidx.compose.foundation.gestures;

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
@bd2(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$processTapGesture$secondUp$1", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend", v = 1)
public final class TapGestureDetectorKt$processTapGesture$secondUp$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ PressGestureScopeImpl $pressScope;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapGestureDetectorKt$processTapGesture$secondUp$1(PressGestureScopeImpl pressGestureScopeImpl, e02<? super TapGestureDetectorKt$processTapGesture$secondUp$1> e02Var) {
        super(2, e02Var);
        this.$pressScope = pressGestureScopeImpl;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new TapGestureDetectorKt$processTapGesture$secondUp$1(this.$pressScope, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((TapGestureDetectorKt$processTapGesture$secondUp$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        this.$pressScope.release();
        return j59.a;
    }
}
