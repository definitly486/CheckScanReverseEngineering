package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import com.my.target.a0;
import com.my.target.c1;
import yads.bw4;
import yads.iw4;
import yads.tt3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ch1 implements xl3, ze6, ListenerSet.Event, tt3, c1.a {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ch1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (gf9) ((nl3) this.c).invoke(obj);
    }

    @Override // com.my.target.c1.a
    public void d(e6a e6aVar) {
        ((a0) this.c).e = e6aVar;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 2:
                SimpleBasePlayer.lambda$updateStateAndInformListeners$37((SimpleBasePlayer.State) obj2, (Player.Listener) obj);
                break;
            default:
                bw4 bw4Var = (bw4) obj2;
                ((iw4) obj).a(bw4Var.e, bw4Var.l);
                break;
        }
    }

    @Override // defpackage.ze6
    public boolean test(Object obj) {
        return InAppMessageStreamManager.containsTriggeringCondition((String) this.c, (m21) obj);
    }
}
