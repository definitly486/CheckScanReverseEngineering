package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.identifiers.PlatformIdentifiers;
import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.SdkEnvironmentProvider;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;

/* JADX INFO: loaded from: classes5.dex */
public final class W5 extends BaseRequestConfig.DataSource {
    public final C1341vm a;
    public final SdkEnvironmentProvider b;

    public W5(C1341vm c1341vm, SdkEnvironmentProvider sdkEnvironmentProvider, PlatformIdentifiers platformIdentifiers, Object obj) {
        super(new SdkIdentifiers(c1341vm.c(), c1341vm.a(), c1341vm.b()), sdkEnvironmentProvider, platformIdentifiers, obj);
        this.a = c1341vm;
        this.b = sdkEnvironmentProvider;
    }
}
