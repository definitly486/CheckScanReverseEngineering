package io.appmetrica.analytics.push.notification.providers;

import android.content.Context;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.impl.AbstractC1471h;
import io.appmetrica.analytics.push.impl.C1488l1;
import io.appmetrica.analytics.push.impl.C1527z;
import io.appmetrica.analytics.push.impl.r;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.model.PushNotification;
import io.appmetrica.analytics.push.notification.NotificationValueProvider;

/* JADX INFO: loaded from: classes5.dex */
public class ChannelIdProvider implements NotificationValueProvider<String> {
    private final Context a;

    public ChannelIdProvider(Context context) {
        this.a = context;
    }

    @Override // io.appmetrica.analytics.push.notification.NotificationValueProvider
    public String get(PushMessage pushMessage) {
        PushNotification notification = pushMessage.getNotification();
        String channelId = notification != null ? notification.getChannelId() : null;
        if (!CoreUtils.isEmpty(channelId)) {
            return channelId;
        }
        C1488l1 c1488l1B = r.a(this.a).b();
        c1488l1B.getClass();
        if (!AbstractC1471h.a(26)) {
            return "appmetrica_push";
        }
        C1527z.a(c1488l1B.a, c1488l1B.b);
        return "appmetrica_push";
    }
}
