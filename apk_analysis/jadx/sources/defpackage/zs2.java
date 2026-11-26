package defpackage;

import android.graphics.Bitmap;
import androidx.camera.video.Recorder;
import androidx.camera.video.VideoOutput;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import com.google.common.util.concurrent.ListenableFuture;
import yads.eq2;
import yads.iq2;
import yads.zt;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zs2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ zs2(int i, Object obj, Object obj2) {
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
                ((DrmSessionEventListener.EventDispatcher) obj2).lambda$drmKeysRemoved$4((DrmSessionEventListener) obj);
                break;
            case 1:
                ((Recorder) obj2).lambda$onSourceStateChanged$2((VideoOutput.SourceState) obj);
                break;
            case 2:
                Util.lambda$transformFutureAsync$1((nr7) obj2, (ListenableFuture) obj);
                break;
            case 3:
                ((eq2) obj2).a((iq2) obj);
                break;
            default:
                zt.a((zt) obj2, (Bitmap) obj);
                break;
        }
    }
}
