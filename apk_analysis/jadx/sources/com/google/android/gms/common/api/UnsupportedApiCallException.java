package com.google.android.gms.common.api;

import com.google.android.gms.common.Feature;

/* JADX INFO: loaded from: classes4.dex */
public final class UnsupportedApiCallException extends UnsupportedOperationException {
    public final Feature b;

    public UnsupportedApiCallException(Feature feature) {
        this.b = feature;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return "Missing ".concat(String.valueOf(this.b));
    }
}
