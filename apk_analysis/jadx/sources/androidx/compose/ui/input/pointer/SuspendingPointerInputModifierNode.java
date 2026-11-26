package androidx.compose.ui.input.pointer;

import androidx.compose.ui.node.PointerInputModifierNode;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.oo5;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public interface SuspendingPointerInputModifierNode extends PointerInputModifierNode {
    @ul2
    static /* synthetic */ void getPointerInputHandler$annotations() {
    }

    default PointerInputEventHandler getPointerInputEventHandler() {
        throw new oo5("An operation is not implemented: pointerInputEventHandler must be implemented (get()).");
    }

    bm3<PointerInputScope, e02<? super j59>, Object> getPointerInputHandler();

    void resetPointerInputHandler();

    default void setPointerInputEventHandler(PointerInputEventHandler pointerInputEventHandler) {
        throw new oo5("An operation is not implemented: ".concat("pointerInputEventHandler must be implemented (set(" + pointerInputEventHandler + "))."));
    }

    void setPointerInputHandler(bm3<? super PointerInputScope, ? super e02<? super j59>, ? extends Object> bm3Var);
}
