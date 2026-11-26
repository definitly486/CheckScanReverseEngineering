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
public final class NetworkConnectionInfo extends o<NetworkConnectionInfo, Builder> implements NetworkConnectionInfoOrBuilder {
    private static final NetworkConnectionInfo DEFAULT_INSTANCE;
    public static final int MOBILE_SUBTYPE_FIELD_NUMBER = 2;
    public static final int NETWORK_TYPE_FIELD_NUMBER = 1;
    private static volatile x36<NetworkConnectionInfo> PARSER;
    private int bitField0_;
    private int mobileSubtype_;
    private int networkType_ = -1;

    /* JADX INFO: renamed from: com.google.firebase.perf.v1.NetworkConnectionInfo$1, reason: invalid class name */
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
        NetworkConnectionInfo networkConnectionInfo = new NetworkConnectionInfo();
        DEFAULT_INSTANCE = networkConnectionInfo;
        o.registerDefaultInstance(NetworkConnectionInfo.class, networkConnectionInfo);
    }

    private NetworkConnectionInfo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMobileSubtype() {
        this.bitField0_ &= -3;
        this.mobileSubtype_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearNetworkType() {
        this.bitField0_ &= -2;
        this.networkType_ = -1;
    }

    public static NetworkConnectionInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static NetworkConnectionInfo parseDelimitedFrom(InputStream inputStream) {
        return (NetworkConnectionInfo) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static NetworkConnectionInfo parseFrom(ByteBuffer byteBuffer) {
        return (NetworkConnectionInfo) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static x36<NetworkConnectionInfo> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMobileSubtype(MobileSubtype mobileSubtype) {
        this.mobileSubtype_ = mobileSubtype.getNumber();
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNetworkType(NetworkType networkType) {
        this.networkType_ = networkType.getNumber();
        this.bitField0_ |= 1;
    }

    @Override // com.google.protobuf.o
    public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
        x36 bVar;
        int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
        AnonymousClass1 anonymousClass1 = null;
        switch (i) {
            case 1:
                return new NetworkConnectionInfo();
            case 2:
                return new Builder(anonymousClass1);
            case 3:
                return o.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"bitField0_", "networkType_", NetworkType.internalGetVerifier(), "mobileSubtype_", MobileSubtype.internalGetVerifier()});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x36<NetworkConnectionInfo> x36Var = PARSER;
                if (x36Var != null) {
                    return x36Var;
                }
                synchronized (NetworkConnectionInfo.class) {
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

    @Override // com.google.firebase.perf.v1.NetworkConnectionInfoOrBuilder
    public MobileSubtype getMobileSubtype() {
        MobileSubtype mobileSubtypeForNumber = MobileSubtype.forNumber(this.mobileSubtype_);
        return mobileSubtypeForNumber == null ? MobileSubtype.UNKNOWN_MOBILE_SUBTYPE : mobileSubtypeForNumber;
    }

    @Override // com.google.firebase.perf.v1.NetworkConnectionInfoOrBuilder
    public NetworkType getNetworkType() {
        NetworkType networkTypeForNumber = NetworkType.forNumber(this.networkType_);
        return networkTypeForNumber == null ? NetworkType.NONE : networkTypeForNumber;
    }

    @Override // com.google.firebase.perf.v1.NetworkConnectionInfoOrBuilder
    public boolean hasMobileSubtype() {
        return (this.bitField0_ & 2) != 0;
    }

    @Override // com.google.firebase.perf.v1.NetworkConnectionInfoOrBuilder
    public boolean hasNetworkType() {
        return (this.bitField0_ & 1) != 0;
    }

    public static final class Builder extends o.a<NetworkConnectionInfo, Builder> implements NetworkConnectionInfoOrBuilder {
        private Builder() {
            super(NetworkConnectionInfo.DEFAULT_INSTANCE);
        }

        public Builder clearMobileSubtype() {
            copyOnWrite();
            ((NetworkConnectionInfo) this.instance).clearMobileSubtype();
            return this;
        }

        public Builder clearNetworkType() {
            copyOnWrite();
            ((NetworkConnectionInfo) this.instance).clearNetworkType();
            return this;
        }

        @Override // com.google.firebase.perf.v1.NetworkConnectionInfoOrBuilder
        public MobileSubtype getMobileSubtype() {
            return ((NetworkConnectionInfo) this.instance).getMobileSubtype();
        }

        @Override // com.google.firebase.perf.v1.NetworkConnectionInfoOrBuilder
        public NetworkType getNetworkType() {
            return ((NetworkConnectionInfo) this.instance).getNetworkType();
        }

        @Override // com.google.firebase.perf.v1.NetworkConnectionInfoOrBuilder
        public boolean hasMobileSubtype() {
            return ((NetworkConnectionInfo) this.instance).hasMobileSubtype();
        }

        @Override // com.google.firebase.perf.v1.NetworkConnectionInfoOrBuilder
        public boolean hasNetworkType() {
            return ((NetworkConnectionInfo) this.instance).hasNetworkType();
        }

        public Builder setMobileSubtype(MobileSubtype mobileSubtype) {
            copyOnWrite();
            ((NetworkConnectionInfo) this.instance).setMobileSubtype(mobileSubtype);
            return this;
        }

        public Builder setNetworkType(NetworkType networkType) {
            copyOnWrite();
            ((NetworkConnectionInfo) this.instance).setNetworkType(networkType);
            return this;
        }

        public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public enum MobileSubtype implements q.c {
        UNKNOWN_MOBILE_SUBTYPE(0),
        GPRS(1),
        EDGE(2),
        UMTS(3),
        CDMA(4),
        EVDO_0(5),
        EVDO_A(6),
        RTT(7),
        HSDPA(8),
        HSUPA(9),
        HSPA(10),
        IDEN(11),
        EVDO_B(12),
        LTE(13),
        EHRPD(14),
        HSPAP(15),
        GSM(16),
        TD_SCDMA(17),
        IWLAN(18),
        LTE_CA(19),
        COMBINED(100);

        public static final int CDMA_VALUE = 4;
        public static final int COMBINED_VALUE = 100;
        public static final int EDGE_VALUE = 2;
        public static final int EHRPD_VALUE = 14;
        public static final int EVDO_0_VALUE = 5;
        public static final int EVDO_A_VALUE = 6;
        public static final int EVDO_B_VALUE = 12;
        public static final int GPRS_VALUE = 1;
        public static final int GSM_VALUE = 16;
        public static final int HSDPA_VALUE = 8;
        public static final int HSPAP_VALUE = 15;
        public static final int HSPA_VALUE = 10;
        public static final int HSUPA_VALUE = 9;
        public static final int IDEN_VALUE = 11;
        public static final int IWLAN_VALUE = 18;
        public static final int LTE_CA_VALUE = 19;
        public static final int LTE_VALUE = 13;
        public static final int RTT_VALUE = 7;
        public static final int TD_SCDMA_VALUE = 17;
        public static final int UMTS_VALUE = 3;
        public static final int UNKNOWN_MOBILE_SUBTYPE_VALUE = 0;
        private static final q.d<MobileSubtype> internalValueMap = new q.d<MobileSubtype>() { // from class: com.google.firebase.perf.v1.NetworkConnectionInfo.MobileSubtype.1
            @Override // com.google.protobuf.q.d
            public MobileSubtype findValueByNumber(int i) {
                return MobileSubtype.forNumber(i);
            }
        };
        private final int value;

        public static final class MobileSubtypeVerifier implements q.e {
            static final q.e INSTANCE = new MobileSubtypeVerifier();

            private MobileSubtypeVerifier() {
            }

            @Override // com.google.protobuf.q.e
            public boolean isInRange(int i) {
                return MobileSubtype.forNumber(i) != null;
            }
        }

        MobileSubtype(int i) {
            this.value = i;
        }

        public static MobileSubtype forNumber(int i) {
            if (i == 100) {
                return COMBINED;
            }
            switch (i) {
                case 0:
                    return UNKNOWN_MOBILE_SUBTYPE;
                case 1:
                    return GPRS;
                case 2:
                    return EDGE;
                case 3:
                    return UMTS;
                case 4:
                    return CDMA;
                case 5:
                    return EVDO_0;
                case 6:
                    return EVDO_A;
                case 7:
                    return RTT;
                case 8:
                    return HSDPA;
                case 9:
                    return HSUPA;
                case 10:
                    return HSPA;
                case 11:
                    return IDEN;
                case 12:
                    return EVDO_B;
                case 13:
                    return LTE;
                case 14:
                    return EHRPD;
                case 15:
                    return HSPAP;
                case 16:
                    return GSM;
                case 17:
                    return TD_SCDMA;
                case 18:
                    return IWLAN;
                case 19:
                    return LTE_CA;
                default:
                    return null;
            }
        }

        public static q.d<MobileSubtype> internalGetValueMap() {
            return internalValueMap;
        }

        public static q.e internalGetVerifier() {
            return MobileSubtypeVerifier.INSTANCE;
        }

        @Override // com.google.protobuf.q.c
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static MobileSubtype valueOf(int i) {
            return forNumber(i);
        }
    }

    public enum NetworkType implements q.c {
        NONE(-1),
        MOBILE(0),
        WIFI(1),
        MOBILE_MMS(2),
        MOBILE_SUPL(3),
        MOBILE_DUN(4),
        MOBILE_HIPRI(5),
        WIMAX(6),
        BLUETOOTH(7),
        DUMMY(8),
        ETHERNET(9),
        MOBILE_FOTA(10),
        MOBILE_IMS(11),
        MOBILE_CBS(12),
        WIFI_P2P(13),
        MOBILE_IA(14),
        MOBILE_EMERGENCY(15),
        PROXY(16),
        VPN(17);

        public static final int BLUETOOTH_VALUE = 7;
        public static final int DUMMY_VALUE = 8;
        public static final int ETHERNET_VALUE = 9;
        public static final int MOBILE_CBS_VALUE = 12;
        public static final int MOBILE_DUN_VALUE = 4;
        public static final int MOBILE_EMERGENCY_VALUE = 15;
        public static final int MOBILE_FOTA_VALUE = 10;
        public static final int MOBILE_HIPRI_VALUE = 5;
        public static final int MOBILE_IA_VALUE = 14;
        public static final int MOBILE_IMS_VALUE = 11;
        public static final int MOBILE_MMS_VALUE = 2;
        public static final int MOBILE_SUPL_VALUE = 3;
        public static final int MOBILE_VALUE = 0;
        public static final int NONE_VALUE = -1;
        public static final int PROXY_VALUE = 16;
        public static final int VPN_VALUE = 17;
        public static final int WIFI_P2P_VALUE = 13;
        public static final int WIFI_VALUE = 1;
        public static final int WIMAX_VALUE = 6;
        private static final q.d<NetworkType> internalValueMap = new q.d<NetworkType>() { // from class: com.google.firebase.perf.v1.NetworkConnectionInfo.NetworkType.1
            @Override // com.google.protobuf.q.d
            public NetworkType findValueByNumber(int i) {
                return NetworkType.forNumber(i);
            }
        };
        private final int value;

        public static final class NetworkTypeVerifier implements q.e {
            static final q.e INSTANCE = new NetworkTypeVerifier();

            private NetworkTypeVerifier() {
            }

            @Override // com.google.protobuf.q.e
            public boolean isInRange(int i) {
                return NetworkType.forNumber(i) != null;
            }
        }

        NetworkType(int i) {
            this.value = i;
        }

        public static NetworkType forNumber(int i) {
            switch (i) {
                case -1:
                    return NONE;
                case 0:
                    return MOBILE;
                case 1:
                    return WIFI;
                case 2:
                    return MOBILE_MMS;
                case 3:
                    return MOBILE_SUPL;
                case 4:
                    return MOBILE_DUN;
                case 5:
                    return MOBILE_HIPRI;
                case 6:
                    return WIMAX;
                case 7:
                    return BLUETOOTH;
                case 8:
                    return DUMMY;
                case 9:
                    return ETHERNET;
                case 10:
                    return MOBILE_FOTA;
                case 11:
                    return MOBILE_IMS;
                case 12:
                    return MOBILE_CBS;
                case 13:
                    return WIFI_P2P;
                case 14:
                    return MOBILE_IA;
                case 15:
                    return MOBILE_EMERGENCY;
                case 16:
                    return PROXY;
                case 17:
                    return VPN;
                default:
                    return null;
            }
        }

        public static q.d<NetworkType> internalGetValueMap() {
            return internalValueMap;
        }

        public static q.e internalGetVerifier() {
            return NetworkTypeVerifier.INSTANCE;
        }

        @Override // com.google.protobuf.q.c
        public final int getNumber() {
            return this.value;
        }

        @Deprecated
        public static NetworkType valueOf(int i) {
            return forNumber(i);
        }
    }

    public static Builder newBuilder(NetworkConnectionInfo networkConnectionInfo) {
        return DEFAULT_INSTANCE.createBuilder(networkConnectionInfo);
    }

    public static NetworkConnectionInfo parseDelimitedFrom(InputStream inputStream, j jVar) {
        return (NetworkConnectionInfo) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
    }

    public static NetworkConnectionInfo parseFrom(ByteBuffer byteBuffer, j jVar) {
        return (NetworkConnectionInfo) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
    }

    public static NetworkConnectionInfo parseFrom(fx0 fx0Var) {
        return (NetworkConnectionInfo) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
    }

    public static NetworkConnectionInfo parseFrom(fx0 fx0Var, j jVar) {
        return (NetworkConnectionInfo) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
    }

    public static NetworkConnectionInfo parseFrom(byte[] bArr) {
        return (NetworkConnectionInfo) o.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static NetworkConnectionInfo parseFrom(byte[] bArr, j jVar) {
        return (NetworkConnectionInfo) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
    }

    public static NetworkConnectionInfo parseFrom(InputStream inputStream) {
        return (NetworkConnectionInfo) o.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static NetworkConnectionInfo parseFrom(InputStream inputStream, j jVar) {
        return (NetworkConnectionInfo) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
    }

    public static NetworkConnectionInfo parseFrom(f fVar) {
        return (NetworkConnectionInfo) o.parseFrom(DEFAULT_INSTANCE, fVar);
    }

    public static NetworkConnectionInfo parseFrom(f fVar, j jVar) {
        return (NetworkConnectionInfo) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
    }
}
