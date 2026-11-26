package defpackage;

import androidx.camera.video.internal.encoder.BufferCopiedEncodedData;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.app.SharedElementCallback;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class f7 implements SharedElementCallback.OnSharedElementsReadyListener, CallbackToFutureAdapter.Resolver, xl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ f7(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 2:
                return (wr5) ((ab1) obj2).invoke(obj);
            default:
                return ((d68) obj2).invoke(obj);
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return BufferCopiedEncodedData.lambda$new$0((AtomicReference) this.c, completer);
    }

    @Override // androidx.core.app.SharedElementCallback.OnSharedElementsReadyListener
    public void onSharedElementsReady() {
        ((android.app.SharedElementCallback.OnSharedElementsReadyListener) this.c).onSharedElementsReady();
    }
}
