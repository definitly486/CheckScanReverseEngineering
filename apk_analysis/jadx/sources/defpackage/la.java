package defpackage;

import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.imagecapture.ProcessingRequest;
import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class la implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ la(int i, Object obj, Object obj2) {
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
                ((AdsMediaSource) obj2).lambda$onChildSourceInfoRefreshed$2((Timeline) obj);
                break;
            default:
                ((ProcessingRequest) obj2).onProcessFailure((ImageCaptureException) obj);
                break;
        }
    }
}
