package androidx.compose.runtime.retain;

import defpackage.nl3;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public final class RetainedEffectImpl implements RetainObserver {
    private final nl3<RetainedEffectScope, RetainedEffectResult> effect;
    private RetainedEffectResult onRetire;

    /* JADX WARN: Multi-variable type inference failed */
    public RetainedEffectImpl(nl3<? super RetainedEffectScope, ? extends RetainedEffectResult> nl3Var) {
        this.effect = nl3Var;
    }

    @Override // androidx.compose.runtime.retain.RetainObserver
    public void onEnteredComposition() {
    }

    @Override // androidx.compose.runtime.retain.RetainObserver
    public void onExitedComposition() {
    }

    @Override // androidx.compose.runtime.retain.RetainObserver
    public void onRetained() {
        this.onRetire = this.effect.invoke(RetainedEffectKt.InternalRetainedEffectScope);
    }

    @Override // androidx.compose.runtime.retain.RetainObserver
    public void onRetired() {
        RetainedEffectResult retainedEffectResult = this.onRetire;
        if (retainedEffectResult != null) {
            retainedEffectResult.retire();
        }
        this.onRetire = null;
    }

    @Override // androidx.compose.runtime.retain.RetainObserver
    public void onUnused() {
    }
}
