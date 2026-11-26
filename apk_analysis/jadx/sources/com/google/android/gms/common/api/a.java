package com.google.android.gms.common.api;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements PendingResult.StatusListener {
    public final /* synthetic */ Batch a;

    public a(Batch batch) {
        this.a = batch;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        Batch batch = this.a;
        synchronized (batch.t) {
            try {
                if (batch.isCanceled()) {
                    return;
                }
                if (status.isCanceled()) {
                    batch.r = true;
                } else if (!status.isSuccess()) {
                    batch.q = true;
                }
                int i = batch.p - 1;
                batch.p = i;
                if (i == 0) {
                    if (batch.r) {
                        super/*com.google.android.gms.common.api.internal.BasePendingResult*/.cancel();
                    } else {
                        batch.setResult(new BatchResult(batch.q ? new Status(13) : Status.RESULT_SUCCESS, batch.s));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
