package io.appmetrica.analytics.push.impl;

import android.content.Context;
import android.os.Bundle;
import io.appmetrica.analytics.push.coreutils.internal.CoreConstants;
import io.appmetrica.analytics.push.provider.api.PushServiceController;
import io.appmetrica.analytics.push.provider.api.PushServiceExecutionRestrictions;

/* JADX INFO: loaded from: classes5.dex */
public final class N1 implements E {
    @Override // io.appmetrica.analytics.push.impl.E
    public final long a(Context context, Bundle bundle) {
        Long maxTaskExecutionDurationSeconds;
        long j = bundle.getLong(CoreConstants.MIN_PROCESSING_DELAY, -1L);
        String string = bundle.getString(CoreConstants.EXTRA_TRANSPORT, "unknown");
        Long lValueOf = Long.valueOf(j);
        long jLongValue = 0;
        if (j < 0) {
            lValueOf = null;
        }
        if (lValueOf == null) {
            return 0L;
        }
        long jLongValue2 = lValueOf.longValue();
        C1450b2 c1450b2 = r.a(context).d;
        if (c1450b2 != null) {
            PushServiceController pushServiceController = (PushServiceController) c1450b2.b.get(string);
            PushServiceExecutionRestrictions executionRestrictions = pushServiceController != null ? pushServiceController.getExecutionRestrictions() : null;
            if (executionRestrictions != null && (maxTaskExecutionDurationSeconds = executionRestrictions.getMaxTaskExecutionDurationSeconds()) != null) {
                jLongValue = maxTaskExecutionDurationSeconds.longValue();
            }
        }
        return Math.min(jLongValue2, jLongValue);
    }
}
