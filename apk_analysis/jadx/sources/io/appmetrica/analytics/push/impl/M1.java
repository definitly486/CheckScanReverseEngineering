package io.appmetrica.analytics.push.impl;

import android.content.Context;
import android.os.Bundle;
import io.appmetrica.analytics.push.coreutils.internal.model.BasePushMessage;
import io.appmetrica.analytics.push.coreutils.internal.utils.TrackersHub;
import io.appmetrica.analytics.push.logger.internal.PublicLogger;
import io.appmetrica.analytics.push.model.PushMessage;

/* JADX INFO: loaded from: classes5.dex */
public final class M1 implements C {
    @Override // io.appmetrica.analytics.push.impl.C
    public final void a(Context context, Bundle bundle) {
        C1515v c1515v = r.a(context).f;
        if (c1515v.c == null) {
            synchronized (c1515v.a) {
                try {
                    if (c1515v.c == null) {
                        c1515v.c = new C1516v0();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        c1515v.c.getClass();
        if (bundle == null) {
            PublicLogger.INSTANCE.warning("Received push message with empty data bundle", new Object[0]);
            TrackersHub.getInstance().reportError("Receive push message with empty bundle", null);
        } else {
            if (!new BasePushMessage(bundle).isOwnPush()) {
                PublicLogger.INSTANCE.info("Receive not recognized push message", new Object[0]);
                return;
            }
            PushMessage pushMessage = new PushMessage(context, bundle);
            try {
                C1516v0.a(context, pushMessage);
            } catch (Throwable th2) {
                C1516v0.a(pushMessage, "Failed to process push", th2.getMessage());
            }
        }
    }
}
