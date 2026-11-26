package androidx.privacysandbox.ads.adservices.java.internal;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.mk2;

/* JADX INFO: loaded from: classes3.dex */
public final class CoroutineAdapterKt {
    public static final <T> ListenableFuture<T> asListenableFuture(final mk2<? extends T> mk2Var, final Object obj) {
        mk2Var.getClass();
        ListenableFuture<T> future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: h22
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return CoroutineAdapterKt.asListenableFuture$lambda$0(mk2Var, obj, completer);
            }
        });
        future.getClass();
        return future;
    }

    public static /* synthetic */ ListenableFuture asListenableFuture$default(mk2 mk2Var, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = "Deferred.asListenableFuture";
        }
        return asListenableFuture(mk2Var, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object asListenableFuture$lambda$0(mk2 mk2Var, Object obj, CallbackToFutureAdapter.Completer completer) {
        mk2Var.getClass();
        completer.getClass();
        mk2Var.g(new CoroutineAdapterKt$asListenableFuture$1$1(completer, mk2Var));
        return obj;
    }
}
