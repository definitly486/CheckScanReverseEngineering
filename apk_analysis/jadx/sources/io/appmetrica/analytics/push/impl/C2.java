package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.settings.PushFilter;

/* JADX INFO: loaded from: classes5.dex */
public final class C2 {
    public final PushFilter.FilterResult a;
    public final PushMessage b;

    public C2(PushMessage pushMessage, PushFilter.FilterResult filterResult) {
        this.a = filterResult;
        this.b = pushMessage;
    }
}
