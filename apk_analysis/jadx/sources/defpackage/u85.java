package defpackage;

import android.media.metrics.TrackChangeEvent;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.analytics.MediaMetricsListener;
import androidx.media3.exoplayer.video.VideoRendererEventListener;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class u85 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ u85(int i, Object obj, Object obj2) {
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
                ((MediaMetricsListener) obj2).lambda$reportTrackChangeEvent$3((TrackChangeEvent) obj);
                break;
            default:
                ((VideoRendererEventListener.EventDispatcher) obj2).lambda$videoCodecParametersChanged$10((CodecParameters) obj);
                break;
        }
    }
}
