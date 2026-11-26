package defpackage;

import androidx.camera.core.Preview;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import yads.me4;
import yads.nf4;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zx2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ zx2(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((EncoderImpl) obj2).lambda$acquireInputBuffer$14((CallbackToFutureAdapter.Completer) obj);
                break;
            case 1:
                ((Preview.SurfaceProvider) obj2).onSurfaceRequested((SurfaceRequest) obj);
                break;
            default:
                nf4.a((nf4) obj2, (me4) obj);
                break;
        }
    }
}
