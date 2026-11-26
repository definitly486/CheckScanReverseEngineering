package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.la, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1071la implements InterfaceC1400y6 {
    public final SystemTimeProvider a = new SystemTimeProvider();

    public final long a(C1380xb c1380xb) {
        long j = c1380xb.k;
        return j > 0 ? j : this.a.currentTimeMillis();
    }
}
