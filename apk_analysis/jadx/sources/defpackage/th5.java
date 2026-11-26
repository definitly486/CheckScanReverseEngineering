package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes4.dex */
public final class th5 implements RemoteCall, Continuation {
    public final Object b;

    public /* synthetic */ th5(Object obj) {
        this.b = obj;
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
        zzec zzecVar = (zzec) obj;
        Api.ClientKey clientKey = zzcg.a;
        ListenerHolder.ListenerKey listenerKey = ((ListenerHolder) this.b).getListenerKey();
        if (listenerKey != null) {
            zzecVar.zzD(listenerKey, taskCompletionSource);
        }
    }

    @Override // com.google.android.gms.tasks.Continuation
    public /* bridge */ /* synthetic */ Object then(Task task) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll((Collection) this.b);
        return Tasks.forResult(arrayList);
    }

    public th5(nz3 nz3Var, x65 x65Var, i13 i13Var, ql9.a aVar) {
        this.b = nz3Var;
    }
}
