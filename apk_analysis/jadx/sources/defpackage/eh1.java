package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorker;
import java.util.concurrent.Callable;
import yads.kg6;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class eh1 implements xl3, Continuation, ListenerSet.Event, kg6 {
    public final /* synthetic */ Object b;

    public /* synthetic */ eh1(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (qq1) ((gh1) this.b).invoke(obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$41((SimpleBasePlayer.State) this.b, (Player.Listener) obj);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        return CrashlyticsWorker.lambda$submitTask$2((Callable) this.b, task);
    }
}
