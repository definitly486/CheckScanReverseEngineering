package androidx.concurrent.futures;

import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a32;
import defpackage.aa4;
import defpackage.c31;
import defpackage.e02;
import defpackage.zya;
import java.util.concurrent.ExecutionException;
import kotlin.KotlinNullPointerException;

/* JADX INFO: loaded from: classes2.dex */
public final class ListenableFutureKt {
    public static final <T> Object await(ListenableFuture<T> listenableFuture, e02<? super T> e02Var) throws Throwable {
        try {
            if (listenableFuture.isDone()) {
                return AbstractResolvableFuture.getUninterruptibly(listenableFuture);
            }
            c31 c31Var = new c31(1, zya.b(e02Var));
            listenableFuture.addListener(new ToContinuation(listenableFuture, c31Var), DirectExecutor.INSTANCE);
            c31Var.n(new ListenableFutureKt$await$$inlined$suspendCancellableCoroutine$lambda$1(listenableFuture));
            Object objS = c31Var.s();
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            return objS;
        } catch (ExecutionException e) {
            throw nonNullCause(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Throwable nonNullCause(ExecutionException executionException) {
        Throwable cause = executionException.getCause();
        if (cause != null) {
            return cause;
        }
        KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException();
        aa4.h(kotlinNullPointerException, aa4.class.getName());
        throw kotlinNullPointerException;
    }
}
