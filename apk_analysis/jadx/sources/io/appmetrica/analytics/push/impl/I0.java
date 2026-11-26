package io.appmetrica.analytics.push.impl;

import android.content.Context;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.settings.PushFilter;

/* JADX INFO: loaded from: classes5.dex */
public final class I0 extends B2 {
    public final Context a;

    public I0(Context context) {
        this.a = context;
    }

    @Override // io.appmetrica.analytics.push.impl.B2
    public final C2 a(PushMessage pushMessage) {
        PushFilter.FilterResult filterResultFilter = r.a(this.a).e().a.filter(pushMessage);
        return filterResultFilter.isShow() ? new C2(pushMessage, PushFilter.FilterResult.show()) : B2.a(pushMessage, filterResultFilter.category, filterResultFilter.details);
    }
}
