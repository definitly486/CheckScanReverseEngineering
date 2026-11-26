package defpackage;

import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import yads.iz3;
import yads.jz3;
import yads.vy3;
import yads.vz2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r9 implements xl3, CallbackToFutureAdapter.Resolver, iz3 {
    public final /* synthetic */ Object b;

    public /* synthetic */ r9(Object obj) {
        this.b = obj;
    }

    @Override // yads.iz3
    public int a(Object obj) {
        return jz3.a((vz2) this.b, (vy3) obj);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (List) ((t9) this.b).invoke(obj);
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return EncoderImpl.lambda$new$0((AtomicReference) this.b, completer);
    }
}
