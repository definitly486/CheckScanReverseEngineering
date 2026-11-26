package io.appmetrica.analytics.push.notification;

import androidx.core.app.NotificationCompat;
import io.appmetrica.analytics.push.model.PushMessage;

/* JADX INFO: loaded from: classes5.dex */
public interface NotificationCustomizer {
    void invoke(NotificationCompat.Builder builder, PushMessage pushMessage);
}
