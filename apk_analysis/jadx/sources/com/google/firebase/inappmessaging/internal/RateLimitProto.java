package com.google.firebase.inappmessaging.internal;

import com.google.protobuf.a0;
import com.google.protobuf.f;
import com.google.protobuf.j;
import com.google.protobuf.o;
import com.google.protobuf.w;
import com.google.protobuf.x;
import defpackage.fx0;
import defpackage.ha5;
import defpackage.mi2;
import defpackage.ud;
import defpackage.ui9;
import defpackage.x36;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class RateLimitProto {

    /* JADX INFO: renamed from: com.google.firebase.inappmessaging.internal.RateLimitProto$1, reason: invalid class name */
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

    public interface CounterOrBuilder extends ha5 {
        @Override // defpackage.ha5
        /* synthetic */ a0 getDefaultInstanceForType();

        long getStartTimeEpoch();

        long getValue();

        @Override // defpackage.ha5
        /* synthetic */ boolean isInitialized();
    }

    public interface RateLimitOrBuilder extends ha5 {
        boolean containsLimits(String str);

        @Override // defpackage.ha5
        /* synthetic */ a0 getDefaultInstanceForType();

        @Deprecated
        Map<String, Counter> getLimits();

        int getLimitsCount();

        Map<String, Counter> getLimitsMap();

        Counter getLimitsOrDefault(String str, Counter counter);

        Counter getLimitsOrThrow(String str);

        @Override // defpackage.ha5
        /* synthetic */ boolean isInitialized();
    }

    private RateLimitProto() {
    }

    public static void registerAllExtensions(j jVar) {
    }

    public static final class Counter extends o<Counter, Builder> implements CounterOrBuilder {
        private static final Counter DEFAULT_INSTANCE;
        private static volatile x36<Counter> PARSER = null;
        public static final int START_TIME_EPOCH_FIELD_NUMBER = 2;
        public static final int VALUE_FIELD_NUMBER = 1;
        private long startTimeEpoch_;
        private long value_;

        static {
            Counter counter = new Counter();
            DEFAULT_INSTANCE = counter;
            o.registerDefaultInstance(Counter.class, counter);
        }

        private Counter() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStartTimeEpoch() {
            this.startTimeEpoch_ = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValue() {
            this.value_ = 0L;
        }

        public static Counter getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Counter parseDelimitedFrom(InputStream inputStream) {
            return (Counter) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Counter parseFrom(ByteBuffer byteBuffer) {
            return (Counter) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static x36<Counter> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStartTimeEpoch(long j) {
            this.startTimeEpoch_ = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValue(long j) {
            this.value_ = j;
        }

        @Override // com.google.protobuf.o
        public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
            x36 bVar;
            int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
            AnonymousClass1 anonymousClass1 = null;
            switch (i) {
                case 1:
                    return new Counter();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0002", new Object[]{"value_", "startTimeEpoch_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    x36<Counter> x36Var = PARSER;
                    if (x36Var != null) {
                        return x36Var;
                    }
                    synchronized (Counter.class) {
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

        @Override // com.google.firebase.inappmessaging.internal.RateLimitProto.CounterOrBuilder
        public long getStartTimeEpoch() {
            return this.startTimeEpoch_;
        }

        @Override // com.google.firebase.inappmessaging.internal.RateLimitProto.CounterOrBuilder
        public long getValue() {
            return this.value_;
        }

        public static final class Builder extends o.a<Counter, Builder> implements CounterOrBuilder {
            private Builder() {
                super(Counter.DEFAULT_INSTANCE);
            }

            public Builder clearStartTimeEpoch() {
                copyOnWrite();
                ((Counter) this.instance).clearStartTimeEpoch();
                return this;
            }

            public Builder clearValue() {
                copyOnWrite();
                ((Counter) this.instance).clearValue();
                return this;
            }

            @Override // com.google.firebase.inappmessaging.internal.RateLimitProto.CounterOrBuilder
            public long getStartTimeEpoch() {
                return ((Counter) this.instance).getStartTimeEpoch();
            }

            @Override // com.google.firebase.inappmessaging.internal.RateLimitProto.CounterOrBuilder
            public long getValue() {
                return ((Counter) this.instance).getValue();
            }

            public Builder setStartTimeEpoch(long j) {
                copyOnWrite();
                ((Counter) this.instance).setStartTimeEpoch(j);
                return this;
            }

            public Builder setValue(long j) {
                copyOnWrite();
                ((Counter) this.instance).setValue(j);
                return this;
            }

            public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        public static Builder newBuilder(Counter counter) {
            return DEFAULT_INSTANCE.createBuilder(counter);
        }

        public static Counter parseDelimitedFrom(InputStream inputStream, j jVar) {
            return (Counter) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static Counter parseFrom(ByteBuffer byteBuffer, j jVar) {
            return (Counter) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
        }

        public static Counter parseFrom(fx0 fx0Var) {
            return (Counter) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
        }

        public static Counter parseFrom(fx0 fx0Var, j jVar) {
            return (Counter) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
        }

        public static Counter parseFrom(byte[] bArr) {
            return (Counter) o.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Counter parseFrom(byte[] bArr, j jVar) {
            return (Counter) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
        }

        public static Counter parseFrom(InputStream inputStream) {
            return (Counter) o.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Counter parseFrom(InputStream inputStream, j jVar) {
            return (Counter) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static Counter parseFrom(f fVar) {
            return (Counter) o.parseFrom(DEFAULT_INSTANCE, fVar);
        }

        public static Counter parseFrom(f fVar, j jVar) {
            return (Counter) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
        }
    }

    public static final class RateLimit extends o<RateLimit, Builder> implements RateLimitOrBuilder {
        private static final RateLimit DEFAULT_INSTANCE;
        public static final int LIMITS_FIELD_NUMBER = 1;
        private static volatile x36<RateLimit> PARSER;
        private x<String, Counter> limits_ = x.c;

        public static final class LimitsDefaultEntryHolder {
            static final w<String, Counter> defaultEntry = new w<>(ui9.STRING, ui9.MESSAGE, Counter.getDefaultInstance());

            private LimitsDefaultEntryHolder() {
            }
        }

        static {
            RateLimit rateLimit = new RateLimit();
            DEFAULT_INSTANCE = rateLimit;
            o.registerDefaultInstance(RateLimit.class, rateLimit);
        }

        private RateLimit() {
        }

        public static RateLimit getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<String, Counter> getMutableLimitsMap() {
            return internalGetMutableLimits();
        }

        private x<String, Counter> internalGetLimits() {
            return this.limits_;
        }

        private x<String, Counter> internalGetMutableLimits() {
            x<String, Counter> xVar = this.limits_;
            if (xVar.b) {
                return xVar;
            }
            x<String, Counter> xVarJ = xVar.j();
            this.limits_ = xVarJ;
            return xVarJ;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static RateLimit parseDelimitedFrom(InputStream inputStream) {
            return (RateLimit) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static RateLimit parseFrom(ByteBuffer byteBuffer) {
            return (RateLimit) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static x36<RateLimit> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        @Override // com.google.firebase.inappmessaging.internal.RateLimitProto.RateLimitOrBuilder
        public boolean containsLimits(String str) {
            str.getClass();
            return internalGetLimits().containsKey(str);
        }

        @Override // com.google.protobuf.o
        public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
            x36 bVar;
            int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
            AnonymousClass1 anonymousClass1 = null;
            switch (i) {
                case 1:
                    return new RateLimit();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"limits_", LimitsDefaultEntryHolder.defaultEntry});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    x36<RateLimit> x36Var = PARSER;
                    if (x36Var != null) {
                        return x36Var;
                    }
                    synchronized (RateLimit.class) {
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

        @Override // com.google.firebase.inappmessaging.internal.RateLimitProto.RateLimitOrBuilder
        @Deprecated
        public Map<String, Counter> getLimits() {
            return getLimitsMap();
        }

        @Override // com.google.firebase.inappmessaging.internal.RateLimitProto.RateLimitOrBuilder
        public int getLimitsCount() {
            return internalGetLimits().size();
        }

        @Override // com.google.firebase.inappmessaging.internal.RateLimitProto.RateLimitOrBuilder
        public Map<String, Counter> getLimitsMap() {
            return Collections.unmodifiableMap(internalGetLimits());
        }

        @Override // com.google.firebase.inappmessaging.internal.RateLimitProto.RateLimitOrBuilder
        public Counter getLimitsOrDefault(String str, Counter counter) {
            str.getClass();
            x<String, Counter> xVarInternalGetLimits = internalGetLimits();
            return xVarInternalGetLimits.containsKey(str) ? xVarInternalGetLimits.get(str) : counter;
        }

        @Override // com.google.firebase.inappmessaging.internal.RateLimitProto.RateLimitOrBuilder
        public Counter getLimitsOrThrow(String str) {
            str.getClass();
            x<String, Counter> xVarInternalGetLimits = internalGetLimits();
            if (xVarInternalGetLimits.containsKey(str)) {
                return xVarInternalGetLimits.get(str);
            }
            mi2.b();
            return null;
        }

        public static final class Builder extends o.a<RateLimit, Builder> implements RateLimitOrBuilder {
            private Builder() {
                super(RateLimit.DEFAULT_INSTANCE);
            }

            public Builder clearLimits() {
                copyOnWrite();
                ((RateLimit) this.instance).getMutableLimitsMap().clear();
                return this;
            }

            @Override // com.google.firebase.inappmessaging.internal.RateLimitProto.RateLimitOrBuilder
            public boolean containsLimits(String str) {
                str.getClass();
                return ((RateLimit) this.instance).getLimitsMap().containsKey(str);
            }

            @Override // com.google.firebase.inappmessaging.internal.RateLimitProto.RateLimitOrBuilder
            @Deprecated
            public Map<String, Counter> getLimits() {
                return getLimitsMap();
            }

            @Override // com.google.firebase.inappmessaging.internal.RateLimitProto.RateLimitOrBuilder
            public int getLimitsCount() {
                return ((RateLimit) this.instance).getLimitsMap().size();
            }

            @Override // com.google.firebase.inappmessaging.internal.RateLimitProto.RateLimitOrBuilder
            public Map<String, Counter> getLimitsMap() {
                return Collections.unmodifiableMap(((RateLimit) this.instance).getLimitsMap());
            }

            @Override // com.google.firebase.inappmessaging.internal.RateLimitProto.RateLimitOrBuilder
            public Counter getLimitsOrDefault(String str, Counter counter) {
                str.getClass();
                Map<String, Counter> limitsMap = ((RateLimit) this.instance).getLimitsMap();
                return limitsMap.containsKey(str) ? limitsMap.get(str) : counter;
            }

            @Override // com.google.firebase.inappmessaging.internal.RateLimitProto.RateLimitOrBuilder
            public Counter getLimitsOrThrow(String str) {
                str.getClass();
                Map<String, Counter> limitsMap = ((RateLimit) this.instance).getLimitsMap();
                if (limitsMap.containsKey(str)) {
                    return limitsMap.get(str);
                }
                mi2.b();
                return null;
            }

            public Builder putAllLimits(Map<String, Counter> map) {
                copyOnWrite();
                ((RateLimit) this.instance).getMutableLimitsMap().putAll(map);
                return this;
            }

            public Builder putLimits(String str, Counter counter) {
                str.getClass();
                counter.getClass();
                copyOnWrite();
                ((RateLimit) this.instance).getMutableLimitsMap().put(str, counter);
                return this;
            }

            public Builder removeLimits(String str) {
                str.getClass();
                copyOnWrite();
                ((RateLimit) this.instance).getMutableLimitsMap().remove(str);
                return this;
            }

            public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        public static Builder newBuilder(RateLimit rateLimit) {
            return DEFAULT_INSTANCE.createBuilder(rateLimit);
        }

        public static RateLimit parseDelimitedFrom(InputStream inputStream, j jVar) {
            return (RateLimit) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static RateLimit parseFrom(ByteBuffer byteBuffer, j jVar) {
            return (RateLimit) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
        }

        public static RateLimit parseFrom(fx0 fx0Var) {
            return (RateLimit) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
        }

        public static RateLimit parseFrom(fx0 fx0Var, j jVar) {
            return (RateLimit) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
        }

        public static RateLimit parseFrom(byte[] bArr) {
            return (RateLimit) o.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static RateLimit parseFrom(byte[] bArr, j jVar) {
            return (RateLimit) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
        }

        public static RateLimit parseFrom(InputStream inputStream) {
            return (RateLimit) o.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static RateLimit parseFrom(InputStream inputStream, j jVar) {
            return (RateLimit) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static RateLimit parseFrom(f fVar) {
            return (RateLimit) o.parseFrom(DEFAULT_INSTANCE, fVar);
        }

        public static RateLimit parseFrom(f fVar, j jVar) {
            return (RateLimit) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
        }
    }
}
