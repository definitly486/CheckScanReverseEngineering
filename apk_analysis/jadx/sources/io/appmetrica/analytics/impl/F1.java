package io.appmetrica.analytics.impl;

import android.content.res.Configuration;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

/* JADX INFO: loaded from: classes5.dex */
public final class F1 extends SafeRunnable {
    public final /* synthetic */ Configuration a;
    public final /* synthetic */ P1 b;

    public F1(P1 p1, Configuration configuration) {
        this.b = p1;
        this.a = configuration;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        this.b.b.onConfigurationChanged(this.a);
    }
}
