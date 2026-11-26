package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
public class StatusCallback extends IStatusCallback.Stub {
    public final BaseImplementation.ResultHolder<Status> a;

    public StatusCallback(BaseImplementation.ResultHolder<Status> resultHolder) {
        this.a = resultHolder;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public void onResult(Status status) {
        this.a.setResult(status);
    }
}
