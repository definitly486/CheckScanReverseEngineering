package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.internal.notification.DefaultPushNotificationFactory;
import io.appmetrica.analytics.push.settings.PushNotificationFactory;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Z1 {
    public static final DefaultPushNotificationFactory a;
    public static volatile PushNotificationFactory b;

    static {
        DefaultPushNotificationFactory defaultPushNotificationFactory = new DefaultPushNotificationFactory();
        a = defaultPushNotificationFactory;
        b = defaultPushNotificationFactory;
    }
}
