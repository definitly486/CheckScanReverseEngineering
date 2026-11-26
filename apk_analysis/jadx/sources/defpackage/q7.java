package defpackage;

import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.result.ActivityResultCallback;
import androidx.compose.runtime.State;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.my.target.c1;
import com.my.target.eg;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q7 implements ActivityResultCallback, xl3, ListenerSet.Event, c1.a {
    public final /* synthetic */ Object b;

    public /* synthetic */ q7(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (b36) ((nl3) this.b).invoke(obj);
    }

    @Override // com.my.target.c1.a
    public void d(e6a e6aVar) {
        eg egVar = (eg) this.b;
        int i = eg.O;
        egVar.M = e6aVar;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$57((SimpleBasePlayer.State) this.b, (Player.Listener) obj);
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        ActivityResultRegistryKt.rememberLauncherForActivityResult$lambda$4$0$0((State) this.b, obj);
    }
}
