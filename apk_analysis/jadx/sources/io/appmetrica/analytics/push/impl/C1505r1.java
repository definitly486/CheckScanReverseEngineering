package io.appmetrica.analytics.push.impl;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import defpackage.b36;
import defpackage.kv2;
import defpackage.me0;
import defpackage.n05;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.model.PushNotification;
import io.appmetrica.analytics.push.settings.PushNotificationFactory;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import org.json.JSONArray;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.r1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1505r1 {
    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Context context, PushNotificationFactory pushNotificationFactory, PushMessage pushMessage) {
        Integer notificationId;
        V1 v1;
        String str;
        NotificationManager notificationManager;
        NotificationManager notificationManager2;
        boolean zA;
        Notification notificationBuildNotification = pushNotificationFactory.buildNotification(context, pushMessage);
        PushNotification notification = pushMessage.getNotification();
        if (notification == null || (notificationId = notification.getNotificationId()) == null) {
            notificationId = 0;
        }
        int iIntValue = notificationId.intValue();
        PushNotification notification2 = pushMessage.getNotification();
        String notificationTag = notification2 != null ? notification2.getNotificationTag() : null;
        TrackersHub.getInstance().reportEvent("NotificationPublisher.publishNotification", n05.e(new b36("pushId", pushMessage.getNotificationId()), new b36("isDefaultNotificationFactory", Boolean.valueOf(pushNotificationFactory == Z1.a))));
        if (notificationBuildNotification == null) {
            if (CoreUtils.isEmpty(pushMessage.getNotificationId())) {
                return;
            }
            X1 x1 = X1.b;
            String notificationId2 = pushMessage.getNotificationId();
            notificationId2.getClass();
            x1.onNotificationIgnored(notificationId2, "Notification is null", "", pushMessage.getPayload(), pushMessage.getTransport());
            return;
        }
        String notificationId3 = pushMessage.getNotificationId();
        String transport = pushMessage.getTransport();
        Iterator it = r.a(context).f().c().iterator();
        while (true) {
            if (!it.hasNext()) {
                v1 = null;
                break;
            }
            v1 = (V1) it.next();
            String str2 = v1.c;
            if ((str2 == null && notificationTag == null) || (str2 != null && str2.equals(notificationTag))) {
                Integer num = v1.b;
                if (num != null && num.equals(notificationId)) {
                    break;
                }
            }
        }
        String str3 = v1 == null ? null : v1.a;
        boolean z = v1 != null && Boolean.TRUE.equals(v1.d);
        if (!AbstractC1471h.a(23) || (zA = o2.a((NotificationManager) context.getSystemService("notification"), notificationTag, iIntValue)) == z) {
            str = null;
        } else {
            String str4 = z ? "" : "not ";
            String str5 = zA ? "" : "not ";
            StringBuilder sb = new StringBuilder("Failed get active status for notification [");
            sb.append(notificationTag);
            sb.append(", ");
            sb.append(notificationId);
            sb.append("]. Preferences has pushId ");
            kv2.c(sb, str3, " (", str4, "active), but notification in status bar is ");
            String strD = me0.d(sb, str5, AppMeasurementSdk.ConditionalUserProperty.ACTIVE);
            str = null;
            TrackersHub.getInstance().reportError(strD, null);
            PublicLogger.INSTANCE.error(strD, new Object[0]);
            z = zA;
        }
        if (!z) {
            str3 = str;
        }
        if (str3 != null) {
            ((C1512u) r.a(context).f.d()).onNotificationReplace(str3, notificationId3, transport);
            r.a(context).f().b(str3);
        }
        if (!C1527z.a(context, notificationBuildNotification)) {
            C1527z.a(pushMessage, notificationBuildNotification);
            return;
        }
        try {
            Object systemService = context.getSystemService("notification");
            if (systemService instanceof NotificationManager) {
                notificationManager2 = (NotificationManager) systemService;
            } else {
                notificationManager = str;
            }
            if (notificationManager != 0) {
                notificationManager = notificationManager2;
                notificationManager.notify(notificationTag, iIntValue, notificationBuildNotification);
            }
        } catch (Throwable th) {
            TrackersHub.getInstance().reportError("Failed show notification with tag " + notificationTag + " and id " + iIntValue, th);
        }
        notificationManager = notificationManager2;
        if (CoreUtils.isNotEmpty(pushMessage.getNotificationId())) {
            X1 x2 = X1.b;
            String notificationId4 = pushMessage.getNotificationId();
            notificationId4.getClass();
            x2.onNotificationShown(notificationId4, pushMessage.getPayload(), pushMessage.getTransport());
            W1 w1F = r.a(context).f();
            String notificationId5 = pushMessage.getNotificationId();
            notificationId5.getClass();
            w1F.a(notificationId5, notificationId, notificationTag, true);
            if (pushMessage.getNotification() != null) {
                String channelId = pushMessage.getNotification().getChannelId();
                long timestamp = pushMessage.getTimestamp();
                LinkedList linkedListA = w1F.a(channelId);
                linkedListA.add(Long.valueOf(timestamp));
                if (linkedListA.size() > 50) {
                    linkedListA.remove(0);
                }
                L1 l1 = w1F.a;
                String string = new JSONArray((Collection) linkedListA).toString();
                l1.getClass();
                l1.a("shown_times_millis_by_channel_id" + channelId, string);
            }
        }
    }
}
