package io.appmetrica.analytics.push.impl;

import android.content.Context;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.settings.PushNotificationFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class M0 implements InterfaceC1458d2 {
    public final C1505r1 a;

    public M0(C1505r1 c1505r1) {
        this.a = c1505r1;
    }

    @Override // io.appmetrica.analytics.push.impl.InterfaceC1458d2
    public final void a(Context context, PushMessage pushMessage) {
        C1505r1 c1505r1 = this.a;
        PushNotificationFactory pushNotificationFactory = Z1.b;
        c1505r1.getClass();
        C1505r1.a(context, pushNotificationFactory, pushMessage);
    }
}
