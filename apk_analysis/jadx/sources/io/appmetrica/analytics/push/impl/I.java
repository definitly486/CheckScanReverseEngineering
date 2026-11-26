package io.appmetrica.analytics.push.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.push.model.Filters;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.settings.PushFilter;

/* JADX INFO: loaded from: classes5.dex */
public final class I implements PushFilter {
    public final W1 a;

    public I(W1 w1) {
        this.a = w1;
    }

    @Override // io.appmetrica.analytics.push.settings.PushFilter
    public final PushFilter.FilterResult filter(PushMessage pushMessage) {
        Filters filters = pushMessage.getFilters();
        String contentId = filters == null ? null : filters.getContentId();
        if (!TextUtils.isEmpty(contentId) && this.a.a().contains(contentId)) {
            return PushFilter.FilterResult.silence("Duplicate contentId", "Push with the same content id [" + contentId + "] has already been received");
        }
        return PushFilter.FilterResult.show();
    }
}
