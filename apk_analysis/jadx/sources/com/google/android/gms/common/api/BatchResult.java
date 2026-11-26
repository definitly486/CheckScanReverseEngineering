package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class BatchResult implements Result {
    public final Status b;
    public final PendingResult[] c;

    public BatchResult(Status status, PendingResult[] pendingResultArr) {
        this.b = status;
        this.c = pendingResultArr;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.b;
    }

    public <R extends Result> R take(BatchResultToken<R> batchResultToken) {
        int i = batchResultToken.a;
        PendingResult[] pendingResultArr = this.c;
        Preconditions.checkArgument(i < pendingResultArr.length, "The result token does not belong to this batch");
        return (R) pendingResultArr[batchResultToken.a].await(0L, TimeUnit.MILLISECONDS);
    }
}
