package io.appmetrica.analytics.coreutils.internal.services.frequency;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;

/* JADX INFO: loaded from: classes5.dex */
public final class EventFrequencyOverWindowLimitDetector {
    private long a;
    private int b;
    private final EventFrequencyStorage c;
    private final SystemTimeProvider d = new SystemTimeProvider();

    public EventFrequencyOverWindowLimitDetector(long j, int i, EventFrequencyStorage eventFrequencyStorage) {
        this.a = j;
        this.b = i;
        this.c = eventFrequencyStorage;
    }

    public final boolean detect(String str) {
        long jLongValue;
        long jUptimeMillis = this.d.uptimeMillis();
        EventFrequencyStorage eventFrequencyStorage = this.c;
        Long windowStart = eventFrequencyStorage.getWindowStart(str);
        if (windowStart == null) {
            eventFrequencyStorage.putWindowStart(str, jUptimeMillis);
            jLongValue = jUptimeMillis;
        } else {
            jLongValue = windowStart.longValue();
        }
        long j = jUptimeMillis - jLongValue;
        if (j < 0 || j > this.a) {
            this.c.putWindowStart(str, jUptimeMillis);
            this.c.putWindowOccurrencesCount(str, 1);
            return false;
        }
        Integer windowOccurrencesCount = this.c.getWindowOccurrencesCount(str);
        int iIntValue = (windowOccurrencesCount != null ? windowOccurrencesCount.intValue() : 0) + 1;
        this.c.putWindowOccurrencesCount(str, iIntValue);
        return iIntValue > this.b;
    }

    public final synchronized void updateParameters(long j, int i) {
        this.a = j;
        this.b = i;
    }
}
