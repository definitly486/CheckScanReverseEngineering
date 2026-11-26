package defpackage;

import android.app.PendingIntent;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.location.zzr;
import com.google.android.gms.location.GeofenceStatusCodes;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class d4b extends zzr {
    public final /* synthetic */ TaskCompletionSource a;

    public d4b(TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.location.zzs
    public final void zzb(int i, String[] strArr, ApiMetadata apiMetadata) {
        TaskUtil.setResultOrApiException(new Status(GeofenceStatusCodes.zza(i)), (TaskCompletionSource<Void>) this.a, apiMetadata);
    }

    @Override // com.google.android.gms.internal.location.zzs
    public final void zzc(int i, String[] strArr, ApiMetadata apiMetadata) {
        TaskUtil.setResultOrApiException(new Status(GeofenceStatusCodes.zza(i)), (TaskCompletionSource<Void>) this.a, apiMetadata);
    }

    @Override // com.google.android.gms.internal.location.zzs
    public final void zzd(int i, PendingIntent pendingIntent, ApiMetadata apiMetadata) {
        TaskUtil.setResultOrApiException(new Status(GeofenceStatusCodes.zza(i)), (TaskCompletionSource<Void>) this.a, apiMetadata);
    }
}
