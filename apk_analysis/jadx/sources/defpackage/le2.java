package defpackage;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.hls.HlsInterstitialsAdsLoader;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;
import yads.pe;
import yads.tt3;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class le2 implements ListenerSet.Event, Consumer, tt3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ le2(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        HlsInterstitialsAdsLoader.lambda$stop$4((AdsMediaSource) this.c, (AdPlaybackState) this.d, (HlsInterstitialsAdsLoader.Listener) obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.b) {
            case 0:
                ((AnalyticsListener) obj).onTrackSelectionParametersChanged((AnalyticsListener.EventTime) this.c, (TrackSelectionParameters) this.d);
                break;
            default:
                ((pe) obj).getClass();
                break;
        }
    }
}
