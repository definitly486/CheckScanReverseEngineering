package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
public interface Draggable2DState {
    static /* synthetic */ Object drag$default(Draggable2DState draggable2DState, MutatePriority mutatePriority, bm3 bm3Var, e02 e02Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: drag");
            return null;
        }
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return draggable2DState.drag(mutatePriority, bm3Var, e02Var);
    }

    /* JADX INFO: renamed from: dispatchRawDelta-k-4lQ0M */
    void mo1471dispatchRawDeltak4lQ0M(long j);

    Object drag(MutatePriority mutatePriority, bm3<? super Drag2DScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var);
}
