package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

/* JADX INFO: loaded from: classes5.dex */
public final class N1 extends SafeRunnable {
    public final /* synthetic */ Bundle a;
    public final /* synthetic */ P1 b;

    public N1(P1 p1, Bundle bundle) {
        this.b = p1;
        this.a = bundle;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        this.b.b.resumeUserSession(this.a);
    }
}
