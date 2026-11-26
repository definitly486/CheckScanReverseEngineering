package defpackage;

import androidx.camera.camera2.pipe.internal.CameraBackendsImpl;
import androidx.media3.exoplayer.hls.HlsSampleStreamWrapper;
import com.google.android.material.search.SearchBar;
import com.google.firebase.perf.metrics.AppStartTrace;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class gq implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ gq(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((AppStartTrace) obj).recordPreDraw();
                break;
            case 1:
                CameraBackendsImpl._init_$lambda$0((CameraBackendsImpl) obj);
                break;
            case 2:
                ((HlsSampleStreamWrapper.Callback) obj).onPrepared();
                break;
            default:
                ((SearchBar) obj).lambda$startOnLoadAnimation$0();
                break;
        }
    }
}
