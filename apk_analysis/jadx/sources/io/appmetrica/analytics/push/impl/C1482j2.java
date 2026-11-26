package io.appmetrica.analytics.push.impl;

import android.content.Context;
import android.content.Intent;
import io.appmetrica.analytics.push.AppMetricaPush;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.model.PushMessage;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.j2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1482j2 implements InterfaceC1458d2 {
    @Override // io.appmetrica.analytics.push.impl.InterfaceC1458d2
    public final void a(Context context, PushMessage pushMessage) {
        Intent intent = new Intent(context.getPackageName() + ".action.ymp.SILENT_PUSH_RECEIVE");
        intent.setPackage(context.getPackageName());
        intent.putExtra(AppMetricaPush.EXTRA_PAYLOAD, pushMessage.getPayload());
        context.sendBroadcast(intent);
        boolean z = r.a(context).f.a().trackingProcessedAction;
        if (CoreUtils.isEmpty(pushMessage.getNotificationId()) || !z) {
            return;
        }
        X1.b.onSilentPushProcessed(pushMessage.getNotificationId(), pushMessage.getPayload(), pushMessage.getTransport());
    }
}
