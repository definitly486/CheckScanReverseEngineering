package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.my.tracker.obfuscated.d3;
import com.my.tracker.obfuscated.f3;
import com.my.tracker.obfuscated.p2;
import com.my.tracker.obfuscated.u2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zp0 implements xl3, ListenerSet.Event, d3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ zp0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // com.my.tracker.obfuscated.d3
    public void a(Object obj, Object obj2, Object obj3) {
        ((p2) this.c).b((u2) obj, (Boolean) obj2, (f3) obj3);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (b36) ((nl3) obj2).invoke(obj);
            default:
                return (az8) ((ol6) obj2).invoke(obj);
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$59((SimpleBasePlayer.State) this.c, (Player.Listener) obj);
    }
}
