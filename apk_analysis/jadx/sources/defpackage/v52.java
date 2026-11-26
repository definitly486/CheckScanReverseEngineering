package defpackage;

import android.text.StaticLayout;
import android.view.ViewConfiguration;
import androidx.core.util.Supplier;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.material.internal.StaticLayoutBuilderConfigurer;
import com.google.android.material.textfield.TextInputLayout;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorker;
import com.warefly.checkscan.presentation.bonuses.onlineShops.presenter.a;
import java.util.concurrent.Callable;
import yads.eq2;
import yads.iw4;
import yads.tt3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v52 implements Continuation, xl3, ListenerSet.Event, StaticLayoutBuilderConfigurer, Supplier, tt3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ v52(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (qq1) ((a.c) this.c).invoke(obj);
    }

    @Override // com.google.android.material.internal.StaticLayoutBuilderConfigurer
    public void configure(StaticLayout.Builder builder) {
        ((TextInputLayout) this.c).lambda$updateEditTextHeight$2(builder);
    }

    @Override // androidx.core.util.Supplier
    public Object get() {
        return Integer.valueOf(((ViewConfiguration) this.c).getScaledMinimumFlingVelocity());
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 2:
                SimpleBasePlayer.lambda$updateStateAndInformListeners$39((SimpleBasePlayer.State) obj2, (Player.Listener) obj);
                break;
            default:
                ((eq2) obj2).b((iw4) obj);
                break;
        }
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        return CrashlyticsWorker.lambda$submit$0((Callable) this.c, task);
    }
}
