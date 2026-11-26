package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
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
@bd2(c = "androidx.compose.foundation.gestures.DraggableKt$NoOpOnDragStarted$1", f = "Draggable.kt", l = {}, m = "invokeSuspend", v = 1)
public final class DraggableKt$NoOpOnDragStarted$1 extends pg8 implements dm3<y22, Offset, e02<? super j59>, Object> {
    int label;

    public DraggableKt$NoOpOnDragStarted$1(e02<? super DraggableKt$NoOpOnDragStarted$1> e02Var) {
        super(3, e02Var);
    }

    @Override // defpackage.dm3
    public /* bridge */ /* synthetic */ Object invoke(y22 y22Var, Offset offset, e02<? super j59> e02Var) {
        return m1521invoked4ec7I(y22Var, offset.m5997unboximpl(), e02Var);
    }

    /* JADX INFO: renamed from: invoke-d-4ec7I, reason: not valid java name */
    public final Object m1521invoked4ec7I(y22 y22Var, long j, e02<? super j59> e02Var) {
        return new DraggableKt$NoOpOnDragStarted$1(e02Var).invokeSuspend(j59.a);
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
}
