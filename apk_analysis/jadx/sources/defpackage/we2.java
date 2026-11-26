package defpackage;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.firebase.inappmessaging.internal.RateLimitProto;
import com.google.firebase.inappmessaging.internal.RateLimiterClient;
import com.google.firebase.inappmessaging.model.RateLimit;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class we2 implements ListenerSet.Event, xl3 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ we2(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return ((RateLimiterClient) this.b).lambda$increment$4((RateLimit) this.c, (RateLimitProto.RateLimit) obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onVideoCodecError((AnalyticsListener.EventTime) this.b, (Exception) this.c);
    }
}
