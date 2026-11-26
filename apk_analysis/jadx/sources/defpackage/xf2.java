package defpackage;

import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xf2 implements ListenerSet.Event, xl3 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Serializable c;

    public /* synthetic */ xf2(Object obj, Serializable serializable) {
        this.b = obj;
        this.c = serializable;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return ((InAppMessageStreamManager) this.b).lambda$getTriggeredInAppMessageMaybe$27((String) this.c, (m21) obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((AnalyticsListener) obj).onDrmSessionManagerError((AnalyticsListener.EventTime) this.b, (Exception) this.c);
    }
}
