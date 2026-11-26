package androidx.work.impl;

import androidx.work.DirectExecutor;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a32;
import defpackage.c31;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.zya;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes3.dex */
public final class WorkerWrapperKt {
    private static final String TAG;

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("WorkerWrapper");
        strTagWithPrefix.getClass();
        TAG = strTagWithPrefix;
    }

    public static final <T> Object awaitWithin(final ListenableFuture<T> listenableFuture, final ListenableWorker listenableWorker, e02<? super T> e02Var) throws Throwable {
        try {
            if (listenableFuture.isDone()) {
                return getUninterruptibly(listenableFuture);
            }
            c31 c31Var = new c31(1, zya.b(e02Var));
            c31Var.u();
            listenableFuture.addListener(new ToContinuation(listenableFuture, c31Var), DirectExecutor.INSTANCE);
            c31Var.n(new nl3<Throwable, j59>() { // from class: androidx.work.impl.WorkerWrapperKt$awaitWithin$2$1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable th) {
                    if (th instanceof WorkerStoppedException) {
                        listenableWorker.stop(((WorkerStoppedException) th).getReason());
                    }
                    listenableFuture.cancel(false);
                }

                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
                    invoke2(th);
                    return j59.a;
                }
            });
            Object objS = c31Var.s();
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            return objS;
        } catch (ExecutionException e) {
            throw nonNullCause(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <V> V getUninterruptibly(Future<V> future) {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable nonNullCause(ExecutionException executionException) {
        Throwable cause = executionException.getCause();
        cause.getClass();
        return cause;
    }
}
