package defpackage;

import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.appset.zzc;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.appset.zze;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class w8c extends zze {
    public final /* synthetic */ TaskCompletionSource a;

    public w8c(TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.appset.zzf
    public final void zzb(Status status, zzc zzcVar) {
        TaskUtil.setResultOrApiException(status, zzcVar != null ? new AppSetIdInfo(zzcVar.zzb(), zzcVar.zza()) : null, (TaskCompletionSource<AppSetIdInfo>) this.a);
    }
}
