package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.intent.NotificationActionInfo;
import java.util.HashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1451c extends HashMap {
    public C1451c(NotificationActionInfo notificationActionInfo) {
        put("actionId", notificationActionInfo.actionId);
        put("notificationId", Integer.valueOf(notificationActionInfo.notificationId));
        put("notificationTag", notificationActionInfo.notificationTag);
        put("pushId", notificationActionInfo.pushId);
    }
}
