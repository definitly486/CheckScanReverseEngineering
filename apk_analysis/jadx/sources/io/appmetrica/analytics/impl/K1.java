package io.appmetrica.analytics.impl;

import android.content.Intent;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

/* JADX INFO: loaded from: classes5.dex */
public final class K1 extends SafeRunnable {
    public final /* synthetic */ Intent a;
    public final /* synthetic */ P1 b;

    public K1(P1 p1, Intent intent) {
        this.b = p1;
        this.a = intent;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        this.b.b.c(this.a);
    }
}
