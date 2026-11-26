package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ud, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1307ud extends SafeRunnable {
    public final /* synthetic */ C1432zd a;
    public final /* synthetic */ ModuleEvent b;

    public C1307ud(C1432zd c1432zd, ModuleEvent moduleEvent) {
        this.a = c1432zd;
        this.b = moduleEvent;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        C1432zd.a(this.a).reportEvent(this.b);
    }
}
