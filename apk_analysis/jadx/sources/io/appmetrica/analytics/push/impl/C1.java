package io.appmetrica.analytics.push.impl;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import io.appmetrica.analytics.push.AppMetricaPush;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.intent.NotificationActionInfo;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class C1 implements InterfaceC1485k1 {
    public final C1447b a = new C1447b();

    public final void a(Context context, NotificationActionInfo notificationActionInfo) {
        C1447b c1447b = this.a;
        String str = notificationActionInfo.targetActionUri;
        c1447b.getClass();
        Intent intentA = C1447b.a(context, str);
        if (intentA == null) {
            PublicLogger.INSTANCE.warning("Intent action for pushId = %s is null", notificationActionInfo.pushId);
            TrackersHub.getInstance().reportError("Open action intent is null", null);
            return;
        }
        try {
            intentA.putExtra(AppMetricaPush.EXTRA_PAYLOAD, notificationActionInfo.payload);
            Bundle bundle = notificationActionInfo.extraBundle;
            if (bundle != null) {
                intentA.putExtras(bundle);
            }
            if (notificationActionInfo.explicitIntent) {
                intentA.setPackage(context.getPackageName());
            }
            context.startActivity(intentA);
        } catch (Exception e) {
            PublicLogger.INSTANCE.error(e, "Smth wrong when starting activity for push message with pushId=%s", notificationActionInfo.pushId);
            TrackersHub.getInstance().reportError("Error starting activity", e);
        }
    }
}
