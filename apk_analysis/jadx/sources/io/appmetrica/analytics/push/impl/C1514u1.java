package io.appmetrica.analytics.push.impl;

import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import androidx.core.app.NotificationManagerCompat;
import defpackage.ta8;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.model.PushNotification;
import io.appmetrica.analytics.push.settings.PushFilter;
import java.util.Arrays;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.u1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1514u1 implements PushFilter {
    public final NotificationManager a;
    public final NotificationManagerCompat b;

    /* JADX WARN: Illegal instructions before constructor call */
    public C1514u1(Context context) {
        Object systemService = context.getSystemService("notification");
        systemService.getClass();
        this((NotificationManager) systemService, NotificationManagerCompat.from(context));
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0034  */
    @Override // io.appmetrica.analytics.push.settings.PushFilter
    public final PushFilter.FilterResult filter(PushMessage pushMessage) {
        String channelId;
        if (pushMessage.isSilent()) {
            return PushFilter.FilterResult.show();
        }
        if (!this.b.areNotificationsEnabled()) {
            return PushFilter.FilterResult.silence("Disabled system notification", "Disabled all notifications");
        }
        int i = Build.VERSION.SDK_INT;
        PushNotification notification = pushMessage.getNotification();
        if (notification == null || (channelId = notification.getChannelId()) == null) {
            channelId = "appmetrica_push";
        } else {
            if (ta8.M(channelId)) {
                channelId = null;
            }
            if (channelId == null) {
                channelId = "appmetrica_push";
            }
        }
        if (C1527z.b(this.a, channelId) == 0) {
            return PushFilter.FilterResult.silence("Disabled system notification", String.format("Disabled notifications for \"%s\" channel", Arrays.copyOf(new Object[]{channelId}, 1)));
        }
        return (i < 28 || !A.a(this.a, channelId)) ? PushFilter.FilterResult.show() : PushFilter.FilterResult.silence("Disabled system notification", String.format("Disabled notifications for \"%s\" group", Arrays.copyOf(new Object[]{C1527z.a(this.a, channelId)}, 1)));
    }

    public C1514u1(NotificationManager notificationManager, NotificationManagerCompat notificationManagerCompat) {
        this.a = notificationManager;
        this.b = notificationManagerCompat;
    }
}
