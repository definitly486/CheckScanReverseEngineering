package defpackage;

import androidx.camera.core.SurfaceRequest;
import androidx.media3.exoplayer.offline.DownloadHelper;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class sq2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ sq2(int i, Object obj, Object obj2) {
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
                ((DownloadHelper) obj2).lambda$prepare$1((DownloadHelper.Callback) obj);
                break;
            default:
                ((SurfaceRequest.TransformationInfoListener) obj2).onTransformationInfoUpdate((SurfaceRequest.TransformationInfo) obj);
                break;
        }
    }
}
