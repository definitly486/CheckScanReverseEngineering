package defpackage;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import yads.pe;
import yads.tt3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i22 implements CallbackToFutureAdapter.Resolver, tt3 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ i22(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return CoroutineAdaptersKt.asListenableFuture$lambda$0((mb4) this.b, this.c, completer);
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((pe) obj).getClass();
    }
}
