package io.appmetrica.analytics.coreutils.internal.services.frequency;

/* JADX INFO: loaded from: classes5.dex */
public interface EventFrequencyStorage {
    Integer getWindowOccurrencesCount(String str);

    Long getWindowStart(String str);

    void putWindowOccurrencesCount(String str, int i);

    void putWindowStart(String str, long j);
}
