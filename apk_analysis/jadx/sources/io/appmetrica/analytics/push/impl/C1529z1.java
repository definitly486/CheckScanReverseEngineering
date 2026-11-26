package io.appmetrica.analytics.push.impl;

import android.app.NotificationManager;
import androidx.core.app.NotificationManagerCompat;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.z1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1529z1 {
    public final NotificationManager a;
    public final NotificationManagerCompat b;
    public final C1526y1 c;
    public final L1 d;

    public C1529z1(NotificationManager notificationManager, NotificationManagerCompat notificationManagerCompat, L1 l1) {
        this.a = notificationManager;
        this.b = notificationManagerCompat;
        this.d = l1;
        if (AbstractC1471h.a(28)) {
            this.c = new C1523x1(this);
        } else if (AbstractC1471h.a(26)) {
            this.c = new C1520w1(this);
        } else {
            this.c = new C1526y1(this);
        }
    }
}
