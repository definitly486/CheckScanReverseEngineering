package defpackage;

import android.view.Surface;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class su implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ su(int i, Object obj, Object obj2) {
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
                ((AudioSource) obj2).lambda$release$4((CallbackToFutureAdapter.Completer) obj);
                break;
            default:
                SurfaceRequest.lambda$provideSurface$4((Consumer) obj2, (Surface) obj);
                break;
        }
    }
}
