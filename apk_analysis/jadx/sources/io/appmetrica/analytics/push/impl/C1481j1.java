package io.appmetrica.analytics.push.impl;

import android.content.Context;
import android.content.Intent;
import io.appmetrica.analytics.push.AppMetricaPush;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.intent.NotificationActionInfo;
import io.appmetrica.analytics.push.intent.NotificationActionType;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.j1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1481j1 {
    public static void a(Context context, Intent intent) {
        C1515v c1515v = r.a(context).f;
        if (c1515v.e == null) {
            synchronized (c1515v.a) {
                try {
                    if (c1515v.e == null) {
                        c1515v.e = new N();
                        N n = c1515v.e;
                        n.a.put(NotificationActionType.CLEAR, new B());
                        N n2 = c1515v.e;
                        n2.a.put(NotificationActionType.CLICK, new B1());
                        N n3 = c1515v.e;
                        n3.a.put(NotificationActionType.ADDITIONAL_ACTION, new C1459e());
                        N n4 = c1515v.e;
                        n4.a.put(NotificationActionType.INLINE_ACTION, new Q0());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        N n5 = c1515v.e;
        n5.getClass();
        NotificationActionInfo notificationActionInfo = (NotificationActionInfo) intent.getParcelableExtra(AppMetricaPush.EXTRA_ACTION_INFO);
        if (notificationActionInfo == null) {
            TrackersHub.getInstance().reportEvent("No action info for DefaultNotificationActionProcessor");
            return;
        }
        InterfaceC1485k1 interfaceC1485k1 = (InterfaceC1485k1) n5.a.get(notificationActionInfo.actionType);
        if (interfaceC1485k1 != null) {
            interfaceC1485k1.a(context, intent);
        } else {
            TrackersHub.getInstance().reportEvent("No strategy", new M(notificationActionInfo));
        }
    }
}
