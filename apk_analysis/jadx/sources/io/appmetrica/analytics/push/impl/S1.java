package io.appmetrica.analytics.push.impl;

import defpackage.u96;
import io.appmetrica.analytics.push.coreutils.internal.utils.CoreUtils;
import io.appmetrica.analytics.push.lazypush.LazyPushTransformRule;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class S1 implements LazyPushTransformRule {
    public final String a;

    public S1(String str) {
        this.a = str;
    }

    @Override // io.appmetrica.analytics.push.lazypush.LazyPushTransformRule
    public final String getNewValue(String str) {
        if (CoreUtils.isEmpty(this.a)) {
            throw new A2("PushId is empty", null);
        }
        String str2 = this.a;
        str2.getClass();
        return str2;
    }

    @Override // io.appmetrica.analytics.push.lazypush.LazyPushTransformRule
    public final List getPatternList() {
        return u96.h("pushId");
    }
}
