package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;

/* JADX INFO: loaded from: classes4.dex */
public class Response<T extends Result> {
    public Result b;

    public Response(T t) {
        this.b = t;
    }

    public void setResult(T t) {
        this.b = t;
    }

    public Response() {
    }
}
