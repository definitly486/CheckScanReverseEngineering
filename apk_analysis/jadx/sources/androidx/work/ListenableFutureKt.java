package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.work.ListenableFutureKt;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.ak2;
import defpackage.av0;
import defpackage.bm3;
import defpackage.c32;
import defpackage.e02;
import defpackage.gx2;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.o22;
import defpackage.sr4;
import defpackage.y22;
import defpackage.z22;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public final class ListenableFutureKt {
    public static final <V> ListenableFuture<V> executeAsync(Executor executor, String str, ll3<? extends V> ll3Var) {
        executor.getClass();
        str.getClass();
        ll3Var.getClass();
        ListenableFuture<V> future = CallbackToFutureAdapter.getFuture(new ak2(executor, str, ll3Var));
        future.getClass();
        return future;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object executeAsync$lambda$4(Executor executor, String str, final ll3 ll3Var, final CallbackToFutureAdapter.Completer completer) {
        completer.getClass();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        completer.addCancellationListener(new Runnable() { // from class: qr4
            @Override // java.lang.Runnable
            public final void run() {
                atomicBoolean.set(true);
            }
        }, DirectExecutor.INSTANCE);
        executor.execute(new Runnable() { // from class: rr4
            @Override // java.lang.Runnable
            public final void run() {
                ListenableFutureKt.executeAsync$lambda$4$lambda$3(atomicBoolean, completer, ll3Var);
            }
        });
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void executeAsync$lambda$4$lambda$3(AtomicBoolean atomicBoolean, CallbackToFutureAdapter.Completer completer, ll3 ll3Var) {
        if (atomicBoolean.get()) {
            return;
        }
        try {
            completer.set(ll3Var.invoke());
        } catch (Throwable th) {
            completer.setException(th);
        }
    }

    public static final <T> ListenableFuture<T> launchFuture(final o22 o22Var, final c32 c32Var, final bm3<? super y22, ? super e02<? super T>, ? extends Object> bm3Var) {
        o22Var.getClass();
        c32Var.getClass();
        bm3Var.getClass();
        ListenableFuture<T> future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: pr4
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return ListenableFutureKt.launchFuture$lambda$1(o22Var, c32Var, bm3Var, completer);
            }
        });
        future.getClass();
        return future;
    }

    public static /* synthetic */ ListenableFuture launchFuture$default(o22 o22Var, c32 c32Var, bm3 bm3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            o22Var = gx2.b;
        }
        if ((i & 2) != 0) {
            c32Var = c32.DEFAULT;
        }
        return launchFuture(o22Var, c32Var, bm3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object launchFuture$lambda$1(o22 o22Var, c32 c32Var, bm3 bm3Var, CallbackToFutureAdapter.Completer completer) {
        completer.getClass();
        completer.addCancellationListener(new sr4((mb4) o22Var.get(mb4.a.b), 0), DirectExecutor.INSTANCE);
        return av0.c(z22.a(o22Var), null, c32Var, new ListenableFutureKt$launchFuture$1$2(bm3Var, completer, null), 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void launchFuture$lambda$1$lambda$0(mb4 mb4Var) {
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
    }
}
