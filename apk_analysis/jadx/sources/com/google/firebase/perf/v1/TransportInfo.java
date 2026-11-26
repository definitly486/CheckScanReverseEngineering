package com.google.firebase.perf.v1;

import com.google.protobuf.f;
import com.google.protobuf.j;
import com.google.protobuf.o;
import com.google.protobuf.q;
import defpackage.fx0;
import defpackage.ud;
import defpackage.x36;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class TransportInfo extends o<TransportInfo, Builder> implements TransportInfoOrBuilder {
    private static final TransportInfo DEFAULT_INSTANCE;
    public static final int DISPATCH_DESTINATION_FIELD_NUMBER = 1;
    private static volatile x36<TransportInfo> PARSER;
    private int bitField0_;
    private int dispatchDestination_;

    /* JADX INFO: renamed from: com.google.firebase.perf.v1.TransportInfo$1, reason: invalid class name */
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

    static {
        TransportInfo transportInfo = new TransportInfo();
        DEFAULT_INSTANCE = transportInfo;
        o.registerDefaultInstance(TransportInfo.class, transportInfo);
    }

    private TransportInfo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearDispatchDestination() {
        this.bitField0_ &= -2;
        this.dispatchDestination_ = 0;
    }

    public static TransportInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static TransportInfo parseDelimitedFrom(InputStream inputStream) {
        return (TransportInfo) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static TransportInfo parseFrom(ByteBuffer byteBuffer) {
        return (TransportInfo) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static x36<TransportInfo> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDispatchDestination(DispatchDestination dispatchDestination) {
        this.dispatchDestination_ = dispatchDestination.getNumber();
        this.bitField0_ |= 1;
    }

    @Override // com.google.protobuf.o
    public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
        x36 bVar;
        int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
        AnonymousClass1 anonymousClass1 = null;
        switch (i) {
            case 1:
                return new TransportInfo();
            case 2:
                return new Builder(anonymousClass1);
            case 3:
                return o.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"bitField0_", "dispatchDestination_", DispatchDestination.internalGetVerifier()});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x36<TransportInfo> x36Var = PARSER;
                if (x36Var != null) {
                    return x36Var;
                }
                synchronized (TransportInfo.class) {
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

    @Override // com.google.firebase.perf.v1.TransportInfoOrBuilder
    public DispatchDestination getDispatchDestination() {
        DispatchDestination dispatchDestinationForNumber = DispatchDestination.forNumber(this.dispatchDestination_);
        return dispatchDestinationForNumber == null ? DispatchDestination.SOURCE_UNKNOWN : dispatchDestinationForNumber;
    }

    @Override // com.google.firebase.perf.v1.TransportInfoOrBuilder
    public boolean hasDispatchDestination() {
        return (this.bitField0_ & 1) != 0;
    }

    public static final class Builder extends o.a<TransportInfo, Builder> implements TransportInfoOrBuilder {
        private Builder() {
            super(TransportInfo.DEFAULT_INSTANCE);
        }

        public Builder clearDispatchDestination() {
            copyOnWrite();
            ((TransportInfo) this.instance).clearDispatchDestination();
            return this;
        }

        @Override // com.google.firebase.perf.v1.TransportInfoOrBuilder
        public DispatchDestination getDispatchDestination() {
            return ((TransportInfo) this.instance).getDispatchDestination();
        }

        @Override // com.google.firebase.perf.v1.TransportInfoOrBuilder
        public boolean hasDispatchDestination() {
            return ((TransportInfo) this.instance).hasDispatchDestination();
        }

        public Builder setDispatchDestination(DispatchDestination dispatchDestination) {
            copyOnWrite();
            ((TransportInfo) this.instance).setDispatchDestination(dispatchDestination);
            return this;
        }

        public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public enum DispatchDestination implements q.c {
        SOURCE_UNKNOWN(0),
        FL_LEGACY_V1(1);

        public static final int FL_LEGACY_V1_VALUE = 1;
        public static final int SOURCE_UNKNOWN_VALUE = 0;
        private static final q.d<DispatchDestination> internalValueMap = new q.d<DispatchDestination>() { // from class: com.google.firebase.perf.v1.TransportInfo.DispatchDestination.1
            @Override // com.google.protobuf.q.d
            public DispatchDestination findValueByNumber(int i) {
                return DispatchDestination.forNumber(i);
            }
        };
        private final int value;

        public static final class DispatchDestinationVerifier implements q.e {
            static final q.e INSTANCE = new DispatchDestinationVerifier();

            private DispatchDestinationVerifier() {
            }

            @Override // com.google.protobuf.q.e
            public boolean isInRange(int i) {
                return DispatchDestination.forNumber(i) != null;
            }
        }

        DispatchDestination(int i) {
            this.value = i;
        }

        public static DispatchDestination forNumber(int i) {
            if (i == 0) {
                return SOURCE_UNKNOWN;
            }
            if (i != 1) {
                return null;
            }
            return FL_LEGACY_V1;
        }

        public static q.d<DispatchDestination> internalGetValueMap() {
            return internalValueMap;
        }

        public static q.e internalGetVerifier() {
            return DispatchDestinationVerifier.INSTANCE;
        }

        @Override // com.google.protobuf.q.c
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static DispatchDestination valueOf(int i) {
            return forNumber(i);
        }
    }

    public static Builder newBuilder(TransportInfo transportInfo) {
        return DEFAULT_INSTANCE.createBuilder(transportInfo);
    }

    public static TransportInfo parseDelimitedFrom(InputStream inputStream, j jVar) {
        return (TransportInfo) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
    }

    public static TransportInfo parseFrom(ByteBuffer byteBuffer, j jVar) {
        return (TransportInfo) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
    }

    public static TransportInfo parseFrom(fx0 fx0Var) {
        return (TransportInfo) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
    }

    public static TransportInfo parseFrom(fx0 fx0Var, j jVar) {
        return (TransportInfo) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
    }

    public static TransportInfo parseFrom(byte[] bArr) {
        return (TransportInfo) o.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static TransportInfo parseFrom(byte[] bArr, j jVar) {
        return (TransportInfo) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
    }

    public static TransportInfo parseFrom(InputStream inputStream) {
        return (TransportInfo) o.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static TransportInfo parseFrom(InputStream inputStream, j jVar) {
        return (TransportInfo) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
    }

    public static TransportInfo parseFrom(f fVar) {
        return (TransportInfo) o.parseFrom(DEFAULT_INSTANCE, fVar);
    }

    public static TransportInfo parseFrom(f fVar, j jVar) {
        return (TransportInfo) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
    }
}
