package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceComponentModuleConfig;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceComponentModuleReporter;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceModuleReporterComponentContext;

/* JADX INFO: loaded from: classes5.dex */
public final class Lk implements ServiceModuleReporterComponentContext {
    public final C1211qk a;
    public final C1185pk b;

    public Lk(C0989i5 c0989i5, A4 a4) {
        this.a = new C1211qk(c0989i5, null, 2, null);
        this.b = new C1185pk(a4);
    }

    public final C1185pk a() {
        return this.b;
    }

    public final C1211qk b() {
        return this.a;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceModuleReporterComponentContext
    public final ServiceComponentModuleConfig getConfig() {
        return this.b;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceModuleReporterComponentContext
    public final ServiceComponentModuleReporter getReporter() {
        return this.a;
    }
}
