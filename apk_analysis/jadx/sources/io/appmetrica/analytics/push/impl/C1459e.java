package io.appmetrica.analytics.push.impl;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import io.appmetrica.analytics.push.AppMetricaPush;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.intent.NotificationActionInfo;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1459e extends C1 {
    @Override // io.appmetrica.analytics.push.impl.InterfaceC1485k1
    public final void a(Context context, Intent intent) {
        NotificationActionInfo notificationActionInfo = (NotificationActionInfo) intent.getParcelableExtra(AppMetricaPush.EXTRA_ACTION_INFO);
        if (notificationActionInfo == null) {
            TrackersHub.getInstance().reportEvent("No action info for AdditionalActionProcessingStrategy");
            return;
        }
        boolean zIsTrackingAdditionalAction = r.a(context).f.a().isTrackingAdditionalAction(notificationActionInfo.actionId);
        String str = notificationActionInfo.pushId;
        if (!CoreUtils.isEmpty(str) && zIsTrackingAdditionalAction) {
            X1.b.a(str, notificationActionInfo.actionId, notificationActionInfo.payload, notificationActionInfo.transport, notificationActionInfo.targetActionUri);
        }
        if (!notificationActionInfo.doNothing) {
            a(context, notificationActionInfo);
        }
        if (!AbstractC1471h.a(31) && notificationActionInfo.hideQuickControlPanel) {
            context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        }
        if (notificationActionInfo.dismissOnAdditionalAction) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager == null) {
                TrackersHub.getInstance().reportEvent("No notificationManager to clear notification by button", new C1455d(notificationActionInfo));
                return;
            }
            notificationManager.cancel(notificationActionInfo.notificationTag, notificationActionInfo.notificationId);
            r.a(context).f().b(notificationActionInfo.pushId);
            TrackersHub.getInstance().reportEvent("Clear notification by button", new C1451c(notificationActionInfo));
        }
    }
}
