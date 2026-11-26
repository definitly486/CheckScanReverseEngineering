package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.service.zab;
import com.google.android.gms.common.internal.service.zaj;
import com.google.android.gms.common.internal.service.zaq;
import com.google.android.gms.internal.location.zzdq;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xla implements RemoteCall, zzdq {
    public Object b;

    public /* synthetic */ xla(Object obj) {
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        Api api = zaq.a;
        ((zaj) ((zab) obj).getService()).zae((com.google.android.gms.common.internal.zab) this.b);
        ((TaskCompletionSource) obj2).setResult(null);
    }

    @Override // com.google.android.gms.internal.location.zzdq
    public synchronized ListenerHolder zza() {
        return (ListenerHolder) this.b;
    }

    @Override // com.google.android.gms.internal.location.zzdq
    public synchronized void zzb(ListenerHolder listenerHolder) {
        ListenerHolder listenerHolder2 = (ListenerHolder) this.b;
        if (listenerHolder2 != listenerHolder) {
            listenerHolder2.clear();
            this.b = listenerHolder;
        }
    }

    @Override // com.google.android.gms.internal.location.zzdq
    public void zzc() {
    }
}
