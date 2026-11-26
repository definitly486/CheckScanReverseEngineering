package androidx.compose.ui.input.pointer;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$pointerInputHandler$1", f = "SuspendingPointerInputFilter.kt", l = {}, m = "invokeSuspend", v = 1)
public final class SuspendingPointerInputModifierNodeImpl$pointerInputHandler$1 extends pg8 implements bm3<PointerInputScope, e02<? super j59>, Object> {
    int label;

    public SuspendingPointerInputModifierNodeImpl$pointerInputHandler$1(e02<? super SuspendingPointerInputModifierNodeImpl$pointerInputHandler$1> e02Var) {
        super(2, e02Var);
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new SuspendingPointerInputModifierNodeImpl$pointerInputHandler$1(e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
        return ((SuspendingPointerInputModifierNodeImpl$pointerInputHandler$1) create(pointerInputScope, e02Var)).invokeSuspend(j59.a);
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
