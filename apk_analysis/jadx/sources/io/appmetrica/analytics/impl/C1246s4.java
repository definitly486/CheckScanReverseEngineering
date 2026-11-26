package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.s4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1246s4 {
    public final SystemTimeProvider a;

    public C1246s4() {
        this(new SystemTimeProvider());
    }

    public final void a() {
        this.a.elapsedRealtime();
    }

    public C1246s4(SystemTimeProvider systemTimeProvider) {
        this.a = systemTimeProvider;
    }
}
