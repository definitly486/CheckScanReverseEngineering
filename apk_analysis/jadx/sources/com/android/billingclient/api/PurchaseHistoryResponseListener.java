package com.android.billingclient.api;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface PurchaseHistoryResponseListener {
    void onPurchaseHistoryResponse(BillingResult billingResult, List<PurchaseHistoryRecord> list);
}
