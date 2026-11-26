package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public interface TJActionRequest {
    void cancelled();

    void completed();

    String getRequestId();

    String getToken();
}
