package defpackage;

import android.os.Bundle;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.google.firebase.crashlytics.AnalyticsDeferredProxy;
import com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger;
import yads.ct1;
import yads.gs4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class id implements AnalyticsEventLogger, xl3, ListenerSet.Event, ct1 {
    public final /* synthetic */ Object b;

    public /* synthetic */ id(Object obj) {
        this.b = obj;
    }

    public void a() {
        gs4.a((gs4) this.b);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        b36 b36Var = (b36) this.b;
        ((Throwable) obj).getClass();
        return b36Var;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$51((SimpleBasePlayer.State) this.b, (Player.Listener) obj);
    }

    @Override // com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger
    public void logEvent(String str, Bundle bundle) {
        ((AnalyticsDeferredProxy) this.b).lambda$getAnalyticsEventLogger$1(str, bundle);
    }
}
