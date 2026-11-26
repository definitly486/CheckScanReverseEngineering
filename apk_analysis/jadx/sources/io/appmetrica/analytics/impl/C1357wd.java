package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.wd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1357wd extends SafeRunnable {
    public final /* synthetic */ C1432zd a;
    public final /* synthetic */ boolean b;

    public C1357wd(C1432zd c1432zd, boolean z) {
        this.a = c1432zd;
        this.b = z;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        C1432zd.a(this.a).a(this.b, false);
    }
}
