package androidx.compose.ui.focus;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class CancelIndicatingFocusBoundaryScope implements FocusEnterExitScope {
    public static final int $stable = 8;
    private boolean isCanceled;
    private final int requestedFocusDirection;

    private CancelIndicatingFocusBoundaryScope(int i) {
        this.requestedFocusDirection = i;
    }

    @Override // androidx.compose.ui.focus.FocusEnterExitScope
    public void cancelFocusChange() {
        this.isCanceled = true;
    }

    @Override // androidx.compose.ui.focus.FocusEnterExitScope
    /* JADX INFO: renamed from: getRequestedFocusDirection-dhqQ-8s, reason: not valid java name */
    public int mo5858getRequestedFocusDirectiondhqQ8s() {
        return this.requestedFocusDirection;
    }

    public final boolean isCanceled() {
        return this.isCanceled;
    }

    public /* synthetic */ CancelIndicatingFocusBoundaryScope(int i, jh2 jh2Var) {
        this(i);
    }
}
