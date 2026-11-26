package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Response;
import com.google.android.gms.common.api.Result;

/* JADX INFO: loaded from: classes4.dex */
public final class d implements PendingResultUtil.ResultConverter {
    public final /* synthetic */ Response a;

    public d(Response response) {
        this.a = response;
    }

    @Override // com.google.android.gms.common.internal.PendingResultUtil.ResultConverter
    public final /* bridge */ /* synthetic */ Object convert(Result result) {
        Response response = this.a;
        response.setResult(result);
        return response;
    }
}
