package io.appmetrica.analytics.impl;

import android.telephony.SubscriptionInfo;
import io.appmetrica.analytics.coreutils.internal.parsing.ParseUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class Il {
    public static final Il a = new Il();

    private Il() {
    }

    public static final Integer a(SubscriptionInfo subscriptionInfo) {
        return ParseUtils.intValueOf(subscriptionInfo.getMccString());
    }

    public static final Integer b(SubscriptionInfo subscriptionInfo) {
        return ParseUtils.intValueOf(subscriptionInfo.getMncString());
    }
}
