package defpackage;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o0b implements RemoteCall, OnCompleteListener {
    public final /* synthetic */ Object b;

    public /* synthetic */ o0b(Object obj) {
        this.b = obj;
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
        zzec zzecVar = (zzec) obj;
        ListenerHolder.ListenerKey listenerKey = ((ListenerHolder) this.b).getListenerKey();
        if (listenerKey != null) {
            zzecVar.zzD(listenerKey, taskCompletionSource);
        }
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public /* synthetic */ void onComplete(Task task) {
        ((CountDownLatch) this.b).countDown();
    }
}
