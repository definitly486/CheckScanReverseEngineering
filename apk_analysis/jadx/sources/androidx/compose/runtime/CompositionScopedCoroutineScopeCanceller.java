package androidx.compose.runtime;

import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes2.dex */
public final class CompositionScopedCoroutineScopeCanceller implements RememberObserver {
    public static final int $stable = 8;
    private final y22 coroutineScope;

    public CompositionScopedCoroutineScopeCanceller(y22 y22Var) {
        this.coroutineScope = y22Var;
    }

    public final y22 getCoroutineScope() {
        return this.coroutineScope;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        y22 y22Var = this.coroutineScope;
        if (y22Var instanceof RememberedCoroutineScope) {
            ((RememberedCoroutineScope) y22Var).cancelIfCreated();
        } else {
            z22.b(y22Var, new LeftCompositionCancellationException());
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        y22 y22Var = this.coroutineScope;
        if (y22Var instanceof RememberedCoroutineScope) {
            ((RememberedCoroutineScope) y22Var).cancelIfCreated();
        } else {
            z22.b(y22Var, new LeftCompositionCancellationException());
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
    }
}
