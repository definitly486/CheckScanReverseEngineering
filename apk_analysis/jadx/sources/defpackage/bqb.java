package defpackage;

import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.cloudmessaging.zzf;
import com.google.android.gms.internal.cloudmessaging.zzm;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class bqb extends zzf {
    public final /* synthetic */ TaskCompletionSource a;

    public bqb(zzm zzmVar, TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.cloudmessaging.zzg
    public final void zzb(Status status, String str, ApiMetadata apiMetadata) {
        TaskUtil.setResultOrApiException(status, str, (TaskCompletionSource<String>) this.a);
    }
}
