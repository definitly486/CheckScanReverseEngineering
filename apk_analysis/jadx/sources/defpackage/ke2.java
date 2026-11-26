package defpackage;

import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import yads.pe;
import yads.tt3;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ke2 implements ListenerSet.Event, tt3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ke2(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.b) {
            case 0:
                ((AnalyticsListener) obj).onPlaybackParametersChanged((AnalyticsListener.EventTime) this.c, (PlaybackParameters) this.d);
                break;
            default:
                ((pe) obj).getClass();
                break;
        }
    }
}
