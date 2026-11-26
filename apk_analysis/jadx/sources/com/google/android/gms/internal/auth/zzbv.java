package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbv implements ProxyApi.SpatulaHeaderResult {
    public final Status b;
    public final String c;

    public zzbv(Status status) {
        this.b = (Status) Preconditions.checkNotNull(status);
        this.c = "";
    }

    @Override // com.google.android.gms.auth.api.proxy.ProxyApi.SpatulaHeaderResult
    public final String getSpatulaHeader() {
        return this.c;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.b;
    }

    public zzbv(String str) {
        this.c = (String) Preconditions.checkNotNull(str);
        this.b = Status.RESULT_SUCCESS;
    }
}
