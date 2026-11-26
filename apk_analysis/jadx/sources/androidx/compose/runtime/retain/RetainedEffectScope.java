package androidx.compose.runtime.retain;

import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class RetainedEffectScope {
    public static final int $stable = 0;

    public final RetainedEffectResult onRetire(final ll3<j59> ll3Var) {
        return new RetainedEffectResult() { // from class: androidx.compose.runtime.retain.RetainedEffectScope.onRetire.1
            @Override // androidx.compose.runtime.retain.RetainedEffectResult
            public void retire() {
                ll3Var.invoke();
            }
        };
    }
}
