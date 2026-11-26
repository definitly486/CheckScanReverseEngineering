package io.appmetrica.analytics.push.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.push.model.Filters;
import io.appmetrica.analytics.push.model.PushMessage;
import io.appmetrica.analytics.push.settings.PassportUidProvider;
import io.appmetrica.analytics.push.settings.PushFilter;

/* JADX INFO: loaded from: classes5.dex */
public final class D1 implements PushFilter {
    public final r a;

    public D1(r rVar) {
        this.a = rVar;
    }

    @Override // io.appmetrica.analytics.push.settings.PushFilter
    public final PushFilter.FilterResult filter(PushMessage pushMessage) {
        Filters filters = pushMessage.getFilters();
        String passportUid = filters == null ? null : filters.getPassportUid();
        if (TextUtils.isEmpty(passportUid)) {
            return PushFilter.FilterResult.show();
        }
        PassportUidProvider passportUidProvider = this.a.f.o;
        if (passportUidProvider == null) {
            return PushFilter.FilterResult.silence("Not found passport uid provider", null);
        }
        String uid = passportUidProvider.getUid();
        if (TextUtils.isEmpty(uid)) {
            return PushFilter.FilterResult.silence("No current account", null);
        }
        return !TextUtils.equals(passportUid, uid) ? PushFilter.FilterResult.silence("Wrong account", defpackage.n2.d("Got account uid [", uid, "], allowed [", passportUid, "]")) : PushFilter.FilterResult.show();
    }
}
