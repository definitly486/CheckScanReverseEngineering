package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorker;
import com.my.target.bg;
import com.my.target.c1;
import java.util.concurrent.Callable;
import yads.eq2;
import yads.iq2;
import yads.jq2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class x52 implements Continuation, ListenerSet.Event, xl3, c1.a, jq2 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ x52(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    public void a(iq2 iq2Var) {
        ((eq2) this.c).b(iq2Var);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (k78) ((nl3) this.c).invoke(obj);
    }

    @Override // com.my.target.c1.a
    public void d(e6a e6aVar) {
        bg bgVar = (bg) this.c;
        int i = bg.z;
        bgVar.x = e6aVar;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 1:
                ((AnalyticsListener) obj).onDrmKeysRestored((AnalyticsListener.EventTime) obj2);
                break;
            default:
                SimpleBasePlayer.lambda$updateStateAndInformListeners$43((SimpleBasePlayer.State) obj2, (Player.Listener) obj);
                break;
        }
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        return CrashlyticsWorker.lambda$submitTaskOnSuccess$4((Callable) this.c, task);
    }
}
