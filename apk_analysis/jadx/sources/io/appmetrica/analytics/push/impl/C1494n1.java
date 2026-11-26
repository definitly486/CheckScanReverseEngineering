package io.appmetrica.analytics.push.impl;

import androidx.core.app.NotificationCompat;
import defpackage.dm3;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.notification.NotificationCustomizer;
import io.appmetrica.analytics.push.notification.NotificationValueProvider;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.n1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1494n1 implements NotificationCustomizer {
    public final /* synthetic */ dm3 a;
    public final /* synthetic */ NotificationValueProvider b;

    public C1494n1(dm3 dm3Var, NotificationValueProvider notificationValueProvider) {
        this.a = dm3Var;
        this.b = notificationValueProvider;
    }

    @Override // io.appmetrica.analytics.push.notification.NotificationCustomizer
    public final void invoke(NotificationCompat.Builder builder, PushMessage pushMessage) {
        dm3 dm3Var = this.a;
        List list = (List) this.b.get(pushMessage);
        if (list != null) {
        }
    }
}
