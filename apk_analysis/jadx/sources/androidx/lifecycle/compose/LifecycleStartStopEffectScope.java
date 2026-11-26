package androidx.lifecycle.compose;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes3.dex */
public final class LifecycleStartStopEffectScope implements LifecycleOwner {
    public static final int $stable = 8;
    private final Lifecycle lifecycle;

    public LifecycleStartStopEffectScope(Lifecycle lifecycle) {
        this.lifecycle = lifecycle;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public Lifecycle getLifecycle() {
        return this.lifecycle;
    }

    public final LifecycleStopOrDisposeEffectResult onStopOrDispose(final nl3<? super LifecycleOwner, j59> nl3Var) {
        return new LifecycleStopOrDisposeEffectResult() { // from class: androidx.lifecycle.compose.LifecycleStartStopEffectScope.onStopOrDispose.1
            @Override // androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult
            public void runStopOrDisposeEffect() {
                nl3Var.invoke(this);
            }
        };
    }
}
