package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.internal.IAppMetricaService;

/* JADX INFO: loaded from: classes5.dex */
public final class Zn extends Eh {
    public final int e;
    public final Bundle f;

    public Zn(C1242s0 c1242s0, InterfaceC1263sl interfaceC1263sl, int i, Bundle bundle) {
        super(c1242s0, interfaceC1263sl);
        this.e = i;
        this.f = bundle;
    }

    @Override // io.appmetrica.analytics.impl.Eh
    public final void a(IAppMetricaService iAppMetricaService) {
        iAppMetricaService.reportData(this.e, this.f);
    }
}
