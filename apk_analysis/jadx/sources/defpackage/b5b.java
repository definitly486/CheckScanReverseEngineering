package defpackage;

import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.location.zzv;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class b5b extends zzv {
    public final /* synthetic */ TaskCompletionSource a;

    public b5b(TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.location.zzw
    public final void zzb(Status status, LocationAvailability locationAvailability, ApiMetadata apiMetadata) {
        TaskUtil.setResultOrApiException(status, locationAvailability, this.a, apiMetadata);
    }
}
