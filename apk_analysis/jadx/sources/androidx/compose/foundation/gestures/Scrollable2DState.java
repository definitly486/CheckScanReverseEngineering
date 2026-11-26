package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
public interface Scrollable2DState {
    static /* synthetic */ Object scroll$default(Scrollable2DState scrollable2DState, MutatePriority mutatePriority, bm3 bm3Var, e02 e02Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: scroll");
            return null;
        }
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return scrollable2DState.scroll(mutatePriority, bm3Var, e02Var);
    }

    /* JADX INFO: renamed from: canScroll-k-4lQ0M */
    boolean mo1473canScrollk4lQ0M(long j);

    /* JADX INFO: renamed from: dispatchRawDelta-MK-Hz9U */
    long mo1474dispatchRawDeltaMKHz9U(long j);

    boolean isScrollInProgress();

    Object scroll(MutatePriority mutatePriority, bm3<? super Scroll2DScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var);
}
