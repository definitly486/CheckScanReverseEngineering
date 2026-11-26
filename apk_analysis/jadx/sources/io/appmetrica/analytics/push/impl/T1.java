package io.appmetrica.analytics.push.impl;

import io.appmetrica.analytics.push.lazypush.LazyPushTransformRule;
import io.appmetrica.analytics.push.lazypush.LazyPushTransformRuleProvider;
import io.appmetrica.analytics.push.model.PushMessage;

/* JADX INFO: loaded from: classes5.dex */
public final class T1 implements LazyPushTransformRuleProvider {
    @Override // io.appmetrica.analytics.push.lazypush.LazyPushTransformRuleProvider
    public final LazyPushTransformRule getRule(PushMessage pushMessage) {
        return new S1(pushMessage.getNotificationId());
    }
}
