package defpackage;

import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import java.io.Serializable;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qv1 implements Continuation, ListenerSet.Event {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Serializable c;

    public /* synthetic */ qv1(Object obj, Serializable serializable) {
        this.b = obj;
        this.c = serializable;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onPlayerErrorChanged((AnalyticsListener.EventTime) this.b, (PlaybackException) this.c);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        return ((ConfigFetchHandler) this.b).lambda$fetchIfCacheExpiredAndNotThrottled$3((Date) this.c, task);
    }
}
