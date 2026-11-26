package androidx.compose.runtime;

import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class DisposableEffectScope {
    public static final int $stable = 0;

    public final DisposableEffectResult onDispose(final ll3<j59> ll3Var) {
        return new DisposableEffectResult() { // from class: androidx.compose.runtime.DisposableEffectScope.onDispose.1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                ll3Var.invoke();
            }
        };
    }
}
