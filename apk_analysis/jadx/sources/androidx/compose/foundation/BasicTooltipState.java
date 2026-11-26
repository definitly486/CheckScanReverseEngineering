package androidx.compose.foundation;

import defpackage.e02;
import defpackage.j59;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
public interface BasicTooltipState {
    static /* synthetic */ Object show$default(BasicTooltipState basicTooltipState, MutatePriority mutatePriority, e02 e02Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: show");
            return null;
        }
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return basicTooltipState.show(mutatePriority, e02Var);
    }

    void dismiss();

    boolean isPersistent();

    boolean isVisible();

    void onDispose();

    Object show(MutatePriority mutatePriority, e02<? super j59> e02Var);
}
