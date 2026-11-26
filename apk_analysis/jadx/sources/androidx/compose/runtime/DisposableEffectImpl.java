package androidx.compose.runtime;

import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
final class DisposableEffectImpl implements RememberObserver {
    private final nl3<DisposableEffectScope, DisposableEffectResult> effect;
    private DisposableEffectResult onDispose;

    /* JADX WARN: Multi-variable type inference failed */
    public DisposableEffectImpl(nl3<? super DisposableEffectScope, ? extends DisposableEffectResult> nl3Var) {
        this.effect = nl3Var;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        DisposableEffectResult disposableEffectResult = this.onDispose;
        if (disposableEffectResult != null) {
            disposableEffectResult.dispose();
        }
        this.onDispose = null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        this.onDispose = this.effect.invoke(EffectsKt.InternalDisposableEffectScope);
    }
}
