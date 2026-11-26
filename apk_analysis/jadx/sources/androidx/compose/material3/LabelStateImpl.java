package androidx.compose.material3;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.MutatePriority;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
final class LabelStateImpl implements TooltipState {
    private final boolean isPersistent;
    private final boolean isVisible;
    private final MutableTransitionState<Boolean> transition;

    public LabelStateImpl(boolean z, boolean z2) {
        this.isVisible = z;
        this.isPersistent = z2;
        this.transition = new MutableTransitionState<>(Boolean.FALSE);
    }

    @Override // androidx.compose.material3.TooltipState
    public void dismiss() {
    }

    @Override // androidx.compose.material3.TooltipState
    public MutableTransitionState<Boolean> getTransition() {
        return this.transition;
    }

    @Override // androidx.compose.material3.TooltipState
    public boolean isPersistent() {
        return this.isPersistent;
    }

    @Override // androidx.compose.material3.TooltipState
    public boolean isVisible() {
        return this.isVisible;
    }

    @Override // androidx.compose.material3.TooltipState
    public void onDispose() {
    }

    @Override // androidx.compose.material3.TooltipState
    public Object show(MutatePriority mutatePriority, e02<? super j59> e02Var) {
        return j59.a;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LabelStateImpl() {
        boolean z = false;
        this(z, z, 3, null);
    }

    public /* synthetic */ LabelStateImpl(boolean z, boolean z2, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? true : z2);
    }
}
