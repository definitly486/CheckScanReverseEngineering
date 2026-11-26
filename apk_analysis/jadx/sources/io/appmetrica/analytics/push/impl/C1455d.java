package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.intent.NotificationActionInfo;
import java.util.HashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1455d extends HashMap {
    public C1455d(NotificationActionInfo notificationActionInfo) {
        put("actionId", notificationActionInfo.actionId);
        put("pushId", notificationActionInfo.pushId);
    }
}
