package io.appmetrica.analytics.push.impl;

import android.content.Context;
import android.content.Intent;
import io.appmetrica.analytics.push.AppMetricaPush;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.intent.NotificationActionInfo;

/* JADX INFO: loaded from: classes5.dex */
public final class B1 extends C1 {
    @Override // io.appmetrica.analytics.push.impl.InterfaceC1485k1
    public final void a(Context context, Intent intent) {
        NotificationActionInfo notificationActionInfo = (NotificationActionInfo) intent.getParcelableExtra(AppMetricaPush.EXTRA_ACTION_INFO);
        if (notificationActionInfo != null) {
            String str = notificationActionInfo.pushId;
            boolean z = r.a(context).f.a().trackingOpenAction;
            if (!CoreUtils.isEmpty(str) && z) {
                X1.b.a(str, notificationActionInfo.payload, notificationActionInfo.transport, notificationActionInfo.targetActionUri);
            }
            a(context, notificationActionInfo);
            r.a(context).f().b(notificationActionInfo.pushId);
        }
    }
}
