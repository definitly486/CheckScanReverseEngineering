package defpackage;

import androidx.media3.common.AudioAttributes;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import com.google.firebase.inappmessaging.internal.RateLimitProto;
import com.google.firebase.inappmessaging.internal.RateLimiterClient;
import com.google.firebase.inappmessaging.model.RateLimit;
import yads.jb4;
import yads.pb4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bf2 implements ListenerSet.Event, xl3, ze6, pb4 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ bf2(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // yads.pb4
    public void a(String str) {
        jb4.b((jb4) this.b, (String) this.c, str);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return ((InAppMessageStreamManager) this.b).lambda$createFirebaseInAppMessageStream$20((s75) this.c, (j21) obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onAudioAttributesChanged((AnalyticsListener.EventTime) this.b, (AudioAttributes) this.c);
    }

    @Override // defpackage.ze6
    public boolean test(Object obj) {
        return ((RateLimiterClient) this.b).lambda$isRateLimited$6((RateLimit) this.c, (RateLimitProto.Counter) obj);
    }
}
