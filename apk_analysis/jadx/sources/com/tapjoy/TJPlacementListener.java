package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public interface TJPlacementListener {
    @Deprecated
    default void onClick(TJPlacement tJPlacement) {
    }

    void onContentDismiss(TJPlacement tJPlacement);

    void onContentReady(TJPlacement tJPlacement);

    void onContentShow(TJPlacement tJPlacement);

    @Deprecated
    default void onPurchaseRequest(TJPlacement tJPlacement, TJActionRequest tJActionRequest, String str) {
    }

    void onRequestFailure(TJPlacement tJPlacement, TJError tJError);

    void onRequestSuccess(TJPlacement tJPlacement);

    @Deprecated
    default void onRewardRequest(TJPlacement tJPlacement, TJActionRequest tJActionRequest, String str, int i) {
    }
}
