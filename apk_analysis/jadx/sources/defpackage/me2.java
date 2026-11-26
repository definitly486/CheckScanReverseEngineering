package defpackage;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import yads.cj0;
import yads.eq2;
import yads.my2;
import yads.pe;
import yads.ut3;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class me2 implements ListenerSet.Event, ut3 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ me2(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // yads.ut3
    public void a(Object obj, my2 my2Var) {
        ((cj0) this.b).a((eq2) this.c, (pe) obj, my2Var);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onAudioEnabled((AnalyticsListener.EventTime) this.b, (DecoderCounters) this.c);
    }
}
