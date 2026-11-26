package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.my.target.e2;
import com.my.target.h2;
import com.my.target.m1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vx7 implements ListenerSet.Event, e5a {
    public final /* synthetic */ Object b;

    public /* synthetic */ vx7(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.e5a
    public void accept(Object obj) {
        e2.e eVar = ((h2) this.b).b;
        int iIntValue = ((Integer) obj).intValue();
        if (iIntValue == 2) {
            m1.d(eVar.a.a, "pageLoaded", 2, null);
            y14.r(null, "WebViewReachability: page loaded");
        } else {
            if (iIntValue != 3) {
                return;
            }
            m1.d(eVar.a.a, "pageLoadFailed", 2, null);
            y14.r(null, "WebViewReachability: page load error");
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$62((SimpleBasePlayer.State) this.b, (Player.Listener) obj);
    }
}
