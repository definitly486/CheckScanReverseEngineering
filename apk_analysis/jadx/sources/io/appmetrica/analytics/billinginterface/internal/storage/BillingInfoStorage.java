package io.appmetrica.analytics.billinginterface.internal.storage;

import io.appmetrica.analytics.billinginterface.internal.BillingInfo;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface BillingInfoStorage {
    List<BillingInfo> getBillingInfo();

    boolean isFirstInappCheckOccurred();

    void saveInfo(List<BillingInfo> list, boolean z);
}
