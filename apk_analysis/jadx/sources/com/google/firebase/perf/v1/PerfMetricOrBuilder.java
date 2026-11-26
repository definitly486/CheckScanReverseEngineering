package com.google.firebase.perf.v1;

import com.google.protobuf.a0;
import defpackage.ha5;

/* JADX INFO: loaded from: classes4.dex */
public interface PerfMetricOrBuilder extends ha5 {
    ApplicationInfo getApplicationInfo();

    @Override // defpackage.ha5
    /* synthetic */ a0 getDefaultInstanceForType();

    GaugeMetric getGaugeMetric();

    NetworkRequestMetric getNetworkRequestMetric();

    TraceMetric getTraceMetric();

    TransportInfo getTransportInfo();

    boolean hasApplicationInfo();

    boolean hasGaugeMetric();

    boolean hasNetworkRequestMetric();

    boolean hasTraceMetric();

    boolean hasTransportInfo();

    @Override // defpackage.ha5
    /* synthetic */ boolean isInitialized();
}
