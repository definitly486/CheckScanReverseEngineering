package defpackage;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.source.MediaLoadData;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.internal.ConfigRealtimeHttpClient;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class uv1 implements Continuation, ListenerSet.Event {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ uv1(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onDownstreamFormatChanged((AnalyticsListener.EventTime) this.b, (MediaLoadData) this.c);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        return ((ConfigRealtimeHttpClient) this.b).lambda$beginRealtimeHttpStream$1((Task) this.c, task);
    }
}
