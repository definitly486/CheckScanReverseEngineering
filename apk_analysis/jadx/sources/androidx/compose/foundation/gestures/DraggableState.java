package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
public interface DraggableState {

    public static final class DefaultImpls {
    }

    static /* synthetic */ Object drag$default(DraggableState draggableState, MutatePriority mutatePriority, bm3 bm3Var, e02 e02Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: drag");
            return null;
        }
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return draggableState.drag(mutatePriority, bm3Var, e02Var);
    }

    void dispatchRawDelta(float f);

    Object drag(MutatePriority mutatePriority, bm3<? super DragScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var);
}
