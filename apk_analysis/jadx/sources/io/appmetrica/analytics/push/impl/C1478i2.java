package io.appmetrica.analytics.push.impl;

import android.content.Context;
import android.os.Bundle;
import io.appmetrica.analytics.push.coreutils.internal.CoreConstants;
import io.appmetrica.analytics.push.provider.api.PushServiceController;
import io.appmetrica.analytics.push.provider.api.PushServiceExecutionRestrictions;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.i2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1478i2 implements E {
    @Override // io.appmetrica.analytics.push.impl.E
    public final long a(Context context, Bundle bundle) {
        Long maxTaskExecutionDurationSeconds;
        C1450b2 c1450b2 = r.a(context).d;
        if (c1450b2 == null) {
            return 0L;
        }
        PushServiceController pushServiceController = (PushServiceController) c1450b2.b.get(bundle.getString(CoreConstants.EXTRA_TRANSPORT, "unknown"));
        PushServiceExecutionRestrictions executionRestrictions = pushServiceController != null ? pushServiceController.getExecutionRestrictions() : null;
        if (executionRestrictions == null || (maxTaskExecutionDurationSeconds = executionRestrictions.getMaxTaskExecutionDurationSeconds()) == null) {
            return 0L;
        }
        return maxTaskExecutionDurationSeconds.longValue() / 2;
    }
}
