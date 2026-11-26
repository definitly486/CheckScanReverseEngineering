package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.vd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1332vd extends SafeRunnable {
    public final /* synthetic */ C1432zd a;
    public final /* synthetic */ int b;
    public final /* synthetic */ String c;

    public C1332vd(C1432zd c1432zd, int i, String str) {
        this.a = c1432zd;
        this.b = i;
        this.c = str;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        C1432zd.a(this.a).a(new S9(this.b, this.c));
    }
}
