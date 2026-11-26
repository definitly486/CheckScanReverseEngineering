package defpackage;

import androidx.camera.core.SurfaceRequest;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReference;
import yads.pe;
import yads.tt3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jg8 implements CallbackToFutureAdapter.Resolver, tt3 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Serializable c;

    public /* synthetic */ jg8(Object obj, Serializable serializable) {
        this.b = obj;
        this.c = serializable;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return SurfaceRequest.lambda$new$2((AtomicReference) this.b, (String) this.c, completer);
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((pe) obj).getClass();
    }
}
