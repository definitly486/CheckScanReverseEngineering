package io.appmetrica.analytics.push.impl;

import androidx.core.app.NotificationCompat;
import defpackage.fm3;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.notification.NotificationCustomizer;
import io.appmetrica.analytics.push.notification.NotificationValueProvider;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.o1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1497o1 implements NotificationCustomizer {
    public final /* synthetic */ fm3 a;
    public final /* synthetic */ NotificationValueProvider b;

    public C1497o1(fm3 fm3Var, NotificationValueProvider notificationValueProvider) {
        this.a = fm3Var;
        this.b = notificationValueProvider;
    }

    @Override // io.appmetrica.analytics.push.notification.NotificationCustomizer
    public final void invoke(NotificationCompat.Builder builder, PushMessage pushMessage) {
        fm3 fm3Var = this.a;
        List list = (List) this.b.get(pushMessage);
        if (list != null) {
        }
    }
}
