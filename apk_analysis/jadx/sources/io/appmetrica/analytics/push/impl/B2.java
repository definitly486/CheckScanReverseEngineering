package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.settings.PushFilter;

/* JADX INFO: loaded from: classes5.dex */
public abstract class B2 {
    public static C2 a(PushMessage pushMessage, String str, String str2) {
        return new C2(pushMessage, PushFilter.FilterResult.silence(str, str2));
    }

    public abstract C2 a(PushMessage pushMessage);
}
