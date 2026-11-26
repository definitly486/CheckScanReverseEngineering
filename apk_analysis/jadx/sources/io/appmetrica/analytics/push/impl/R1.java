package io.appmetrica.analytics.push.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.settings.PushFilter;

/* JADX INFO: loaded from: classes5.dex */
public final class R1 implements PushFilter {
    public final W1 a;

    public R1(W1 w1) {
        this.a = w1;
    }

    @Override // io.appmetrica.analytics.push.settings.PushFilter
    public final PushFilter.FilterResult filter(PushMessage pushMessage) {
        String notificationId = pushMessage.getNotificationId();
        if (TextUtils.isEmpty(notificationId)) {
            return PushFilter.FilterResult.silence("PushId is empty", null);
        }
        if (!this.a.b().contains(notificationId)) {
            return PushFilter.FilterResult.show();
        }
        return PushFilter.FilterResult.silence("Duplicate pushId", "Push with the same push id [" + notificationId + "] has already been received");
    }
}
