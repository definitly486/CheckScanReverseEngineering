package io.appmetrica.analytics.push.settings;

import io.appmetrica.analytics.push.model.PushMessage;

/* JADX INFO: loaded from: classes5.dex */
public interface PushFilteredCallback {
    void onPushFiltered(PushMessage pushMessage, PushFilter.FilterResult filterResult);
}
