package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;

/* JADX INFO: loaded from: classes5.dex */
public abstract class R4 extends AbstractC1424z5 {
    public R4(BaseRequestConfig.ComponentLoader<Object, Object, W5> componentLoader, C1341vm c1341vm, BaseRequestConfig.BaseRequestArguments<A4, Object> baseRequestArguments) {
        super(componentLoader, c1341vm, baseRequestArguments);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1424z5
    public final void a(Object obj) {
        A4 a4 = (A4) obj;
        synchronized (this) {
            super.a((Object) a4);
        }
    }

    public final synchronized void a(A4 a4) {
        super.a((Object) a4);
    }
}
