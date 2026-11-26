package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import io.appmetrica.analytics.push.model.Filters;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.model.PushNotification;
import io.appmetrica.analytics.push.settings.PushFilter;
import java.util.LinkedList;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class n2 implements PushFilter {
    public final W1 a;

    public n2(W1 w1) {
        this.a = w1;
    }

    @Override // io.appmetrica.analytics.push.settings.PushFilter
    public final PushFilter.FilterResult filter(PushMessage pushMessage) {
        Filters filters = pushMessage.getFilters();
        Integer onePushPerPeriodMinutes = filters == null ? null : filters.getOnePushPerPeriodMinutes();
        if (onePushPerPeriodMinutes == null) {
            return PushFilter.FilterResult.show();
        }
        PushNotification notification = pushMessage.getNotification();
        LinkedList linkedListA = this.a.a(notification != null ? notification.getChannelId() : null);
        long jLongValue = linkedListA.isEmpty() ? 0L : ((Long) linkedListA.get(linkedListA.size() - 1)).longValue();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jLongValue > jCurrentTimeMillis) {
            PublicLogger.INSTANCE.warning("%s Last push was shown in future", "[SinglePushPerPeriodFilter]");
            return PushFilter.FilterResult.show();
        }
        long j = jCurrentTimeMillis - jLongValue;
        if (j >= TimeUnit.MINUTES.toMillis(onePushPerPeriodMinutes.intValue())) {
            return PushFilter.FilterResult.show();
        }
        Locale locale = Locale.US;
        return PushFilter.FilterResult.silence("Already have shown push in this period", "Previous push was shown [" + (j / 60000) + "] minutes ago, min period is [" + onePushPerPeriodMinutes + "]");
    }
}
