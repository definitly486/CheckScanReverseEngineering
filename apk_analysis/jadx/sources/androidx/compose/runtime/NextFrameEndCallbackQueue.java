package androidx.compose.runtime;

import androidx.compose.runtime.internal.AtomicBoolean;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.AwaiterQueue;
import defpackage.j59;
import defpackage.ll3;
import defpackage.ul;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes2.dex */
public final class NextFrameEndCallbackQueue {
    public static final int $stable = 8;
    private final ll3<j59> onNewAwaiters;
    private final AtomicInt isFrameOngoing = AtomicBoolean.m5591constructorimpl(false);
    private final AwaiterQueue<NextFrameEndAwaiter> frameEndQueue = new AwaiterQueue<>();

    public static final class NextFrameEndAwaiter extends AwaiterQueue.Awaiter {
        private ll3<j59> onNextFrameEnd;

        public NextFrameEndAwaiter(ll3<j59> ll3Var) {
            this.onNextFrameEnd = ll3Var;
        }

        @Override // androidx.compose.runtime.internal.AwaiterQueue.Awaiter
        public void cancel() {
            this.onNextFrameEnd = null;
        }

        public final void resume() {
            ll3<j59> ll3Var = this.onNextFrameEnd;
            if (ll3Var != null) {
                ll3Var.invoke();
            }
        }

        @Override // androidx.compose.runtime.internal.AwaiterQueue.Awaiter
        public void resumeWithException(Throwable th) throws Throwable {
            throw th;
        }
    }

    public NextFrameEndCallbackQueue(ll3<j59> ll3Var) {
        this.onNewAwaiters = new ul(1, this, ll3Var);
    }

    public static /* synthetic */ void cancel$default(NextFrameEndCallbackQueue nextFrameEndCallbackQueue, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = new CancellationException("scheduler cancelled");
        }
        nextFrameEndCallbackQueue.cancel(cancellationException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 markFrameComplete$lambda$0(NextFrameEndAwaiter nextFrameEndAwaiter) {
        nextFrameEndAwaiter.resume();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onNewAwaiters$lambda$0(NextFrameEndCallbackQueue nextFrameEndCallbackQueue, ll3 ll3Var) {
        if (!AtomicBoolean.m5595getimpl(nextFrameEndCallbackQueue.isFrameOngoing)) {
            ll3Var.invoke();
        }
        return j59.a;
    }

    public final void cancel(CancellationException cancellationException) {
        this.frameEndQueue.fail(cancellationException);
    }

    public final boolean getHasAwaiters() {
        return this.frameEndQueue.getHasAwaiters();
    }

    public final void markFrameComplete() {
        AtomicBoolean.m5598setimpl(this.isFrameOngoing, false);
        this.frameEndQueue.flushAndDispatchAwaiters(new i());
    }

    public final void markFrameStarted() {
        AtomicBoolean.m5598setimpl(this.isFrameOngoing, true);
    }

    public final CancellationHandle scheduleFrameEndCallback(ll3<j59> ll3Var) {
        return this.frameEndQueue.addAwaiter(new NextFrameEndAwaiter(ll3Var), this.onNewAwaiters);
    }
}
