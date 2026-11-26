package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements PendingResult.StatusListener {
    public final /* synthetic */ PendingResult a;
    public final /* synthetic */ TaskCompletionSource b;
    public final /* synthetic */ PendingResultUtil.ResultConverter c;

    public c(PendingResult pendingResult, TaskCompletionSource taskCompletionSource, PendingResultUtil.ResultConverter resultConverter) {
        this.a = pendingResult;
        this.b = taskCompletionSource;
        this.c = resultConverter;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        boolean zIsSuccess = status.isSuccess();
        TaskCompletionSource taskCompletionSource = this.b;
        if (!zIsSuccess) {
            taskCompletionSource.setException(ApiExceptionUtil.fromStatus(status));
            return;
        }
        taskCompletionSource.setResult(this.c.convert(this.a.await(0L, TimeUnit.MILLISECONDS)));
    }
}
