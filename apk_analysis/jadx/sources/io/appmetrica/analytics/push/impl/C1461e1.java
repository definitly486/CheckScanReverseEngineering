package io.appmetrica.analytics.push.impl;

import android.content.Context;
import io.appmetrica.analytics.push.lazypush.LazyPushTransformRule;
import io.appmetrica.analytics.push.lazypush.LazyPushTransformRuleProvider;
import io.appmetrica.analytics.push.model.LazyPushRequestInfo;
import io.appmetrica.analytics.push.model.PushMessage;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.e1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1461e1 implements LazyPushTransformRuleProvider {
    public final Context a;

    public C1461e1(Context context) {
        this.a = context;
    }

    @Override // io.appmetrica.analytics.push.lazypush.LazyPushTransformRuleProvider
    public final LazyPushTransformRule getRule(PushMessage pushMessage) {
        LazyPushRequestInfo lazyPushRequestInfo = pushMessage.getLazyPushRequestInfo();
        if (lazyPushRequestInfo != null) {
            return new C1457d1(this.a, lazyPushRequestInfo.getLocationRequestInfo());
        }
        return null;
    }
}
