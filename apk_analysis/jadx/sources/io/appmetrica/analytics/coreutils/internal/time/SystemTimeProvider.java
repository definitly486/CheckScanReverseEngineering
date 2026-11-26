package io.appmetrica.analytics.coreutils.internal.time;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes5.dex */
public final class SystemTimeProvider implements TimeProvider {
    @Override // io.appmetrica.analytics.coreutils.internal.time.TimeProvider
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override // io.appmetrica.analytics.coreutils.internal.time.TimeProvider
    public long currentTimeSeconds() {
        return System.currentTimeMillis() / 1000;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.time.TimeProvider
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override // io.appmetrica.analytics.coreutils.internal.time.TimeProvider
    public long systemNanoTime() {
        return System.nanoTime();
    }

    @Override // io.appmetrica.analytics.coreutils.internal.time.TimeProvider
    public long uptimeMillis() {
        return SystemClock.uptimeMillis();
    }
}
