package defpackage;

import androidx.camera.core.SurfaceRequest;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.concurrent.atomic.AtomicReference;
import yads.pe;
import yads.tt3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gg8 implements CallbackToFutureAdapter.Resolver, tt3 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ gg8(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((SurfaceRequest) this.b).lambda$initialSurfaceRecreationCompleter$7((AtomicReference) this.c, completer);
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((pe) obj).getClass();
    }
}
