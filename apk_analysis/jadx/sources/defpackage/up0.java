package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import com.tapjoy.TJTaskHandler;
import com.tapjoy.a0;
import com.tapjoy.internal.p1;
import java.util.Iterator;
import java.util.List;
import yads.d85;
import yads.r75;
import yads.z75;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class up0 implements xl3, ListenerSet.Event, eh8.a, TJTaskHandler, d85 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ up0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // yads.d85
    public boolean a(r75 r75Var) {
        return z75.a(this.c, r75Var);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (List) ((nl3) obj2).invoke(obj);
            case 1:
                return (qq1) ((wg1) obj2).invoke(obj);
            case 2:
                return (hl3) ((zv2) obj2).invoke(obj);
            default:
                return ((InAppMessageStreamManager) obj2).lambda$createFirebaseInAppMessageStream$21((String) obj);
        }
    }

    @Override // eh8.a
    public Object execute() {
        jk9 jk9Var = (jk9) this.c;
        Iterator<s29> it = jk9Var.b.R().iterator();
        while (it.hasNext()) {
            jk9Var.c.a(it.next(), 1);
        }
        return null;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$55((SimpleBasePlayer.State) this.c, (Player.Listener) obj);
    }

    @Override // com.tapjoy.TJTaskHandler
    public void onComplete(Object obj) {
        p1.a((a0) this.c, (Boolean) obj);
    }
}
