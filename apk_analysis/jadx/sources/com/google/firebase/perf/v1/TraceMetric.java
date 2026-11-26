package com.google.firebase.perf.v1;

import com.google.protobuf.a;
import com.google.protobuf.f;
import com.google.protobuf.j;
import com.google.protobuf.o;
import com.google.protobuf.q;
import com.google.protobuf.w;
import com.google.protobuf.x;
import defpackage.fx0;
import defpackage.mi2;
import defpackage.ud;
import defpackage.ui9;
import defpackage.x36;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class TraceMetric extends o<TraceMetric, Builder> implements TraceMetricOrBuilder {
    public static final int CLIENT_START_TIME_US_FIELD_NUMBER = 4;
    public static final int COUNTERS_FIELD_NUMBER = 6;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 8;
    private static final TraceMetric DEFAULT_INSTANCE;
    public static final int DURATION_US_FIELD_NUMBER = 5;
    public static final int IS_AUTO_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    private static volatile x36<TraceMetric> PARSER = null;
    public static final int PERF_SESSIONS_FIELD_NUMBER = 9;
    public static final int SUBTRACES_FIELD_NUMBER = 7;
    private int bitField0_;
    private long clientStartTimeUs_;
    private x<String, Long> counters_;
    private x<String, String> customAttributes_;
    private long durationUs_;
    private boolean isAuto_;
    private String name_;
    private q.j<PerfSession> perfSessions_;
    private q.j<TraceMetric> subtraces_;

    /* JADX INFO: renamed from: com.google.firebase.perf.v1.TraceMetric$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke;

        static {
            int[] iArr = new int[o.f.values().length];
            $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke = iArr;
            try {
                iArr[o.f.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[o.f.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[o.f.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[o.f.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[o.f.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[o.f.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[o.f.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static final class CountersDefaultEntryHolder {
        static final w<String, Long> defaultEntry = new w<>(ui9.STRING, ui9.INT64, 0L);

        private CountersDefaultEntryHolder() {
        }
    }

    public static final class CustomAttributesDefaultEntryHolder {
        static final w<String, String> defaultEntry;

        static {
            ui9 ui9Var = ui9.STRING;
            defaultEntry = new w<>(ui9Var, ui9Var, "");
        }

        private CustomAttributesDefaultEntryHolder() {
        }
    }

    static {
        TraceMetric traceMetric = new TraceMetric();
        DEFAULT_INSTANCE = traceMetric;
        o.registerDefaultInstance(TraceMetric.class, traceMetric);
    }

    private TraceMetric() {
        x xVar = x.c;
        this.counters_ = xVar;
        this.customAttributes_ = xVar;
        this.name_ = "";
        this.subtraces_ = o.emptyProtobufList();
        this.perfSessions_ = o.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllPerfSessions(Iterable<? extends PerfSession> iterable) {
        ensurePerfSessionsIsMutable();
        a.addAll((Iterable) iterable, (List) this.perfSessions_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAllSubtraces(Iterable<? extends TraceMetric> iterable) {
        ensureSubtracesIsMutable();
        a.addAll((Iterable) iterable, (List) this.subtraces_);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPerfSessions(PerfSession perfSession) {
        perfSession.getClass();
        ensurePerfSessionsIsMutable();
        this.perfSessions_.add(perfSession);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSubtraces(TraceMetric traceMetric) {
        traceMetric.getClass();
        ensureSubtracesIsMutable();
        this.subtraces_.add(traceMetric);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearClientStartTimeUs() {
        this.bitField0_ &= -5;
        this.clientStartTimeUs_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDurationUs() {
        this.bitField0_ &= -9;
        this.durationUs_ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearIsAuto() {
        this.bitField0_ &= -3;
        this.isAuto_ = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearName() {
        this.bitField0_ &= -2;
        this.name_ = getDefaultInstance().getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPerfSessions() {
        this.perfSessions_ = o.emptyProtobufList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSubtraces() {
        this.subtraces_ = o.emptyProtobufList();
    }

    private void ensurePerfSessionsIsMutable() {
        q.j<PerfSession> jVar = this.perfSessions_;
        if (jVar.isModifiable()) {
            return;
        }
        this.perfSessions_ = o.mutableCopy(jVar);
    }

    private void ensureSubtracesIsMutable() {
        q.j<TraceMetric> jVar = this.subtraces_;
        if (jVar.isModifiable()) {
            return;
        }
        this.subtraces_ = o.mutableCopy(jVar);
    }

    public static TraceMetric getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Long> getMutableCountersMap() {
        return internalGetMutableCounters();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> getMutableCustomAttributesMap() {
        return internalGetMutableCustomAttributes();
    }

    private x<String, Long> internalGetCounters() {
        return this.counters_;
    }

    private x<String, String> internalGetCustomAttributes() {
        return this.customAttributes_;
    }

    private x<String, Long> internalGetMutableCounters() {
        x<String, Long> xVar = this.counters_;
        if (xVar.b) {
            return xVar;
        }
        x<String, Long> xVarJ = xVar.j();
        this.counters_ = xVarJ;
        return xVarJ;
    }

    private x<String, String> internalGetMutableCustomAttributes() {
        x<String, String> xVar = this.customAttributes_;
        if (xVar.b) {
            return xVar;
        }
        x<String, String> xVarJ = xVar.j();
        this.customAttributes_ = xVarJ;
        return xVarJ;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static TraceMetric parseDelimitedFrom(InputStream inputStream) {
        return (TraceMetric) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static TraceMetric parseFrom(ByteBuffer byteBuffer) {
        return (TraceMetric) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static x36<TraceMetric> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removePerfSessions(int i) {
        ensurePerfSessionsIsMutable();
        this.perfSessions_.remove(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeSubtraces(int i) {
        ensureSubtracesIsMutable();
        this.subtraces_.remove(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClientStartTimeUs(long j) {
        this.bitField0_ |= 4;
        this.clientStartTimeUs_ = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDurationUs(long j) {
        this.bitField0_ |= 8;
        this.durationUs_ = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIsAuto(boolean z) {
        this.bitField0_ |= 2;
        this.isAuto_ = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setName(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.name_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNameBytes(fx0 fx0Var) {
        this.name_ = fx0Var.p();
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPerfSessions(int i, PerfSession perfSession) {
        perfSession.getClass();
        ensurePerfSessionsIsMutable();
        this.perfSessions_.set(i, perfSession);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSubtraces(int i, TraceMetric traceMetric) {
        traceMetric.getClass();
        ensureSubtracesIsMutable();
        this.subtraces_.set(i, traceMetric);
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public boolean containsCounters(String str) {
        str.getClass();
        return internalGetCounters().containsKey(str);
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public boolean containsCustomAttributes(String str) {
        str.getClass();
        return internalGetCustomAttributes().containsKey(str);
    }

    @Override // com.google.protobuf.o
    public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
        x36 bVar;
        int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
        AnonymousClass1 anonymousClass1 = null;
        switch (i) {
            case 1:
                return new TraceMetric();
            case 2:
                return new Builder(anonymousClass1);
            case 3:
                return o.newMessageInfo(DEFAULT_INSTANCE, "\u0001\b\u0000\u0001\u0001\t\b\u0002\u0002\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0004ဂ\u0002\u0005ဂ\u0003\u00062\u0007\u001b\b2\t\u001b", new Object[]{"bitField0_", "name_", "isAuto_", "clientStartTimeUs_", "durationUs_", "counters_", CountersDefaultEntryHolder.defaultEntry, "subtraces_", TraceMetric.class, "customAttributes_", CustomAttributesDefaultEntryHolder.defaultEntry, "perfSessions_", PerfSession.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x36<TraceMetric> x36Var = PARSER;
                if (x36Var != null) {
                    return x36Var;
                }
                synchronized (TraceMetric.class) {
                    try {
                        bVar = PARSER;
                        if (bVar == null) {
                            bVar = new o.b(DEFAULT_INSTANCE);
                            PARSER = bVar;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return bVar;
            case 6:
                return (byte) 1;
            default:
                ud.d();
            case 7:
                return null;
        }
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public long getClientStartTimeUs() {
        return this.clientStartTimeUs_;
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    @Deprecated
    public Map<String, Long> getCounters() {
        return getCountersMap();
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public int getCountersCount() {
        return internalGetCounters().size();
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public Map<String, Long> getCountersMap() {
        return Collections.unmodifiableMap(internalGetCounters());
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public long getCountersOrDefault(String str, long j) {
        str.getClass();
        x<String, Long> xVarInternalGetCounters = internalGetCounters();
        return xVarInternalGetCounters.containsKey(str) ? xVarInternalGetCounters.get(str).longValue() : j;
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public long getCountersOrThrow(String str) {
        str.getClass();
        x<String, Long> xVarInternalGetCounters = internalGetCounters();
        if (xVarInternalGetCounters.containsKey(str)) {
            return xVarInternalGetCounters.get(str).longValue();
        }
        mi2.b();
        return 0L;
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    @Deprecated
    public Map<String, String> getCustomAttributes() {
        return getCustomAttributesMap();
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public int getCustomAttributesCount() {
        return internalGetCustomAttributes().size();
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public Map<String, String> getCustomAttributesMap() {
        return Collections.unmodifiableMap(internalGetCustomAttributes());
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public String getCustomAttributesOrDefault(String str, String str2) {
        str.getClass();
        x<String, String> xVarInternalGetCustomAttributes = internalGetCustomAttributes();
        return xVarInternalGetCustomAttributes.containsKey(str) ? xVarInternalGetCustomAttributes.get(str) : str2;
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public String getCustomAttributesOrThrow(String str) {
        str.getClass();
        x<String, String> xVarInternalGetCustomAttributes = internalGetCustomAttributes();
        if (xVarInternalGetCustomAttributes.containsKey(str)) {
            return xVarInternalGetCustomAttributes.get(str);
        }
        mi2.b();
        return null;
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public long getDurationUs() {
        return this.durationUs_;
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public boolean getIsAuto() {
        return this.isAuto_;
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public String getName() {
        return this.name_;
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public fx0 getNameBytes() {
        return fx0.f(this.name_);
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public PerfSession getPerfSessions(int i) {
        return this.perfSessions_.get(i);
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public int getPerfSessionsCount() {
        return this.perfSessions_.size();
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public List<PerfSession> getPerfSessionsList() {
        return this.perfSessions_;
    }

    public PerfSessionOrBuilder getPerfSessionsOrBuilder(int i) {
        return this.perfSessions_.get(i);
    }

    public List<? extends PerfSessionOrBuilder> getPerfSessionsOrBuilderList() {
        return this.perfSessions_;
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public TraceMetric getSubtraces(int i) {
        return this.subtraces_.get(i);
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public int getSubtracesCount() {
        return this.subtraces_.size();
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public List<TraceMetric> getSubtracesList() {
        return this.subtraces_;
    }

    public TraceMetricOrBuilder getSubtracesOrBuilder(int i) {
        return this.subtraces_.get(i);
    }

    public List<? extends TraceMetricOrBuilder> getSubtracesOrBuilderList() {
        return this.subtraces_;
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public boolean hasClientStartTimeUs() {
        return (this.bitField0_ & 4) != 0;
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public boolean hasDurationUs() {
        return (this.bitField0_ & 8) != 0;
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public boolean hasIsAuto() {
        return (this.bitField0_ & 2) != 0;
    }

    @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
    public boolean hasName() {
        return (this.bitField0_ & 1) != 0;
    }

    public static final class Builder extends o.a<TraceMetric, Builder> implements TraceMetricOrBuilder {
        private Builder() {
            super(TraceMetric.DEFAULT_INSTANCE);
        }

        public Builder addAllPerfSessions(Iterable<? extends PerfSession> iterable) {
            copyOnWrite();
            ((TraceMetric) this.instance).addAllPerfSessions(iterable);
            return this;
        }

        public Builder addAllSubtraces(Iterable<? extends TraceMetric> iterable) {
            copyOnWrite();
            ((TraceMetric) this.instance).addAllSubtraces(iterable);
            return this;
        }

        public Builder addPerfSessions(PerfSession.Builder builder) {
            copyOnWrite();
            ((TraceMetric) this.instance).addPerfSessions(builder.build());
            return this;
        }

        public Builder addSubtraces(Builder builder) {
            copyOnWrite();
            ((TraceMetric) this.instance).addSubtraces(builder.build());
            return this;
        }

        public Builder clearClientStartTimeUs() {
            copyOnWrite();
            ((TraceMetric) this.instance).clearClientStartTimeUs();
            return this;
        }

        public Builder clearCounters() {
            copyOnWrite();
            ((TraceMetric) this.instance).getMutableCountersMap().clear();
            return this;
        }

        public Builder clearCustomAttributes() {
            copyOnWrite();
            ((TraceMetric) this.instance).getMutableCustomAttributesMap().clear();
            return this;
        }

        public Builder clearDurationUs() {
            copyOnWrite();
            ((TraceMetric) this.instance).clearDurationUs();
            return this;
        }

        public Builder clearIsAuto() {
            copyOnWrite();
            ((TraceMetric) this.instance).clearIsAuto();
            return this;
        }

        public Builder clearName() {
            copyOnWrite();
            ((TraceMetric) this.instance).clearName();
            return this;
        }

        public Builder clearPerfSessions() {
            copyOnWrite();
            ((TraceMetric) this.instance).clearPerfSessions();
            return this;
        }

        public Builder clearSubtraces() {
            copyOnWrite();
            ((TraceMetric) this.instance).clearSubtraces();
            return this;
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public boolean containsCounters(String str) {
            str.getClass();
            return ((TraceMetric) this.instance).getCountersMap().containsKey(str);
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public boolean containsCustomAttributes(String str) {
            str.getClass();
            return ((TraceMetric) this.instance).getCustomAttributesMap().containsKey(str);
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public long getClientStartTimeUs() {
            return ((TraceMetric) this.instance).getClientStartTimeUs();
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        @Deprecated
        public Map<String, Long> getCounters() {
            return getCountersMap();
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public int getCountersCount() {
            return ((TraceMetric) this.instance).getCountersMap().size();
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public Map<String, Long> getCountersMap() {
            return Collections.unmodifiableMap(((TraceMetric) this.instance).getCountersMap());
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public long getCountersOrDefault(String str, long j) {
            str.getClass();
            Map<String, Long> countersMap = ((TraceMetric) this.instance).getCountersMap();
            return countersMap.containsKey(str) ? countersMap.get(str).longValue() : j;
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public long getCountersOrThrow(String str) {
            str.getClass();
            Map<String, Long> countersMap = ((TraceMetric) this.instance).getCountersMap();
            if (countersMap.containsKey(str)) {
                return countersMap.get(str).longValue();
            }
            mi2.b();
            return 0L;
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        @Deprecated
        public Map<String, String> getCustomAttributes() {
            return getCustomAttributesMap();
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public int getCustomAttributesCount() {
            return ((TraceMetric) this.instance).getCustomAttributesMap().size();
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public Map<String, String> getCustomAttributesMap() {
            return Collections.unmodifiableMap(((TraceMetric) this.instance).getCustomAttributesMap());
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public String getCustomAttributesOrDefault(String str, String str2) {
            str.getClass();
            Map<String, String> customAttributesMap = ((TraceMetric) this.instance).getCustomAttributesMap();
            return customAttributesMap.containsKey(str) ? customAttributesMap.get(str) : str2;
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public String getCustomAttributesOrThrow(String str) {
            str.getClass();
            Map<String, String> customAttributesMap = ((TraceMetric) this.instance).getCustomAttributesMap();
            if (customAttributesMap.containsKey(str)) {
                return customAttributesMap.get(str);
            }
            mi2.b();
            return null;
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public long getDurationUs() {
            return ((TraceMetric) this.instance).getDurationUs();
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public boolean getIsAuto() {
            return ((TraceMetric) this.instance).getIsAuto();
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public String getName() {
            return ((TraceMetric) this.instance).getName();
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public fx0 getNameBytes() {
            return ((TraceMetric) this.instance).getNameBytes();
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public PerfSession getPerfSessions(int i) {
            return ((TraceMetric) this.instance).getPerfSessions(i);
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public int getPerfSessionsCount() {
            return ((TraceMetric) this.instance).getPerfSessionsCount();
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public List<PerfSession> getPerfSessionsList() {
            return Collections.unmodifiableList(((TraceMetric) this.instance).getPerfSessionsList());
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public TraceMetric getSubtraces(int i) {
            return ((TraceMetric) this.instance).getSubtraces(i);
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public int getSubtracesCount() {
            return ((TraceMetric) this.instance).getSubtracesCount();
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public List<TraceMetric> getSubtracesList() {
            return Collections.unmodifiableList(((TraceMetric) this.instance).getSubtracesList());
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public boolean hasClientStartTimeUs() {
            return ((TraceMetric) this.instance).hasClientStartTimeUs();
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public boolean hasDurationUs() {
            return ((TraceMetric) this.instance).hasDurationUs();
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public boolean hasIsAuto() {
            return ((TraceMetric) this.instance).hasIsAuto();
        }

        @Override // com.google.firebase.perf.v1.TraceMetricOrBuilder
        public boolean hasName() {
            return ((TraceMetric) this.instance).hasName();
        }

        public Builder putAllCounters(Map<String, Long> map) {
            copyOnWrite();
            ((TraceMetric) this.instance).getMutableCountersMap().putAll(map);
            return this;
        }

        public Builder putAllCustomAttributes(Map<String, String> map) {
            copyOnWrite();
            ((TraceMetric) this.instance).getMutableCustomAttributesMap().putAll(map);
            return this;
        }

        public Builder putCounters(String str, long j) {
            str.getClass();
            copyOnWrite();
            ((TraceMetric) this.instance).getMutableCountersMap().put(str, Long.valueOf(j));
            return this;
        }

        public Builder putCustomAttributes(String str, String str2) {
            str.getClass();
            str2.getClass();
            copyOnWrite();
            ((TraceMetric) this.instance).getMutableCustomAttributesMap().put(str, str2);
            return this;
        }

        public Builder removeCounters(String str) {
            str.getClass();
            copyOnWrite();
            ((TraceMetric) this.instance).getMutableCountersMap().remove(str);
            return this;
        }

        public Builder removeCustomAttributes(String str) {
            str.getClass();
            copyOnWrite();
            ((TraceMetric) this.instance).getMutableCustomAttributesMap().remove(str);
            return this;
        }

        public Builder removePerfSessions(int i) {
            copyOnWrite();
            ((TraceMetric) this.instance).removePerfSessions(i);
            return this;
        }

        public Builder removeSubtraces(int i) {
            copyOnWrite();
            ((TraceMetric) this.instance).removeSubtraces(i);
            return this;
        }

        public Builder setClientStartTimeUs(long j) {
            copyOnWrite();
            ((TraceMetric) this.instance).setClientStartTimeUs(j);
            return this;
        }

        public Builder setDurationUs(long j) {
            copyOnWrite();
            ((TraceMetric) this.instance).setDurationUs(j);
            return this;
        }

        public Builder setIsAuto(boolean z) {
            copyOnWrite();
            ((TraceMetric) this.instance).setIsAuto(z);
            return this;
        }

        public Builder setName(String str) {
            copyOnWrite();
            ((TraceMetric) this.instance).setName(str);
            return this;
        }

        public Builder setNameBytes(fx0 fx0Var) {
            copyOnWrite();
            ((TraceMetric) this.instance).setNameBytes(fx0Var);
            return this;
        }

        public Builder setPerfSessions(int i, PerfSession.Builder builder) {
            copyOnWrite();
            ((TraceMetric) this.instance).setPerfSessions(i, builder.build());
            return this;
        }

        public Builder setSubtraces(int i, Builder builder) {
            copyOnWrite();
            ((TraceMetric) this.instance).setSubtraces(i, builder.build());
            return this;
        }

        public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Builder addPerfSessions(int i, PerfSession perfSession) {
            copyOnWrite();
            ((TraceMetric) this.instance).addPerfSessions(i, perfSession);
            return this;
        }

        public Builder addSubtraces(int i, TraceMetric traceMetric) {
            copyOnWrite();
            ((TraceMetric) this.instance).addSubtraces(i, traceMetric);
            return this;
        }

        public Builder setPerfSessions(int i, PerfSession perfSession) {
            copyOnWrite();
            ((TraceMetric) this.instance).setPerfSessions(i, perfSession);
            return this;
        }

        public Builder setSubtraces(int i, TraceMetric traceMetric) {
            copyOnWrite();
            ((TraceMetric) this.instance).setSubtraces(i, traceMetric);
            return this;
        }

        public Builder addPerfSessions(PerfSession perfSession) {
            copyOnWrite();
            ((TraceMetric) this.instance).addPerfSessions(perfSession);
            return this;
        }

        public Builder addSubtraces(TraceMetric traceMetric) {
            copyOnWrite();
            ((TraceMetric) this.instance).addSubtraces(traceMetric);
            return this;
        }

        public Builder addPerfSessions(int i, PerfSession.Builder builder) {
            copyOnWrite();
            ((TraceMetric) this.instance).addPerfSessions(i, builder.build());
            return this;
        }

        public Builder addSubtraces(int i, Builder builder) {
            copyOnWrite();
            ((TraceMetric) this.instance).addSubtraces(i, builder.build());
            return this;
        }
    }

    public static Builder newBuilder(TraceMetric traceMetric) {
        return DEFAULT_INSTANCE.createBuilder(traceMetric);
    }

    public static TraceMetric parseDelimitedFrom(InputStream inputStream, j jVar) {
        return (TraceMetric) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
    }

    public static TraceMetric parseFrom(ByteBuffer byteBuffer, j jVar) {
        return (TraceMetric) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
    }

    public static TraceMetric parseFrom(fx0 fx0Var) {
        return (TraceMetric) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
    }

    public static TraceMetric parseFrom(fx0 fx0Var, j jVar) {
        return (TraceMetric) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPerfSessions(int i, PerfSession perfSession) {
        perfSession.getClass();
        ensurePerfSessionsIsMutable();
        this.perfSessions_.add(i, perfSession);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSubtraces(int i, TraceMetric traceMetric) {
        traceMetric.getClass();
        ensureSubtracesIsMutable();
        this.subtraces_.add(i, traceMetric);
    }

    public static TraceMetric parseFrom(byte[] bArr) {
        return (TraceMetric) o.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static TraceMetric parseFrom(byte[] bArr, j jVar) {
        return (TraceMetric) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
    }

    public static TraceMetric parseFrom(InputStream inputStream) {
        return (TraceMetric) o.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static TraceMetric parseFrom(InputStream inputStream, j jVar) {
        return (TraceMetric) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
    }

    public static TraceMetric parseFrom(f fVar) {
        return (TraceMetric) o.parseFrom(DEFAULT_INSTANCE, fVar);
    }

    public static TraceMetric parseFrom(f fVar, j jVar) {
        return (TraceMetric) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
    }
}
