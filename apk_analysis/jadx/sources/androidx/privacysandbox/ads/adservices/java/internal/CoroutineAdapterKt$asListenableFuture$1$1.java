package androidx.privacysandbox.ads.adservices.java.internal;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import defpackage.gh4;
import defpackage.j59;
import defpackage.mk2;
import defpackage.nl3;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes3.dex */
public final class CoroutineAdapterKt$asListenableFuture$1$1 extends gh4 implements nl3<Throwable, j59> {
    final /* synthetic */ CallbackToFutureAdapter.Completer<T> $completer;
    final /* synthetic */ mk2<T> $this_asListenableFuture;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CoroutineAdapterKt$asListenableFuture$1$1(CallbackToFutureAdapter.Completer<T> completer, mk2<? extends T> mk2Var) {
        super(1);
        this.$completer = completer;
        this.$this_asListenableFuture = mk2Var;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        if (th == null) {
            this.$completer.set((T) this.$this_asListenableFuture.m());
            return;
        }
        boolean z = th instanceof CancellationException;
        CallbackToFutureAdapter.Completer<T> completer = this.$completer;
        if (z) {
            completer.setCancelled();
        } else {
            completer.setException(th);
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
        invoke2(th);
        return j59.a;
    }
}
