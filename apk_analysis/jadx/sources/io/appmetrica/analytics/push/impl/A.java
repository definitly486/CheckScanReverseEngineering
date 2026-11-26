package io.appmetrica.analytics.push.impl;

import android.app.NotificationChannelGroup;
import android.app.NotificationManager;

/* JADX INFO: loaded from: classes5.dex */
public class A {
    public static boolean a(NotificationManager notificationManager, String str) {
        NotificationChannelGroup notificationChannelGroup = notificationManager.getNotificationChannelGroup(C1527z.a(notificationManager, str));
        return notificationChannelGroup != null && notificationChannelGroup.isBlocked();
    }
}
