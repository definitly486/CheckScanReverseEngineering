package io.appmetrica.analytics.push.impl;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.l1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1488l1 {
    public final NotificationManager a;
    public final NotificationChannel b;

    public C1488l1(Context context) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        this.a = notificationManager;
        if (AbstractC1471h.a(26)) {
            this.b = C1527z.a(notificationManager);
        } else {
            this.b = null;
        }
    }
}
