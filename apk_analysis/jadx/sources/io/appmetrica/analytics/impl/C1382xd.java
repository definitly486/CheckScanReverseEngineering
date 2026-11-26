package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.xd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1382xd extends SafeRunnable {
    public final /* synthetic */ C1432zd a;
    public final /* synthetic */ String b;
    public final /* synthetic */ byte[] c;

    public C1382xd(C1432zd c1432zd, String str, byte[] bArr) {
        this.a = c1432zd;
        this.b = str;
        this.c = bArr;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        C1432zd.a(this.a).setSessionExtra(this.b, this.c);
    }
}
