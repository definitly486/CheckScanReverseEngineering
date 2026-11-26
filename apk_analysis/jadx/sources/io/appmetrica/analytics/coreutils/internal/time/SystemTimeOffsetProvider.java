package io.appmetrica.analytics.coreutils.internal.time;

import androidx.media3.common.C;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class SystemTimeOffsetProvider {
    private final SystemTimeProvider a;

    public SystemTimeOffsetProvider() {
        this(new SystemTimeProvider());
    }

    public final long elapsedRealtimeOffset(long j, TimeUnit timeUnit) {
        return this.a.elapsedRealtime() - timeUnit.toMillis(j);
    }

    public final long elapsedRealtimeOffsetInSeconds(long j, TimeUnit timeUnit) {
        return elapsedRealtimeOffset(j, timeUnit) / 1000;
    }

    public final long offsetInSecondsIfNotZero(long j, TimeUnit timeUnit) {
        if (j == 0) {
            return 0L;
        }
        return this.a.currentTimeSeconds() - timeUnit.toSeconds(j);
    }

    public final long systemNanoTimeOffsetInNanos(long j, TimeUnit timeUnit) {
        return this.a.systemNanoTime() - timeUnit.toNanos(j);
    }

    public final long systemNanoTimeOffsetInSeconds(long j, TimeUnit timeUnit) {
        return systemNanoTimeOffsetInNanos(j, timeUnit) / C.NANOS_PER_SECOND;
    }

    public SystemTimeOffsetProvider(SystemTimeProvider systemTimeProvider) {
        this.a = systemTimeProvider;
    }
}
