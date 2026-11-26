package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.intent.NotificationActionInfo;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class M extends HashMap {
    public M(NotificationActionInfo notificationActionInfo) {
        put("actionType", notificationActionInfo.actionType);
        put("pushId", notificationActionInfo.pushId);
    }
}
