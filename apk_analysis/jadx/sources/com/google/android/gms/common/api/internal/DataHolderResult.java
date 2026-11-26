package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DataHolderResult implements Result, Releasable {
    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return null;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
    }
}
