package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.yd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1407yd extends SafeRunnable {
    public final /* synthetic */ String a;

    public C1407yd(String str) {
        this.a = str;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        C0 c0 = C1169p4.l().q;
        String str = this.a;
        c0.getClass();
        B0.c().a(str);
    }
}
