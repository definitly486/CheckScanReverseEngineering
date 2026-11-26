package androidx.compose.ui.input.pointer;

import defpackage.aa4;
import defpackage.bm3;
import defpackage.cm3;
import defpackage.e02;
import defpackage.mm3;

/* JADX INFO: loaded from: classes2.dex */
public final class SuspendingPointerInputFilterKt$sam$androidx_compose_ui_input_pointer_PointerInputEventHandler$0 implements PointerInputEventHandler, mm3 {
    private final /* synthetic */ bm3 function;

    public SuspendingPointerInputFilterKt$sam$androidx_compose_ui_input_pointer_PointerInputEventHandler$0(bm3 bm3Var) {
        this.function = bm3Var;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof PointerInputEventHandler) && (obj instanceof mm3)) {
            return aa4.e(getFunctionDelegate(), ((mm3) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // defpackage.mm3
    public final cm3<?> getFunctionDelegate() {
        return this.function;
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
    public final /* synthetic */ Object invoke(PointerInputScope pointerInputScope, e02 e02Var) {
        return this.function.invoke(pointerInputScope, e02Var);
    }
}
