package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.common.SessionReportingCoordinator;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mg1 implements xl3, Continuation, ListenerSet.Event {
    public final /* synthetic */ Object b;

    public /* synthetic */ mg1(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (qq1) ((tg1) this.b).invoke(obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$54((SimpleBasePlayer.State) this.b, (Player.Listener) obj);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        return Boolean.valueOf(((SessionReportingCoordinator) this.b).onReportSendComplete(task));
    }
}
