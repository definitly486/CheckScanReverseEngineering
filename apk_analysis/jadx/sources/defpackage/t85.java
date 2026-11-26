package defpackage;

import android.media.metrics.PlaybackStateEvent;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.analytics.MediaMetricsListener;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import com.my.tracker.MyTracker;
import com.my.tracker.MyTrackerAttribution;
import com.my.tracker.obfuscated.n;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class t85 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ t85(int i, Object obj, Object obj2) {
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
                ((MediaMetricsListener) obj2).lambda$maybeReportPlaybackStateChange$2((PlaybackStateEvent) obj);
                break;
            case 1:
                ((VideoRendererEventListener.EventDispatcher) obj2).lambda$disabled$8((DecoderCounters) obj);
                break;
            default:
                n.a((MyTracker.AttributionListener) obj2, (MyTrackerAttribution) obj);
                break;
        }
    }
}
