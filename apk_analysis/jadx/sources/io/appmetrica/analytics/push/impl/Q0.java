package io.appmetrica.analytics.push.impl;

import android.R;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import androidx.core.app.RemoteInput;
import io.appmetrica.analytics.push.AppMetricaPush;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.intent.NotificationActionInfo;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class Q0 implements InterfaceC1485k1 {
    @Override // io.appmetrica.analytics.push.impl.InterfaceC1485k1
    public final void a(Context context, Intent intent) {
        NotificationActionInfo notificationActionInfo = (NotificationActionInfo) intent.getParcelableExtra(AppMetricaPush.EXTRA_ACTION_INFO);
        Bundle resultsFromIntent = RemoteInput.getResultsFromIntent(intent);
        if (notificationActionInfo == null || resultsFromIntent == null) {
            return;
        }
        String string = resultsFromIntent.getCharSequence("key_text_reply", "").toString();
        PublicLogger.INSTANCE.info("Received inline input from action %s with text %s", notificationActionInfo.actionId, string);
        if (!CoreUtils.isEmpty(notificationActionInfo.pushId)) {
            ((C1512u) r.a(context).f.d()).a(notificationActionInfo.pushId, notificationActionInfo.actionId, notificationActionInfo.payload, string, notificationActionInfo.transport, notificationActionInfo.targetActionUri);
        }
        context.sendBroadcast(new Intent(context.getPackageName() + ".action.ymp.INLINE_PUSH_RECEIVE").setPackage(context.getPackageName()).putExtra(AppMetricaPush.EXTRA_ACTION_INFO, notificationActionInfo).putExtra("io.appmetrica.analytics.push.extra.INLINE_ACTION_REPLY", string));
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (notificationManager != null) {
            if (AbstractC1471h.a(28)) {
                notificationManager.notify(notificationActionInfo.notificationTag, notificationActionInfo.notificationId, new NotificationCompat.Builder(context, notificationActionInfo.channelId).setSmallIcon(R.drawable.ic_dialog_info).setContentText(string).setTimeoutAfter(TimeUnit.SECONDS.toMillis(notificationActionInfo.hideAfterSeconds)).build());
            } else {
                notificationManager.cancel(notificationActionInfo.notificationTag, notificationActionInfo.notificationId);
                r.a(context).f().b(notificationActionInfo.pushId);
            }
        }
    }
}
