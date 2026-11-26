package io.appmetrica.analytics.push.coreutils.impl;

import android.content.Context;
import io.appmetrica.analytics.push.coreutils.internal.service.NoServiceController;
import io.appmetrica.analytics.push.coreutils.internal.service.PushServiceCommandLauncher;

/* JADX INFO: loaded from: classes5.dex */
public final class e implements g {
    public final NoServiceController a;

    public e(Context context) {
        this.a = new NoServiceController(context);
    }

    @Override // io.appmetrica.analytics.push.coreutils.impl.g
    public final PushServiceCommandLauncher a() {
        return this.a;
    }
}
