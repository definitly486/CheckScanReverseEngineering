package io.appmetrica.analytics.push.lazypush;

import io.appmetrica.analytics.push.model.PushMessage;

/* JADX INFO: loaded from: classes5.dex */
public interface LazyPushTransformRuleProvider {
    LazyPushTransformRule getRule(PushMessage pushMessage);
}
