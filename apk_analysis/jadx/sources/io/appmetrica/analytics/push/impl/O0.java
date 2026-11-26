package io.appmetrica.analytics.push.impl;

import android.content.Context;
import android.os.Bundle;
import io.appmetrica.analytics.push.coreutils.internal.PushServiceFacade;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import io.appmetrica.analytics.push.provider.api.PushServiceController;

/* JADX INFO: loaded from: classes5.dex */
public final class O0 implements C {
    @Override // io.appmetrica.analytics.push.impl.C
    public final void a(Context context, Bundle bundle) {
        r rVarA = r.a(context);
        C1450b2 c1450b2 = rVarA.d;
        if (c1450b2 != null) {
            for (PushServiceController pushServiceController : c1450b2.b.values()) {
                if (pushServiceController.register()) {
                    PushServiceFacade.initToken(c1450b2.a, pushServiceController.getTransportId());
                }
            }
        } else {
            PublicLogger.INSTANCE.info("PushServiceController is null", new Object[0]);
        }
        PushServiceFacade.sendSystemInfo(context, null);
        x2 x2Var = rVarA.e;
        if (x2Var == null) {
            PublicLogger.INSTANCE.info("TokenManager is null", new Object[0]);
            return;
        }
        synchronized (x2Var) {
            x2Var.c();
        }
    }
}
