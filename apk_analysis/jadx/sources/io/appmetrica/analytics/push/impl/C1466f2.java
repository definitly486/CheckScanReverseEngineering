package io.appmetrica.analytics.push.impl;

import android.app.NotificationManager;
import android.content.Context;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.model.PushMessage;
import java.util.Iterator;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.f2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1466f2 implements InterfaceC1458d2 {
    @Override // io.appmetrica.analytics.push.impl.InterfaceC1458d2
    public final void a(Context context, PushMessage pushMessage) {
        V1 v1;
        if (CoreUtils.isEmpty(pushMessage.getNotificationId())) {
            return;
        }
        W1 w1F = r.a(context).f();
        String pushIdToRemove = pushMessage.getPushIdToRemove();
        if (pushIdToRemove != null) {
            Iterator it = w1F.c().iterator();
            do {
                if (!it.hasNext()) {
                    v1 = null;
                    break;
                }
                v1 = (V1) it.next();
            } while (!v1.a.equals(pushIdToRemove));
            if (v1 != null) {
                NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
                if (notificationManager != null) {
                    if (!AbstractC1471h.a(23) || o2.a(notificationManager, v1.c, v1.b.intValue())) {
                        notificationManager.cancel(v1.c, v1.b.intValue());
                    } else {
                        X1.b.onRemovingSilentPushProcessed(pushMessage.getNotificationId(), "Notification not found", "Removed by user", pushMessage.getPayload(), pushMessage.getTransport());
                    }
                    X1.b.onRemovingSilentPushProcessed(pushMessage.getNotificationId(), "Ok", null, pushMessage.getPayload(), pushMessage.getTransport());
                    r.a(context).f().b(v1.a);
                    return;
                }
                return;
            }
        }
        if (w1F.b().contains(pushIdToRemove)) {
            X1.b.onRemovingSilentPushProcessed(pushMessage.getNotificationId(), "Notification not found", "Notification was replaced", pushMessage.getPayload(), pushMessage.getTransport());
        } else {
            X1.b.onRemovingSilentPushProcessed(pushMessage.getNotificationId(), "Notification not found", null, pushMessage.getPayload(), pushMessage.getTransport());
        }
    }
}
