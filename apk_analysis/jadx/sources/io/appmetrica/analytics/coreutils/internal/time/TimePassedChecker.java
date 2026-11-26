package io.appmetrica.analytics.coreutils.internal.time;

/* JADX INFO: loaded from: classes5.dex */
public final class TimePassedChecker {
    private final TimeProvider a;

    public TimePassedChecker() {
        this(new SystemTimeProvider());
    }

    public final boolean didTimePassMillis(long j, long j2, String str) {
        long jCurrentTimeMillis = this.a.currentTimeMillis();
        return jCurrentTimeMillis < j || jCurrentTimeMillis - j >= j2;
    }

    public final boolean didTimePassSeconds(long j, long j2, String str) {
        long jCurrentTimeSeconds = this.a.currentTimeSeconds();
        return jCurrentTimeSeconds < j || jCurrentTimeSeconds - j >= j2;
    }

    public TimePassedChecker(TimeProvider timeProvider) {
        this.a = timeProvider;
    }
}
