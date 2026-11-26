package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.work.WorkerKt;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.j59;
import defpackage.ll3;
import defpackage.qd0;
import defpackage.rh;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public final class WorkerKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> ListenableFuture<T> future(final Executor executor, final ll3<? extends T> ll3Var) {
        ListenableFuture<T> future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: dl9
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return WorkerKt.future$lambda$2(executor, ll3Var, completer);
            }
        });
        future.getClass();
        return future;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 future$lambda$2(Executor executor, ll3 ll3Var, CallbackToFutureAdapter.Completer completer) {
        completer.getClass();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        completer.addCancellationListener(new rh(atomicBoolean, 5), DirectExecutor.INSTANCE);
        executor.execute(new qd0(atomicBoolean, completer, ll3Var, 2));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void future$lambda$2$lambda$1(AtomicBoolean atomicBoolean, CallbackToFutureAdapter.Completer completer, ll3 ll3Var) {
        if (atomicBoolean.get()) {
            return;
        }
        try {
            completer.set(ll3Var.invoke());
        } catch (Throwable th) {
            completer.setException(th);
        }
    }
}
