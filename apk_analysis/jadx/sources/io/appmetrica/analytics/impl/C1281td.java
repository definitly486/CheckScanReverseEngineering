package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.td, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1281td extends SafeRunnable {
    public final /* synthetic */ C1432zd a;
    public final /* synthetic */ AdRevenue b;
    public final /* synthetic */ boolean c;

    public C1281td(C1432zd c1432zd, AdRevenue adRevenue, boolean z) {
        this.a = c1432zd;
        this.b = adRevenue;
        this.c = z;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        C1432zd.a(this.a).reportAdRevenue(this.b, this.c);
    }
}
