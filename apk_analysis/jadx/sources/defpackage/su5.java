package defpackage;

import android.view.Surface;
import androidx.camera.core.SurfaceRequest;
import androidx.core.util.Consumer;
import androidx.media3.exoplayer.drm.OfflineLicenseHelper;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class su5 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ su5(int i, Object obj, Object obj2) {
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
                ((OfflineLicenseHelper) obj2).lambda$releaseManagerOnHandlerThread$4((nr7) obj);
                break;
            default:
                SurfaceRequest.lambda$provideSurface$5((Consumer) obj2, (Surface) obj);
                break;
        }
    }
}
