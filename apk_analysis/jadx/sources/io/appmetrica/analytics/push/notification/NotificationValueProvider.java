package io.appmetrica.analytics.push.notification;

import io.appmetrica.analytics.push.model.PushMessage;

/* JADX INFO: loaded from: classes5.dex */
public interface NotificationValueProvider<T> {
    T get(PushMessage pushMessage);
}
