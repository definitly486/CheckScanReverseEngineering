package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;

/* JADX INFO: loaded from: classes5.dex */
public final class B6 implements InterfaceC0817be {
    public final SystemTimeProvider a = new SystemTimeProvider();

    public final long a(J0 j0) {
        long j = j0.e;
        return j > 0 ? j : this.a.currentTimeMillis();
    }
}
