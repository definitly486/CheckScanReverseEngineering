package defpackage;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.internal.location.zzdq;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class d0b implements RemoteCall, zzdq {
    public final c0b b;
    public ListenerHolder c;
    public boolean d = true;
    public final /* synthetic */ zzcg e;

    public d0b(zzcg zzcgVar, ListenerHolder listenerHolder, c0b c0bVar) {
        this.e = zzcgVar;
        this.c = listenerHolder;
        this.b = c0bVar;
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final /* bridge */ /* synthetic */ void accept(Object obj, Object obj2) {
        ListenerHolder.ListenerKey listenerKey;
        boolean z;
        zzec zzecVar = (zzec) obj;
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
        synchronized (this) {
            listenerKey = this.c.getListenerKey();
            z = this.d;
            this.c.clear();
        }
        if (listenerKey == null) {
            taskCompletionSource.setResult(Boolean.FALSE);
        } else {
            this.b.a(zzecVar, listenerKey, z, taskCompletionSource);
        }
    }

    @Override // com.google.android.gms.internal.location.zzdq
    public final synchronized ListenerHolder zza() {
        return this.c;
    }

    @Override // com.google.android.gms.internal.location.zzdq
    public final synchronized void zzb(ListenerHolder listenerHolder) {
        ListenerHolder listenerHolder2 = this.c;
        if (listenerHolder2 != listenerHolder) {
            listenerHolder2.clear();
            this.c = listenerHolder;
        }
    }

    @Override // com.google.android.gms.internal.location.zzdq
    public final void zzc() {
        ListenerHolder.ListenerKey<?> listenerKey;
        synchronized (this) {
            this.d = false;
            listenerKey = this.c.getListenerKey();
        }
        if (listenerKey != null) {
            this.e.doUnregisterEventListener(listenerKey, 2441);
        }
    }
}
