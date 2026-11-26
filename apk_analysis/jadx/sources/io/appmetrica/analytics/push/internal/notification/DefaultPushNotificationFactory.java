package io.appmetrica.analytics.push.internal.notification;

import android.app.Notification;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import defpackage.b36;
import defpackage.cm3;
import defpackage.n05;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.impl.AbstractC1503q1;
import io.appmetrica.analytics.push.impl.C1510t0;
import io.appmetrica.analytics.push.impl.X1;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.model.PushNotification;
import io.appmetrica.analytics.push.notification.NotificationCustomizer;
import io.appmetrica.analytics.push.notification.NotificationCustomizersHolder;
import io.appmetrica.analytics.push.settings.PushNotificationFactory;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class DefaultPushNotificationFactory implements PushNotificationFactory {
    @Override // io.appmetrica.analytics.push.settings.PushNotificationFactory
    public Notification buildNotification(Context context, PushMessage pushMessage) {
        PushNotification notification = pushMessage.getNotification();
        String contentTitle = notification != null ? notification.getContentTitle() : null;
        PushNotification notification2 = pushMessage.getNotification();
        String contentText = notification2 != null ? notification2.getContentText() : null;
        if (!CoreUtils.isNotEmpty(contentTitle) && !CoreUtils.isNotEmpty(contentText)) {
            String notificationId = pushMessage.getNotificationId();
            PublicLogger.INSTANCE.info("Push filtered out. PushMessage does not contain content title and content text", new Object[0]);
            if (CoreUtils.isNotEmpty(notificationId)) {
                X1 x1 = X1.b;
                notificationId.getClass();
                x1.onNotificationIgnored(notificationId, "Push data format is invalid", "Not all required fields were set", pushMessage.getPayload(), pushMessage.getTransport());
            }
            return null;
        }
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context);
        C1510t0 c1510t0 = new C1510t0(context);
        NotificationCustomizersHolder notificationCustomizersHolder = AbstractC1503q1.a;
        NotificationCustomizer beforeCustomizer = notificationCustomizersHolder.getBeforeCustomizer();
        Map<cm3, NotificationCustomizer> customizers = notificationCustomizersHolder.getCustomizers();
        NotificationCustomizer afterCustomizer = notificationCustomizersHolder.getAfterCustomizer();
        if (beforeCustomizer != null || !customizers.isEmpty() || afterCustomizer != null) {
            TrackersHub.getInstance().reportEvent("DefaultPushNotificationFactory.buildNotification", n05.e(new b36("pushId", pushMessage.getNotificationId()), new b36("useBeforeCustomizer", Boolean.valueOf(beforeCustomizer != null)), new b36("useCustomizers", Integer.valueOf(customizers.size())), new b36("useAfterCustomizer", Boolean.valueOf(afterCustomizer != null))));
        }
        LinkedHashMap linkedHashMapG = n05.g(n05.l(c1510t0.a), notificationCustomizersHolder.getCustomizers());
        NotificationCustomizer beforeCustomizer2 = notificationCustomizersHolder.getBeforeCustomizer();
        if (beforeCustomizer2 != null) {
            beforeCustomizer2.invoke(builder, pushMessage);
        }
        Iterator it = linkedHashMapG.entrySet().iterator();
        while (it.hasNext()) {
            ((NotificationCustomizer) ((Map.Entry) it.next()).getValue()).invoke(builder, pushMessage);
        }
        NotificationCustomizer afterCustomizer2 = notificationCustomizersHolder.getAfterCustomizer();
        if (afterCustomizer2 != null) {
            afterCustomizer2.invoke(builder, pushMessage);
        }
        return builder.build();
    }
}
