package defpackage;

import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.media3.exoplayer.source.preload.PreloadMediaSource;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class i11 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ i11(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((CameraPresenceProvider) obj).triggerRefreshWithRetries();
                break;
            default:
                ((PreloadMediaSource) obj).checkForPreloadError();
                break;
        }
    }
}
