package defpackage;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.location.zzdq;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.internal.p001authapiphone.zzah;
import com.google.android.gms.internal.p001authapiphone.zzam;
import com.google.android.gms.internal.p001authapiphone.zzk;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wta implements RemoteCall, zzdq {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ wta(zzam zzamVar, String str) {
        this.b = zzamVar;
        this.c = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        ((zzk) ((zzah) obj).getService()).zzd((String) this.c, new rta((zzam) this.b, (TaskCompletionSource) obj2));
    }

    @Override // com.google.android.gms.internal.location.zzdq
    public ListenerHolder zza() {
        return (ListenerHolder) this.b;
    }

    @Override // com.google.android.gms.internal.location.zzdq
    public void zzb(ListenerHolder listenerHolder) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.location.zzdq
    public void zzc() {
        ((TaskCompletionSource) this.c).trySetResult(null);
    }

    public wta(zzec zzecVar, ListenerHolder listenerHolder, TaskCompletionSource taskCompletionSource) {
        this.b = listenerHolder;
        this.c = taskCompletionSource;
    }
}
