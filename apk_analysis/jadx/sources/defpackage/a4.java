package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a4 implements xl3, SuccessContinuation, ListenerSet.Event, s0a.b {
    public final /* synthetic */ Object b;

    public /* synthetic */ a4(Object obj) {
        this.b = obj;
    }

    @Override // s0a.b
    public void a() {
        s0a s0aVar = (s0a) this.b;
        if (s0aVar.b == null) {
            return;
        }
        w4a.c(new kc2(s0aVar, 4));
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (qq1) ((r4) this.b).invoke(obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$45((SimpleBasePlayer.State) this.b, (Player.Listener) obj);
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) {
        return ((FirebaseRemoteConfig) this.b).lambda$fetchAndActivate$1((Void) obj);
    }
}
