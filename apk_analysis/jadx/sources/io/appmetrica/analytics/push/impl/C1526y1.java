package io.appmetrica.analytics.push.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.y1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public class C1526y1 {
    public final /* synthetic */ C1529z1 a;

    public C1526y1(C1529z1 c1529z1) {
        this.a = c1529z1;
    }

    public C1508s1 a() {
        boolean zAreNotificationsEnabled = this.a.b.areNotificationsEnabled();
        Boolean boolA = this.a.d.a("app_notification_status");
        this.a.d.a("app_notification_status", zAreNotificationsEnabled);
        return new C1508s1(zAreNotificationsEnabled, (boolA == null || boolA.booleanValue() == zAreNotificationsEnabled) ? false : true);
    }
}
