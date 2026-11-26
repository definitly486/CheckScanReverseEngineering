package com.google.firebase.perf.v1;

import com.google.protobuf.a0;
import defpackage.fx0;
import defpackage.ha5;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface GaugeMetricOrBuilder extends ha5 {
    AndroidMemoryReading getAndroidMemoryReadings(int i);

    int getAndroidMemoryReadingsCount();

    List<AndroidMemoryReading> getAndroidMemoryReadingsList();

    CpuMetricReading getCpuMetricReadings(int i);

    int getCpuMetricReadingsCount();

    List<CpuMetricReading> getCpuMetricReadingsList();

    @Override // defpackage.ha5
    /* synthetic */ a0 getDefaultInstanceForType();

    GaugeMetadata getGaugeMetadata();

    String getSessionId();

    fx0 getSessionIdBytes();

    boolean hasGaugeMetadata();

    boolean hasSessionId();

    @Override // defpackage.ha5
    /* synthetic */ boolean isInitialized();
}
