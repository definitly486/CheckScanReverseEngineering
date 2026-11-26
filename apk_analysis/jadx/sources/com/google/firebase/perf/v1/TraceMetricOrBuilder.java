package com.google.firebase.perf.v1;

import com.google.protobuf.a0;
import defpackage.fx0;
import defpackage.ha5;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public interface TraceMetricOrBuilder extends ha5 {
    boolean containsCounters(String str);

    boolean containsCustomAttributes(String str);

    long getClientStartTimeUs();

    @Deprecated
    Map<String, Long> getCounters();

    int getCountersCount();

    Map<String, Long> getCountersMap();

    long getCountersOrDefault(String str, long j);

    long getCountersOrThrow(String str);

    @Deprecated
    Map<String, String> getCustomAttributes();

    int getCustomAttributesCount();

    Map<String, String> getCustomAttributesMap();

    String getCustomAttributesOrDefault(String str, String str2);

    String getCustomAttributesOrThrow(String str);

    @Override // defpackage.ha5
    /* synthetic */ a0 getDefaultInstanceForType();

    long getDurationUs();

    boolean getIsAuto();

    String getName();

    fx0 getNameBytes();

    PerfSession getPerfSessions(int i);

    int getPerfSessionsCount();

    List<PerfSession> getPerfSessionsList();

    TraceMetric getSubtraces(int i);

    int getSubtracesCount();

    List<TraceMetric> getSubtracesList();

    boolean hasClientStartTimeUs();

    boolean hasDurationUs();

    boolean hasIsAuto();

    boolean hasName();

    @Override // defpackage.ha5
    /* synthetic */ boolean isInitialized();
}
