package io.appmetrica.analytics.impl;

import defpackage.jh2;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceComponentModuleReporter;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceModuleCounterReport;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.qk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1211qk implements ServiceComponentModuleReporter {
    public final C0989i5 a;
    public final Jk b;

    public /* synthetic */ C1211qk(C0989i5 c0989i5, Jk jk, int i, jh2 jh2Var) {
        this(c0989i5, (i & 2) != 0 ? new Jk() : jk);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceComponentModuleReporter
    public final void handleReport(ServiceModuleCounterReport serviceModuleCounterReport) {
        this.b.getClass();
        this.a.a(Jk.a(serviceModuleCounterReport));
    }

    public C1211qk(C0989i5 c0989i5, Jk jk) {
        this.a = c0989i5;
        this.b = jk;
    }
}
