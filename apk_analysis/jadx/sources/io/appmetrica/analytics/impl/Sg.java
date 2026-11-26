package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.internal.IAppMetricaService;

/* JADX INFO: loaded from: classes5.dex */
public class Sg extends Eh {
    public final Ch e;

    public Sg(C1242s0 c1242s0, InterfaceC1263sl interfaceC1263sl, Ch ch) {
        super(c1242s0, interfaceC1263sl);
        this.e = ch;
    }

    @Override // io.appmetrica.analytics.impl.Eh
    public final void a(IAppMetricaService iAppMetricaService) {
        Ch ch = this.e;
        iAppMetricaService.reportData(ch.c, ch.a.d(ch.e.c()));
    }

    @Override // io.appmetrica.analytics.impl.Eh
    public final void a(Throwable th) {
    }
}
