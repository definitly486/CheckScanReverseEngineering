package io.appmetrica.analytics.push.impl;

import android.app.NotificationChannelGroup;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.x1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1523x1 extends C1520w1 {
    public C1523x1(C1529z1 c1529z1) {
        super(c1529z1);
    }

    @Override // io.appmetrica.analytics.push.impl.C1520w1
    public final boolean a(NotificationChannelGroup notificationChannelGroup) {
        return !notificationChannelGroup.isBlocked();
    }
}
