package defpackage;

import androidx.media3.common.MediaItem;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class uf2 implements ListenerSet.Event {
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;

    public /* synthetic */ uf2(Object obj, int i, int i2) {
        this.b = i2;
        this.d = obj;
        this.c = i;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.b) {
            case 0:
                ((AnalyticsListener) obj).onPlaybackStateChanged((AnalyticsListener.EventTime) this.d, this.c);
                break;
            default:
                ((Player.Listener) obj).onMediaItemTransition((MediaItem) this.d, this.c);
                break;
        }
    }
}
