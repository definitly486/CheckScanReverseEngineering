package androidx.concurrent.futures;

import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a31;
import defpackage.r57;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes2.dex */
final class ToContinuation<T> implements Runnable {
    private final a31<T> continuation;
    private final ListenableFuture<T> futureToObserve;

    /* JADX WARN: Multi-variable type inference failed */
    public ToContinuation(ListenableFuture<T> listenableFuture, a31<? super T> a31Var) {
        listenableFuture.getClass();
        a31Var.getClass();
        this.futureToObserve = listenableFuture;
        this.continuation = a31Var;
    }

    public final a31<T> getContinuation() {
        return this.continuation;
    }

    public final ListenableFuture<T> getFutureToObserve() {
        return this.futureToObserve;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zIsCancelled = this.futureToObserve.isCancelled();
        a31<T> a31Var = this.continuation;
        if (zIsCancelled) {
            a31Var.d(null);
            return;
        }
        try {
            a31Var.resumeWith(AbstractResolvableFuture.getUninterruptibly(this.futureToObserve));
        } catch (ExecutionException e) {
            this.continuation.resumeWith(r57.a(ListenableFutureKt.nonNullCause(e)));
        }
    }
}
