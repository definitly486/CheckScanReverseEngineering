package androidx.compose.material3;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.MutatePriority;
import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public interface TooltipState {
    static /* synthetic */ Object show$default(TooltipState tooltipState, MutatePriority mutatePriority, e02 e02Var, int i, Object obj) {
        if (obj != null) {
            defpackage.n1.e("Super calls with default arguments not supported in this target, function: show");
            return null;
        }
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return tooltipState.show(mutatePriority, e02Var);
    }

    void dismiss();

    MutableTransitionState<Boolean> getTransition();

    boolean isPersistent();

    boolean isVisible();

    void onDispose();

    Object show(MutatePriority mutatePriority, e02<? super j59> e02Var);
}
