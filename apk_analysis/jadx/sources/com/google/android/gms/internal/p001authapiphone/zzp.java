package com.google.android.gms.internal.p001authapiphone;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class zzp extends zzf {
    public final /* synthetic */ TaskCompletionSource a;

    public zzp(TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.p001authapiphone.zzg
    public final void zzb(PendingIntent pendingIntent, Status status) {
        zzr.a.i("InternalMissedCallRetrieverClient#onMissedCallRetrieverResult invoked with status: %s", status != null ? Integer.valueOf(status.getStatusCode()) : null);
        TaskUtil.setResultOrApiException(status, pendingIntent, (TaskCompletionSource<PendingIntent>) this.a);
    }
}
