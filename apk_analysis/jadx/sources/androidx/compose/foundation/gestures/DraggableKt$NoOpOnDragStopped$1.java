package androidx.compose.foundation.gestures;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.DraggableKt$NoOpOnDragStopped$1", f = "Draggable.kt", l = {}, m = "invokeSuspend", v = 1)
public final class DraggableKt$NoOpOnDragStopped$1 extends pg8 implements dm3<y22, Float, e02<? super j59>, Object> {
    int label;

    public DraggableKt$NoOpOnDragStopped$1(e02<? super DraggableKt$NoOpOnDragStopped$1> e02Var) {
        super(3, e02Var);
    }

    @Override // defpackage.dm3
    public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, Float f, e02<? super j59> e02Var) {
        return invoke(y22Var, f.floatValue(), e02Var);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            r57.b(obj);
            return j59.a;
        }
        ah.f("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    public final Object invoke(y22 y22Var, float f, e02<? super j59> e02Var) {
        return new DraggableKt$NoOpOnDragStopped$1(e02Var).invokeSuspend(j59.a);
    }
}
