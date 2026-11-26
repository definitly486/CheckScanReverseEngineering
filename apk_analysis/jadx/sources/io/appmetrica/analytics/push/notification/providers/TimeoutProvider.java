package io.appmetrica.analytics.push.notification.providers;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import io.appmetrica.analytics.push.coreutils.internal.CoreConstants;
import io.appmetrica.analytics.push.impl.AbstractC1470g2;
import io.appmetrica.analytics.push.impl.AbstractC1471h;
import io.appmetrica.analytics.push.impl.E1;
import io.appmetrica.analytics.push.internal.receiver.TtlBroadcastReceiver;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.model.PushNotification;
import io.appmetrica.analytics.push.notification.NotificationValueProvider;

/* JADX INFO: loaded from: classes5.dex */
public class TimeoutProvider implements NotificationValueProvider<Long> {
    private final Context a;

    public TimeoutProvider(Context context) {
        this.a = context;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.appmetrica.analytics.push.notification.NotificationValueProvider
    public Long get(PushMessage pushMessage) {
        Long timeToHideMillis;
        Long lValueOf;
        AlarmManager alarmManager;
        PushNotification notification = pushMessage.getNotification();
        if (notification != null) {
            lValueOf = notification.getNotificationTtl();
            timeToHideMillis = notification.getTimeToHideMillis();
        } else {
            timeToHideMillis = null;
            lValueOf = null;
        }
        if (lValueOf != null && timeToHideMillis != null) {
            lValueOf = Long.valueOf(Math.min(lValueOf.longValue(), timeToHideMillis.longValue() - System.currentTimeMillis()));
        } else if (timeToHideMillis != null) {
            lValueOf = Long.valueOf(timeToHideMillis.longValue() - System.currentTimeMillis());
        }
        if (AbstractC1471h.a(26)) {
            return lValueOf;
        }
        if (lValueOf != null && (alarmManager = (AlarmManager) this.a.getSystemService(NotificationCompat.CATEGORY_ALARM)) != null) {
            Integer notificationId = pushMessage.getNotification() == null ? null : pushMessage.getNotification().getNotificationId();
            alarmManager.set(1, lValueOf.longValue() + System.currentTimeMillis(), PendingIntent.getBroadcast(this.a, AbstractC1470g2.a(this.a), new Intent(this.a, (Class<?>) TtlBroadcastReceiver.class).setAction(TtlBroadcastReceiver.EXPIRED_BY_TTL_ACTION).putExtra("io.appmetrica.analytics.push.extra.PUSH_ID", pushMessage.getNotificationId()).putExtra("io.appmetrica.analytics.push.extra.NOTIFICATION_ID", notificationId == null ? 0 : notificationId.intValue()).putExtra("io.appmetrica.analytics.push.extra.NOTIFICATION_TAG", pushMessage.getNotification() == null ? null : pushMessage.getNotification().getNotificationTag()).putExtra("io.appmetrica.analytics.push.extra.PAYLOAD", pushMessage.getPayload()).putExtra(CoreConstants.EXTRA_TRANSPORT, pushMessage.getTransport()), E1.a(false)));
        }
        return null;
    }
}
