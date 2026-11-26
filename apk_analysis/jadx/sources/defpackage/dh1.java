package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.tapjoy.TJTaskHandler;
import com.tapjoy.TapjoyConnectCore;
import yads.bw4;
import yads.iw4;
import yads.tt3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class dh1 implements xl3, ListenerSet.Event, TJTaskHandler, tt3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ dh1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (qq1) ((hh1) this.c).invoke(obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 1:
                ((AnalyticsListener) obj).onDrmKeysRemoved((AnalyticsListener.EventTime) obj2);
                break;
            case 2:
                SimpleBasePlayer.lambda$updateStateAndInformListeners$38((SimpleBasePlayer.State) obj2, (Player.Listener) obj);
                break;
            default:
                ((iw4) obj).onPlaybackStateChanged(((bw4) obj2).e);
                break;
        }
    }

    @Override // com.tapjoy.TJTaskHandler
    public void onComplete(Object obj) {
        ((TapjoyConnectCore) this.c).a((String) obj);
    }
}
