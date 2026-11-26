package io.appmetrica.analytics.billingv8.impl;

import defpackage.aa4;
import defpackage.jh2;
import io.appmetrica.analytics.billinginterface.internal.BillingInfo;
import io.appmetrica.analytics.billinginterface.internal.ProductType;
import io.appmetrica.analytics.billinginterface.internal.config.BillingConfig;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoManager;
import io.appmetrica.analytics.billinginterface.internal.update.UpdatePolicy;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class o implements UpdatePolicy {
    public final SystemTimeProvider a;

    public /* synthetic */ o(SystemTimeProvider systemTimeProvider, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new SystemTimeProvider() : systemTimeProvider);
    }

    @Override // io.appmetrica.analytics.billinginterface.internal.update.UpdatePolicy
    public final Map<String, BillingInfo> getBillingInfoToUpdate(BillingConfig billingConfig, Map<String, ? extends BillingInfo> map, BillingInfoManager billingInfoManager) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ? extends BillingInfo> entry : map.entrySet()) {
            BillingInfo value = entry.getValue();
            ProductType productType = value.type;
            ProductType productType2 = ProductType.INAPP;
            TimeUnit timeUnit = TimeUnit.SECONDS;
            if (productType != productType2 || billingInfoManager.isFirstInappCheckOccurred()) {
                BillingInfo billingInfo = billingInfoManager.get(value.productId);
                if (((billingInfo == null || !aa4.e(billingInfo.purchaseToken, value.purchaseToken)) && (this.a.currentTimeMillis() - value.purchaseTime <= timeUnit.toMillis(billingConfig.firstCollectingInappMaxAgeSeconds) || value.type == ProductType.SUBS)) || (billingInfo != null && value.type == ProductType.SUBS && this.a.currentTimeMillis() - billingInfo.sendTime >= timeUnit.toMillis(billingConfig.sendFrequencySeconds))) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            } else if (this.a.currentTimeMillis() - value.purchaseTime <= timeUnit.toMillis(billingConfig.firstCollectingInappMaxAgeSeconds)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    public o(SystemTimeProvider systemTimeProvider) {
        this.a = systemTimeProvider;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public o() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
