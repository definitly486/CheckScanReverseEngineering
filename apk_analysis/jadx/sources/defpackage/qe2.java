package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.firebase.inappmessaging.internal.ImpressionStorageClient;
import yads.pe;
import yads.tt3;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class qe2 implements ListenerSet.Event, xl3, tt3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ qe2(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return ((ImpressionStorageClient) this.c).lambda$storeImpression$1((i21) this.d, (j21) obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.b) {
            case 0:
                ((AnalyticsListener) obj).onAvailableCommandsChanged((AnalyticsListener.EventTime) this.c, (Player.Commands) this.d);
                break;
            default:
                ((pe) obj).getClass();
                break;
        }
    }
}
