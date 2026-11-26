package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public interface TJPlacementRequestListener {
    void onCachingCompleted();

    void onContentReady();

    void onContentRequestFailure(TJError tJError);

    void onContentRequestSuccess(TJPlacementData tJPlacementData);

    void onPlacementRequestSuccess();
}
