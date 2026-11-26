package androidx.core.util;

import defpackage.e02;
import defpackage.j59;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
final class ContinuationRunnable extends AtomicBoolean implements Runnable {
    private final e02<j59> continuation;

    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationRunnable(e02<? super j59> e02Var) {
        super(false);
        this.continuation = e02Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (compareAndSet(false, true)) {
            this.continuation.resumeWith(j59.a);
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "ContinuationRunnable(ran = " + get() + ')';
    }
}
