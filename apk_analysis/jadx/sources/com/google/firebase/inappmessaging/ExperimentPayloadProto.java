package com.google.firebase.inappmessaging;

import com.google.protobuf.a;
import com.google.protobuf.a0;
import com.google.protobuf.f;
import com.google.protobuf.j;
import com.google.protobuf.o;
import com.google.protobuf.q;
import defpackage.fg;
import defpackage.fx0;
import defpackage.ha5;
import defpackage.ud;
import defpackage.x36;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class ExperimentPayloadProto {

    /* JADX INFO: renamed from: com.google.firebase.inappmessaging.ExperimentPayloadProto$1, reason: invalid class name */
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

    public interface ExperimentLiteOrBuilder extends ha5 {
        @Override // defpackage.ha5
        /* synthetic */ a0 getDefaultInstanceForType();

        String getExperimentId();

        fx0 getExperimentIdBytes();

        @Override // defpackage.ha5
        /* synthetic */ boolean isInitialized();
    }

    public interface ExperimentPayloadOrBuilder extends ha5 {
        String getActivateEventToLog();

        fx0 getActivateEventToLogBytes();

        String getClearEventToLog();

        fx0 getClearEventToLogBytes();

        @Override // defpackage.ha5
        /* synthetic */ a0 getDefaultInstanceForType();

        String getExperimentId();

        fx0 getExperimentIdBytes();

        long getExperimentStartTimeMillis();

        ExperimentLite getOngoingExperiments(int i);

        int getOngoingExperimentsCount();

        List<ExperimentLite> getOngoingExperimentsList();

        ExperimentPayload.ExperimentOverflowPolicy getOverflowPolicy();

        int getOverflowPolicyValue();

        String getSetEventToLog();

        fx0 getSetEventToLogBytes();

        long getTimeToLiveMillis();

        String getTimeoutEventToLog();

        fx0 getTimeoutEventToLogBytes();

        String getTriggerEvent();

        fx0 getTriggerEventBytes();

        long getTriggerTimeoutMillis();

        String getTtlExpiryEventToLog();

        fx0 getTtlExpiryEventToLogBytes();

        String getVariantId();

        fx0 getVariantIdBytes();

        @Override // defpackage.ha5
        /* synthetic */ boolean isInitialized();
    }

    private ExperimentPayloadProto() {
    }

    public static void registerAllExtensions(j jVar) {
    }

    public static final class ExperimentLite extends o<ExperimentLite, Builder> implements ExperimentLiteOrBuilder {
        private static final ExperimentLite DEFAULT_INSTANCE;
        public static final int EXPERIMENT_ID_FIELD_NUMBER = 1;
        private static volatile x36<ExperimentLite> PARSER;
        private String experimentId_ = "";

        static {
            ExperimentLite experimentLite = new ExperimentLite();
            DEFAULT_INSTANCE = experimentLite;
            o.registerDefaultInstance(ExperimentLite.class, experimentLite);
        }

        private ExperimentLite() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearExperimentId() {
            this.experimentId_ = getDefaultInstance().getExperimentId();
        }

        public static ExperimentLite getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static ExperimentLite parseDelimitedFrom(InputStream inputStream) {
            return (ExperimentLite) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ExperimentLite parseFrom(ByteBuffer byteBuffer) {
            return (ExperimentLite) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static x36<ExperimentLite> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExperimentId(String str) {
            str.getClass();
            this.experimentId_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExperimentIdBytes(fx0 fx0Var) {
            a.checkByteStringIsUtf8(fx0Var);
            this.experimentId_ = fx0Var.p();
        }

        @Override // com.google.protobuf.o
        public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
            x36 bVar;
            int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
            AnonymousClass1 anonymousClass1 = null;
            switch (i) {
                case 1:
                    return new ExperimentLite();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"experimentId_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    x36<ExperimentLite> x36Var = PARSER;
                    if (x36Var != null) {
                        return x36Var;
                    }
                    synchronized (ExperimentLite.class) {
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

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentLiteOrBuilder
        public String getExperimentId() {
            return this.experimentId_;
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentLiteOrBuilder
        public fx0 getExperimentIdBytes() {
            return fx0.f(this.experimentId_);
        }

        public static final class Builder extends o.a<ExperimentLite, Builder> implements ExperimentLiteOrBuilder {
            private Builder() {
                super(ExperimentLite.DEFAULT_INSTANCE);
            }

            public Builder clearExperimentId() {
                copyOnWrite();
                ((ExperimentLite) this.instance).clearExperimentId();
                return this;
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentLiteOrBuilder
            public String getExperimentId() {
                return ((ExperimentLite) this.instance).getExperimentId();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentLiteOrBuilder
            public fx0 getExperimentIdBytes() {
                return ((ExperimentLite) this.instance).getExperimentIdBytes();
            }

            public Builder setExperimentId(String str) {
                copyOnWrite();
                ((ExperimentLite) this.instance).setExperimentId(str);
                return this;
            }

            public Builder setExperimentIdBytes(fx0 fx0Var) {
                copyOnWrite();
                ((ExperimentLite) this.instance).setExperimentIdBytes(fx0Var);
                return this;
            }

            public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        public static Builder newBuilder(ExperimentLite experimentLite) {
            return DEFAULT_INSTANCE.createBuilder(experimentLite);
        }

        public static ExperimentLite parseDelimitedFrom(InputStream inputStream, j jVar) {
            return (ExperimentLite) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static ExperimentLite parseFrom(ByteBuffer byteBuffer, j jVar) {
            return (ExperimentLite) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
        }

        public static ExperimentLite parseFrom(fx0 fx0Var) {
            return (ExperimentLite) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
        }

        public static ExperimentLite parseFrom(fx0 fx0Var, j jVar) {
            return (ExperimentLite) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
        }

        public static ExperimentLite parseFrom(byte[] bArr) {
            return (ExperimentLite) o.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static ExperimentLite parseFrom(byte[] bArr, j jVar) {
            return (ExperimentLite) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
        }

        public static ExperimentLite parseFrom(InputStream inputStream) {
            return (ExperimentLite) o.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ExperimentLite parseFrom(InputStream inputStream, j jVar) {
            return (ExperimentLite) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static ExperimentLite parseFrom(f fVar) {
            return (ExperimentLite) o.parseFrom(DEFAULT_INSTANCE, fVar);
        }

        public static ExperimentLite parseFrom(f fVar, j jVar) {
            return (ExperimentLite) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
        }
    }

    public static final class ExperimentPayload extends o<ExperimentPayload, Builder> implements ExperimentPayloadOrBuilder {
        public static final int ACTIVATE_EVENT_TO_LOG_FIELD_NUMBER = 8;
        public static final int CLEAR_EVENT_TO_LOG_FIELD_NUMBER = 9;
        private static final ExperimentPayload DEFAULT_INSTANCE;
        public static final int EXPERIMENT_ID_FIELD_NUMBER = 1;
        public static final int EXPERIMENT_START_TIME_MILLIS_FIELD_NUMBER = 3;
        public static final int ONGOING_EXPERIMENTS_FIELD_NUMBER = 13;
        public static final int OVERFLOW_POLICY_FIELD_NUMBER = 12;
        private static volatile x36<ExperimentPayload> PARSER = null;
        public static final int SET_EVENT_TO_LOG_FIELD_NUMBER = 7;
        public static final int TIMEOUT_EVENT_TO_LOG_FIELD_NUMBER = 10;
        public static final int TIME_TO_LIVE_MILLIS_FIELD_NUMBER = 6;
        public static final int TRIGGER_EVENT_FIELD_NUMBER = 4;
        public static final int TRIGGER_TIMEOUT_MILLIS_FIELD_NUMBER = 5;
        public static final int TTL_EXPIRY_EVENT_TO_LOG_FIELD_NUMBER = 11;
        public static final int VARIANT_ID_FIELD_NUMBER = 2;
        private long experimentStartTimeMillis_;
        private int overflowPolicy_;
        private long timeToLiveMillis_;
        private long triggerTimeoutMillis_;
        private String experimentId_ = "";
        private String variantId_ = "";
        private String triggerEvent_ = "";
        private String setEventToLog_ = "";
        private String activateEventToLog_ = "";
        private String clearEventToLog_ = "";
        private String timeoutEventToLog_ = "";
        private String ttlExpiryEventToLog_ = "";
        private q.j<ExperimentLite> ongoingExperiments_ = o.emptyProtobufList();

        static {
            ExperimentPayload experimentPayload = new ExperimentPayload();
            DEFAULT_INSTANCE = experimentPayload;
            o.registerDefaultInstance(ExperimentPayload.class, experimentPayload);
        }

        private ExperimentPayload() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllOngoingExperiments(Iterable<? extends ExperimentLite> iterable) {
            ensureOngoingExperimentsIsMutable();
            a.addAll((Iterable) iterable, (List) this.ongoingExperiments_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOngoingExperiments(ExperimentLite experimentLite) {
            experimentLite.getClass();
            ensureOngoingExperimentsIsMutable();
            this.ongoingExperiments_.add(experimentLite);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearActivateEventToLog() {
            this.activateEventToLog_ = getDefaultInstance().getActivateEventToLog();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearClearEventToLog() {
            this.clearEventToLog_ = getDefaultInstance().getClearEventToLog();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearExperimentId() {
            this.experimentId_ = getDefaultInstance().getExperimentId();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearExperimentStartTimeMillis() {
            this.experimentStartTimeMillis_ = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOngoingExperiments() {
            this.ongoingExperiments_ = o.emptyProtobufList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearOverflowPolicy() {
            this.overflowPolicy_ = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSetEventToLog() {
            this.setEventToLog_ = getDefaultInstance().getSetEventToLog();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTimeToLiveMillis() {
            this.timeToLiveMillis_ = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTimeoutEventToLog() {
            this.timeoutEventToLog_ = getDefaultInstance().getTimeoutEventToLog();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTriggerEvent() {
            this.triggerEvent_ = getDefaultInstance().getTriggerEvent();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTriggerTimeoutMillis() {
            this.triggerTimeoutMillis_ = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTtlExpiryEventToLog() {
            this.ttlExpiryEventToLog_ = getDefaultInstance().getTtlExpiryEventToLog();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearVariantId() {
            this.variantId_ = getDefaultInstance().getVariantId();
        }

        private void ensureOngoingExperimentsIsMutable() {
            q.j<ExperimentLite> jVar = this.ongoingExperiments_;
            if (jVar.isModifiable()) {
                return;
            }
            this.ongoingExperiments_ = o.mutableCopy(jVar);
        }

        public static ExperimentPayload getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static ExperimentPayload parseDelimitedFrom(InputStream inputStream) {
            return (ExperimentPayload) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ExperimentPayload parseFrom(ByteBuffer byteBuffer) {
            return (ExperimentPayload) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static x36<ExperimentPayload> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeOngoingExperiments(int i) {
            ensureOngoingExperimentsIsMutable();
            this.ongoingExperiments_.remove(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setActivateEventToLog(String str) {
            str.getClass();
            this.activateEventToLog_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setActivateEventToLogBytes(fx0 fx0Var) {
            a.checkByteStringIsUtf8(fx0Var);
            this.activateEventToLog_ = fx0Var.p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClearEventToLog(String str) {
            str.getClass();
            this.clearEventToLog_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClearEventToLogBytes(fx0 fx0Var) {
            a.checkByteStringIsUtf8(fx0Var);
            this.clearEventToLog_ = fx0Var.p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExperimentId(String str) {
            str.getClass();
            this.experimentId_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExperimentIdBytes(fx0 fx0Var) {
            a.checkByteStringIsUtf8(fx0Var);
            this.experimentId_ = fx0Var.p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setExperimentStartTimeMillis(long j) {
            this.experimentStartTimeMillis_ = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOngoingExperiments(int i, ExperimentLite experimentLite) {
            experimentLite.getClass();
            ensureOngoingExperimentsIsMutable();
            this.ongoingExperiments_.set(i, experimentLite);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOverflowPolicy(ExperimentOverflowPolicy experimentOverflowPolicy) {
            this.overflowPolicy_ = experimentOverflowPolicy.getNumber();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOverflowPolicyValue(int i) {
            this.overflowPolicy_ = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSetEventToLog(String str) {
            str.getClass();
            this.setEventToLog_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setSetEventToLogBytes(fx0 fx0Var) {
            a.checkByteStringIsUtf8(fx0Var);
            this.setEventToLog_ = fx0Var.p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTimeToLiveMillis(long j) {
            this.timeToLiveMillis_ = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTimeoutEventToLog(String str) {
            str.getClass();
            this.timeoutEventToLog_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTimeoutEventToLogBytes(fx0 fx0Var) {
            a.checkByteStringIsUtf8(fx0Var);
            this.timeoutEventToLog_ = fx0Var.p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTriggerEvent(String str) {
            str.getClass();
            this.triggerEvent_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTriggerEventBytes(fx0 fx0Var) {
            a.checkByteStringIsUtf8(fx0Var);
            this.triggerEvent_ = fx0Var.p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTriggerTimeoutMillis(long j) {
            this.triggerTimeoutMillis_ = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTtlExpiryEventToLog(String str) {
            str.getClass();
            this.ttlExpiryEventToLog_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTtlExpiryEventToLogBytes(fx0 fx0Var) {
            a.checkByteStringIsUtf8(fx0Var);
            this.ttlExpiryEventToLog_ = fx0Var.p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setVariantId(String str) {
            str.getClass();
            this.variantId_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setVariantIdBytes(fx0 fx0Var) {
            a.checkByteStringIsUtf8(fx0Var);
            this.variantId_ = fx0Var.p();
        }

        @Override // com.google.protobuf.o
        public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
            x36 bVar;
            AnonymousClass1 anonymousClass1 = null;
            switch (AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()]) {
                case 1:
                    return new ExperimentPayload();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\r\u0000\u0000\u0001\r\r\u0000\u0001\u0000\u0001Ȉ\u0002Ȉ\u0003\u0002\u0004Ȉ\u0005\u0002\u0006\u0002\u0007Ȉ\bȈ\tȈ\nȈ\u000bȈ\f\f\r\u001b", new Object[]{"experimentId_", "variantId_", "experimentStartTimeMillis_", "triggerEvent_", "triggerTimeoutMillis_", "timeToLiveMillis_", "setEventToLog_", "activateEventToLog_", "clearEventToLog_", "timeoutEventToLog_", "ttlExpiryEventToLog_", "overflowPolicy_", "ongoingExperiments_", ExperimentLite.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    x36<ExperimentPayload> x36Var = PARSER;
                    if (x36Var != null) {
                        return x36Var;
                    }
                    synchronized (ExperimentPayload.class) {
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

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public String getActivateEventToLog() {
            return this.activateEventToLog_;
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public fx0 getActivateEventToLogBytes() {
            return fx0.f(this.activateEventToLog_);
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public String getClearEventToLog() {
            return this.clearEventToLog_;
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public fx0 getClearEventToLogBytes() {
            return fx0.f(this.clearEventToLog_);
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public String getExperimentId() {
            return this.experimentId_;
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public fx0 getExperimentIdBytes() {
            return fx0.f(this.experimentId_);
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public long getExperimentStartTimeMillis() {
            return this.experimentStartTimeMillis_;
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public ExperimentLite getOngoingExperiments(int i) {
            return this.ongoingExperiments_.get(i);
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public int getOngoingExperimentsCount() {
            return this.ongoingExperiments_.size();
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public List<ExperimentLite> getOngoingExperimentsList() {
            return this.ongoingExperiments_;
        }

        public ExperimentLiteOrBuilder getOngoingExperimentsOrBuilder(int i) {
            return this.ongoingExperiments_.get(i);
        }

        public List<? extends ExperimentLiteOrBuilder> getOngoingExperimentsOrBuilderList() {
            return this.ongoingExperiments_;
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public ExperimentOverflowPolicy getOverflowPolicy() {
            ExperimentOverflowPolicy experimentOverflowPolicyForNumber = ExperimentOverflowPolicy.forNumber(this.overflowPolicy_);
            return experimentOverflowPolicyForNumber == null ? ExperimentOverflowPolicy.UNRECOGNIZED : experimentOverflowPolicyForNumber;
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public int getOverflowPolicyValue() {
            return this.overflowPolicy_;
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public String getSetEventToLog() {
            return this.setEventToLog_;
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public fx0 getSetEventToLogBytes() {
            return fx0.f(this.setEventToLog_);
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public long getTimeToLiveMillis() {
            return this.timeToLiveMillis_;
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public String getTimeoutEventToLog() {
            return this.timeoutEventToLog_;
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public fx0 getTimeoutEventToLogBytes() {
            return fx0.f(this.timeoutEventToLog_);
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public String getTriggerEvent() {
            return this.triggerEvent_;
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public fx0 getTriggerEventBytes() {
            return fx0.f(this.triggerEvent_);
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public long getTriggerTimeoutMillis() {
            return this.triggerTimeoutMillis_;
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public String getTtlExpiryEventToLog() {
            return this.ttlExpiryEventToLog_;
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public fx0 getTtlExpiryEventToLogBytes() {
            return fx0.f(this.ttlExpiryEventToLog_);
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public String getVariantId() {
            return this.variantId_;
        }

        @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
        public fx0 getVariantIdBytes() {
            return fx0.f(this.variantId_);
        }

        public static final class Builder extends o.a<ExperimentPayload, Builder> implements ExperimentPayloadOrBuilder {
            private Builder() {
                super(ExperimentPayload.DEFAULT_INSTANCE);
            }

            public Builder addAllOngoingExperiments(Iterable<? extends ExperimentLite> iterable) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).addAllOngoingExperiments(iterable);
                return this;
            }

            public Builder addOngoingExperiments(ExperimentLite.Builder builder) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).addOngoingExperiments(builder.build());
                return this;
            }

            public Builder clearActivateEventToLog() {
                copyOnWrite();
                ((ExperimentPayload) this.instance).clearActivateEventToLog();
                return this;
            }

            public Builder clearClearEventToLog() {
                copyOnWrite();
                ((ExperimentPayload) this.instance).clearClearEventToLog();
                return this;
            }

            public Builder clearExperimentId() {
                copyOnWrite();
                ((ExperimentPayload) this.instance).clearExperimentId();
                return this;
            }

            public Builder clearExperimentStartTimeMillis() {
                copyOnWrite();
                ((ExperimentPayload) this.instance).clearExperimentStartTimeMillis();
                return this;
            }

            public Builder clearOngoingExperiments() {
                copyOnWrite();
                ((ExperimentPayload) this.instance).clearOngoingExperiments();
                return this;
            }

            public Builder clearOverflowPolicy() {
                copyOnWrite();
                ((ExperimentPayload) this.instance).clearOverflowPolicy();
                return this;
            }

            public Builder clearSetEventToLog() {
                copyOnWrite();
                ((ExperimentPayload) this.instance).clearSetEventToLog();
                return this;
            }

            public Builder clearTimeToLiveMillis() {
                copyOnWrite();
                ((ExperimentPayload) this.instance).clearTimeToLiveMillis();
                return this;
            }

            public Builder clearTimeoutEventToLog() {
                copyOnWrite();
                ((ExperimentPayload) this.instance).clearTimeoutEventToLog();
                return this;
            }

            public Builder clearTriggerEvent() {
                copyOnWrite();
                ((ExperimentPayload) this.instance).clearTriggerEvent();
                return this;
            }

            public Builder clearTriggerTimeoutMillis() {
                copyOnWrite();
                ((ExperimentPayload) this.instance).clearTriggerTimeoutMillis();
                return this;
            }

            public Builder clearTtlExpiryEventToLog() {
                copyOnWrite();
                ((ExperimentPayload) this.instance).clearTtlExpiryEventToLog();
                return this;
            }

            public Builder clearVariantId() {
                copyOnWrite();
                ((ExperimentPayload) this.instance).clearVariantId();
                return this;
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public String getActivateEventToLog() {
                return ((ExperimentPayload) this.instance).getActivateEventToLog();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public fx0 getActivateEventToLogBytes() {
                return ((ExperimentPayload) this.instance).getActivateEventToLogBytes();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public String getClearEventToLog() {
                return ((ExperimentPayload) this.instance).getClearEventToLog();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public fx0 getClearEventToLogBytes() {
                return ((ExperimentPayload) this.instance).getClearEventToLogBytes();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public String getExperimentId() {
                return ((ExperimentPayload) this.instance).getExperimentId();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public fx0 getExperimentIdBytes() {
                return ((ExperimentPayload) this.instance).getExperimentIdBytes();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public long getExperimentStartTimeMillis() {
                return ((ExperimentPayload) this.instance).getExperimentStartTimeMillis();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public ExperimentLite getOngoingExperiments(int i) {
                return ((ExperimentPayload) this.instance).getOngoingExperiments(i);
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public int getOngoingExperimentsCount() {
                return ((ExperimentPayload) this.instance).getOngoingExperimentsCount();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public List<ExperimentLite> getOngoingExperimentsList() {
                return Collections.unmodifiableList(((ExperimentPayload) this.instance).getOngoingExperimentsList());
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public ExperimentOverflowPolicy getOverflowPolicy() {
                return ((ExperimentPayload) this.instance).getOverflowPolicy();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public int getOverflowPolicyValue() {
                return ((ExperimentPayload) this.instance).getOverflowPolicyValue();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public String getSetEventToLog() {
                return ((ExperimentPayload) this.instance).getSetEventToLog();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public fx0 getSetEventToLogBytes() {
                return ((ExperimentPayload) this.instance).getSetEventToLogBytes();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public long getTimeToLiveMillis() {
                return ((ExperimentPayload) this.instance).getTimeToLiveMillis();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public String getTimeoutEventToLog() {
                return ((ExperimentPayload) this.instance).getTimeoutEventToLog();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public fx0 getTimeoutEventToLogBytes() {
                return ((ExperimentPayload) this.instance).getTimeoutEventToLogBytes();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public String getTriggerEvent() {
                return ((ExperimentPayload) this.instance).getTriggerEvent();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public fx0 getTriggerEventBytes() {
                return ((ExperimentPayload) this.instance).getTriggerEventBytes();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public long getTriggerTimeoutMillis() {
                return ((ExperimentPayload) this.instance).getTriggerTimeoutMillis();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public String getTtlExpiryEventToLog() {
                return ((ExperimentPayload) this.instance).getTtlExpiryEventToLog();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public fx0 getTtlExpiryEventToLogBytes() {
                return ((ExperimentPayload) this.instance).getTtlExpiryEventToLogBytes();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public String getVariantId() {
                return ((ExperimentPayload) this.instance).getVariantId();
            }

            @Override // com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayloadOrBuilder
            public fx0 getVariantIdBytes() {
                return ((ExperimentPayload) this.instance).getVariantIdBytes();
            }

            public Builder removeOngoingExperiments(int i) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).removeOngoingExperiments(i);
                return this;
            }

            public Builder setActivateEventToLog(String str) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setActivateEventToLog(str);
                return this;
            }

            public Builder setActivateEventToLogBytes(fx0 fx0Var) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setActivateEventToLogBytes(fx0Var);
                return this;
            }

            public Builder setClearEventToLog(String str) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setClearEventToLog(str);
                return this;
            }

            public Builder setClearEventToLogBytes(fx0 fx0Var) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setClearEventToLogBytes(fx0Var);
                return this;
            }

            public Builder setExperimentId(String str) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setExperimentId(str);
                return this;
            }

            public Builder setExperimentIdBytes(fx0 fx0Var) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setExperimentIdBytes(fx0Var);
                return this;
            }

            public Builder setExperimentStartTimeMillis(long j) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setExperimentStartTimeMillis(j);
                return this;
            }

            public Builder setOngoingExperiments(int i, ExperimentLite.Builder builder) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setOngoingExperiments(i, builder.build());
                return this;
            }

            public Builder setOverflowPolicy(ExperimentOverflowPolicy experimentOverflowPolicy) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setOverflowPolicy(experimentOverflowPolicy);
                return this;
            }

            public Builder setOverflowPolicyValue(int i) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setOverflowPolicyValue(i);
                return this;
            }

            public Builder setSetEventToLog(String str) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setSetEventToLog(str);
                return this;
            }

            public Builder setSetEventToLogBytes(fx0 fx0Var) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setSetEventToLogBytes(fx0Var);
                return this;
            }

            public Builder setTimeToLiveMillis(long j) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setTimeToLiveMillis(j);
                return this;
            }

            public Builder setTimeoutEventToLog(String str) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setTimeoutEventToLog(str);
                return this;
            }

            public Builder setTimeoutEventToLogBytes(fx0 fx0Var) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setTimeoutEventToLogBytes(fx0Var);
                return this;
            }

            public Builder setTriggerEvent(String str) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setTriggerEvent(str);
                return this;
            }

            public Builder setTriggerEventBytes(fx0 fx0Var) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setTriggerEventBytes(fx0Var);
                return this;
            }

            public Builder setTriggerTimeoutMillis(long j) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setTriggerTimeoutMillis(j);
                return this;
            }

            public Builder setTtlExpiryEventToLog(String str) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setTtlExpiryEventToLog(str);
                return this;
            }

            public Builder setTtlExpiryEventToLogBytes(fx0 fx0Var) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setTtlExpiryEventToLogBytes(fx0Var);
                return this;
            }

            public Builder setVariantId(String str) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setVariantId(str);
                return this;
            }

            public Builder setVariantIdBytes(fx0 fx0Var) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setVariantIdBytes(fx0Var);
                return this;
            }

            public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }

            public Builder addOngoingExperiments(int i, ExperimentLite experimentLite) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).addOngoingExperiments(i, experimentLite);
                return this;
            }

            public Builder setOngoingExperiments(int i, ExperimentLite experimentLite) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).setOngoingExperiments(i, experimentLite);
                return this;
            }

            public Builder addOngoingExperiments(ExperimentLite experimentLite) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).addOngoingExperiments(experimentLite);
                return this;
            }

            public Builder addOngoingExperiments(int i, ExperimentLite.Builder builder) {
                copyOnWrite();
                ((ExperimentPayload) this.instance).addOngoingExperiments(i, builder.build());
                return this;
            }
        }

        public enum ExperimentOverflowPolicy implements q.c {
            POLICY_UNSPECIFIED(0),
            DISCARD_OLDEST(1),
            IGNORE_NEWEST(2),
            UNRECOGNIZED(-1);

            public static final int DISCARD_OLDEST_VALUE = 1;
            public static final int IGNORE_NEWEST_VALUE = 2;
            public static final int POLICY_UNSPECIFIED_VALUE = 0;
            private static final q.d<ExperimentOverflowPolicy> internalValueMap = new q.d<ExperimentOverflowPolicy>() { // from class: com.google.firebase.inappmessaging.ExperimentPayloadProto.ExperimentPayload.ExperimentOverflowPolicy.1
                @Override // com.google.protobuf.q.d
                public ExperimentOverflowPolicy findValueByNumber(int i) {
                    return ExperimentOverflowPolicy.forNumber(i);
                }
            };
            private final int value;

            public static final class ExperimentOverflowPolicyVerifier implements q.e {
                static final q.e INSTANCE = new ExperimentOverflowPolicyVerifier();

                private ExperimentOverflowPolicyVerifier() {
                }

                @Override // com.google.protobuf.q.e
                public boolean isInRange(int i) {
                    return ExperimentOverflowPolicy.forNumber(i) != null;
                }
            }

            ExperimentOverflowPolicy(int i) {
                this.value = i;
            }

            public static ExperimentOverflowPolicy forNumber(int i) {
                if (i == 0) {
                    return POLICY_UNSPECIFIED;
                }
                if (i == 1) {
                    return DISCARD_OLDEST;
                }
                if (i != 2) {
                    return null;
                }
                return IGNORE_NEWEST;
            }

            public static q.d<ExperimentOverflowPolicy> internalGetValueMap() {
                return internalValueMap;
            }

            public static q.e internalGetVerifier() {
                return ExperimentOverflowPolicyVerifier.INSTANCE;
            }

            @Override // com.google.protobuf.q.c
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                fg.c("Can't get the number of an unknown enum value.");
                return 0;
            }

            @Deprecated
            public static ExperimentOverflowPolicy valueOf(int i) {
                return forNumber(i);
            }
        }

        public static Builder newBuilder(ExperimentPayload experimentPayload) {
            return DEFAULT_INSTANCE.createBuilder(experimentPayload);
        }

        public static ExperimentPayload parseDelimitedFrom(InputStream inputStream, j jVar) {
            return (ExperimentPayload) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static ExperimentPayload parseFrom(ByteBuffer byteBuffer, j jVar) {
            return (ExperimentPayload) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
        }

        public static ExperimentPayload parseFrom(fx0 fx0Var) {
            return (ExperimentPayload) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
        }

        public static ExperimentPayload parseFrom(fx0 fx0Var, j jVar) {
            return (ExperimentPayload) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addOngoingExperiments(int i, ExperimentLite experimentLite) {
            experimentLite.getClass();
            ensureOngoingExperimentsIsMutable();
            this.ongoingExperiments_.add(i, experimentLite);
        }

        public static ExperimentPayload parseFrom(byte[] bArr) {
            return (ExperimentPayload) o.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static ExperimentPayload parseFrom(byte[] bArr, j jVar) {
            return (ExperimentPayload) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
        }

        public static ExperimentPayload parseFrom(InputStream inputStream) {
            return (ExperimentPayload) o.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ExperimentPayload parseFrom(InputStream inputStream, j jVar) {
            return (ExperimentPayload) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static ExperimentPayload parseFrom(f fVar) {
            return (ExperimentPayload) o.parseFrom(DEFAULT_INSTANCE, fVar);
        }

        public static ExperimentPayload parseFrom(f fVar, j jVar) {
            return (ExperimentPayload) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
        }
    }
}
