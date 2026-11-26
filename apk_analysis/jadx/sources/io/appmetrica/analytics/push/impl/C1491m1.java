package io.appmetrica.analytics.push.impl;

import androidx.core.app.NotificationCompat;
import defpackage.bm3;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.notification.NotificationCustomizer;
import io.appmetrica.analytics.push.notification.NotificationValueProvider;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.m1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1491m1 implements NotificationCustomizer {
    public final /* synthetic */ bm3 a;
    public final /* synthetic */ NotificationValueProvider b;

    public C1491m1(bm3 bm3Var, NotificationValueProvider notificationValueProvider) {
        this.a = bm3Var;
        this.b = notificationValueProvider;
    }

    @Override // io.appmetrica.analytics.push.notification.NotificationCustomizer
    public final void invoke(NotificationCompat.Builder builder, PushMessage pushMessage) {
        bm3 bm3Var = this.a;
        Object obj = this.b.get(pushMessage);
        if (obj != null) {
        }
    }
}
