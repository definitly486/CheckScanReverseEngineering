package androidx.core.os;

import android.os.OutcomeReceiver;
import defpackage.e02;
import defpackage.r57;
import java.lang.Throwable;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
final class ContinuationOutcomeReceiver<R, E extends Throwable> extends AtomicBoolean implements OutcomeReceiver {
    private final e02<R> continuation;

    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationOutcomeReceiver(e02<? super R> e02Var) {
        super(false);
        this.continuation = e02Var;
    }

    public void onError(E e) {
        if (compareAndSet(false, true)) {
            this.continuation.resumeWith(r57.a(e));
        }
    }

    public void onResult(R r) {
        if (compareAndSet(false, true)) {
            this.continuation.resumeWith(r);
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "ContinuationOutcomeReceiver(outcomeReceived = " + get() + ')';
    }
}
