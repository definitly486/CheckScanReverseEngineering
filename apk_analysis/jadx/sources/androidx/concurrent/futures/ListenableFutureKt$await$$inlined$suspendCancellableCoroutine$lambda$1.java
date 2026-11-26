package androidx.concurrent.futures;

import com.google.common.util.concurrent.ListenableFuture;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ListenableFutureKt$await$$inlined$suspendCancellableCoroutine$lambda$1 extends gh4 implements nl3<Throwable, j59> {
    final /* synthetic */ ListenableFuture $this_await$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListenableFutureKt$await$$inlined$suspendCancellableCoroutine$lambda$1(ListenableFuture listenableFuture) {
        super(1);
        this.$this_await$inlined = listenableFuture;
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Throwable th) {
        invoke2(th);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        this.$this_await$inlined.cancel(false);
    }
}
