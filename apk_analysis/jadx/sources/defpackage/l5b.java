package defpackage;

import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.location.zzm;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class l5b extends zzm {
    public final /* synthetic */ TaskCompletionSource a;

    public l5b(TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.location.zzn
    public final void zzb(Status status, boolean z, ApiMetadata apiMetadata) {
        TaskUtil.setResultOrApiException(status, Boolean.valueOf(z), this.a, apiMetadata);
    }
}
