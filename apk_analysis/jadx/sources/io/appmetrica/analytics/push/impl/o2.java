package io.appmetrica.analytics.push.impl;

import android.app.NotificationManager;
import android.service.notification.StatusBarNotification;

/* JADX INFO: loaded from: classes2.dex */
public class o2 {
    public static boolean a(NotificationManager notificationManager, String str, int i) {
        for (StatusBarNotification statusBarNotification : notificationManager.getActiveNotifications()) {
            if (statusBarNotification.getId() == i && ((str == null && statusBarNotification.getTag() == null) || str.equals(statusBarNotification.getTag()))) {
                return true;
            }
        }
        return false;
    }
}
