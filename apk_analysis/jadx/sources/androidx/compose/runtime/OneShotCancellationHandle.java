package androidx.compose.runtime;

import androidx.compose.runtime.internal.AtomicBoolean;
import androidx.compose.runtime.internal.AtomicInt;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class OneShotCancellationHandle implements CancellationHandle {
    public static final int $stable = 8;
    private final ll3<j59> action;
    private final AtomicInt didFireCancellation = AtomicBoolean.m5591constructorimpl(false);

    public OneShotCancellationHandle(ll3<j59> ll3Var) {
        this.action = ll3Var;
    }

    @Override // androidx.compose.runtime.CancellationHandle
    public void cancel() {
        if (AtomicBoolean.m5596getAndSetimpl(this.didFireCancellation, true)) {
            return;
        }
        this.action.invoke();
    }
}
