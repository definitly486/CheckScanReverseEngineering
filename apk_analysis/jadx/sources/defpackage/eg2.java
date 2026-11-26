package defpackage;

import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSourceEventListener;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class eg2 implements ListenerSet.Event, Consumer {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ eg2(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        ((MediaSourceEventListener.EventDispatcher) this.b).lambda$downstreamFormatChanged$5((MediaLoadData) this.c, (MediaSourceEventListener) obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        DefaultAnalyticsCollector.lambda$onVideoSizeChanged$59((AnalyticsListener.EventTime) this.b, (VideoSize) this.c, (AnalyticsListener) obj);
    }
}
