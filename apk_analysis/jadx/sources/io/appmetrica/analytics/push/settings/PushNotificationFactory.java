package io.appmetrica.analytics.push.settings;

import android.app.Notification;
import android.content.Context;
import io.appmetrica.analytics.push.model.PushMessage;

/* JADX INFO: loaded from: classes5.dex */
public interface PushNotificationFactory {
    Notification buildNotification(Context context, PushMessage pushMessage);
}
