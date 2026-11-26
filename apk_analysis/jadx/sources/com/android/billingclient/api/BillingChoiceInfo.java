package com.android.billingclient.api;

/* JADX INFO: loaded from: classes3.dex */
public final class BillingChoiceInfo {
    private final String playBillingChoiceImageUrl;
    private final String playBillingLoyaltyInfo;

    public BillingChoiceInfo(String str, String str2) {
        this.playBillingChoiceImageUrl = str;
        this.playBillingLoyaltyInfo = str2;
    }

    public String getPlayBillingChoiceImageUrl() {
        return this.playBillingChoiceImageUrl;
    }

    public String getPlayBillingLoyaltyInfo() {
        return this.playBillingLoyaltyInfo;
    }
}
