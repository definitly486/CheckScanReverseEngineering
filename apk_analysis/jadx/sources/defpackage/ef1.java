package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import io.appmetrica.analytics.push.provider.firebase.impl.f;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ef1 implements xl3, SimpleBasePlayer.PositionSupplier, OnSuccessListener, eh8.a, OnCompleteListener {
    public final /* synthetic */ Object b;

    public /* synthetic */ ef1(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (qq1) ((nl3) this.b).invoke(obj);
    }

    @Override // eh8.a
    public Object execute() {
        return Integer.valueOf(((f13) this.b).s());
    }

    @Override // androidx.media3.common.SimpleBasePlayer.PositionSupplier
    public long get() {
        return ((Player) this.b).getBufferedPosition();
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        f.a((CountDownLatch) this.b, task);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        ((nb5.a) this.b).invoke(obj);
    }
}
