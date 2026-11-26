package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.internal.IAppMetricaService;

/* JADX INFO: loaded from: classes5.dex */
public final class Be extends Eh {
    public final Pf e;

    public Be(C1242s0 c1242s0, InterfaceC1263sl interfaceC1263sl, Pf pf) {
        super(c1242s0, interfaceC1263sl);
        this.e = pf;
    }

    @Override // io.appmetrica.analytics.impl.Eh
    public final void a(IAppMetricaService iAppMetricaService) {
        Bundle bundle = new Bundle();
        Pf pf = this.e;
        synchronized (pf) {
            bundle.putParcelable("PROCESS_CFG_OBJ", pf);
        }
        iAppMetricaService.pauseUserSession(bundle);
    }
}
