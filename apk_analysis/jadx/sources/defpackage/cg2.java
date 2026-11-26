package defpackage;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import yads.bw4;
import yads.iw4;
import yads.tt3;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class cg2 implements ListenerSet.Event, tt3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;

    public /* synthetic */ cg2(Object obj, int i, int i2) {
        this.b = i2;
        this.d = obj;
        this.c = i;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        int i = this.b;
        int i2 = this.c;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                ((AnalyticsListener) obj).onAudioSessionIdChanged((AnalyticsListener.EventTime) obj2, i2);
                break;
            default:
                ((iw4) obj).onPlayWhenReadyChanged(((bw4) obj2).l, i2);
                break;
        }
    }
}
