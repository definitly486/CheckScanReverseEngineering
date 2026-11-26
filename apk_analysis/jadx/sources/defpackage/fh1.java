package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorker;
import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import com.my.target.c1;
import com.my.target.lb;
import com.warefly.checkscan.presentation.statistics.presenter.a;
import java.util.concurrent.Callable;
import yads.eq2;
import yads.iw4;
import yads.my2;
import yads.ut3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fh1 implements xl3, Continuation, ListenerSet.Event, ut3, c1.a {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ fh1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // yads.ut3
    public void a(Object obj, my2 my2Var) {
        ((eq2) this.c).a((iw4) obj, my2Var);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (qq1) ((jd1) obj2).invoke(obj);
            case 1:
            default:
                return ((a) obj2).invoke(obj);
            case 2:
                return ((InAppMessageStreamManager) obj2).lambda$createFirebaseInAppMessageStream$11((m21) obj);
        }
    }

    @Override // com.my.target.c1.a
    public void d(e6a e6aVar) {
        lb lbVar = (lb) this.c;
        int i = lb.o;
        lbVar.e = e6aVar;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        SimpleBasePlayer.lambda$updateStateAndInformListeners$42((SimpleBasePlayer.State) this.c, (Player.Listener) obj);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        return CrashlyticsWorker.lambda$submitTask$3((Callable) this.c, task);
    }
}
