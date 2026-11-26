package defpackage;

import com.google.firebase.inappmessaging.ExperimentPayloadProto;
import com.google.protobuf.o;

/* JADX INFO: loaded from: classes4.dex */
public final class l21 extends o<l21, a> implements ha5 {
    public static final int CAMPAIGN_END_TIME_MILLIS_FIELD_NUMBER = 4;
    public static final int CAMPAIGN_ID_FIELD_NUMBER = 1;
    public static final int CAMPAIGN_NAME_FIELD_NUMBER = 5;
    public static final int CAMPAIGN_START_TIME_MILLIS_FIELD_NUMBER = 3;
    private static final l21 DEFAULT_INSTANCE;
    public static final int EXPERIMENT_PAYLOAD_FIELD_NUMBER = 2;
    private static volatile x36<l21> PARSER;
    private int bitField0_;
    private long campaignEndTimeMillis_;
    private String campaignId_ = "";
    private String campaignName_ = "";
    private long campaignStartTimeMillis_;
    private ExperimentPayloadProto.ExperimentPayload experimentPayload_;

    public static final class a extends o.a<l21, a> implements ha5 {
    }

    static {
        l21 l21Var = new l21();
        DEFAULT_INSTANCE = l21Var;
        o.registerDefaultInstance(l21.class, l21Var);
    }

    public static l21 e() {
        return DEFAULT_INSTANCE;
    }

    public final long b() {
        return this.campaignEndTimeMillis_;
    }

    public final String c() {
        return this.campaignName_;
    }

    public final long d() {
        return this.campaignStartTimeMillis_;
    }

    @Override // com.google.protobuf.o
    public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
        x36 bVar;
        switch (k21.a[fVar.ordinal()]) {
            case 1:
                return new l21();
            case 2:
                return new a(DEFAULT_INSTANCE);
            case 3:
                return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002ဉ\u0000\u0003\u0002\u0004\u0002\u0005Ȉ", new Object[]{"bitField0_", "campaignId_", "experimentPayload_", "campaignStartTimeMillis_", "campaignEndTimeMillis_", "campaignName_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x36<l21> x36Var = PARSER;
                if (x36Var != null) {
                    return x36Var;
                }
                synchronized (l21.class) {
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

    public final ExperimentPayloadProto.ExperimentPayload f() {
        ExperimentPayloadProto.ExperimentPayload experimentPayload = this.experimentPayload_;
        return experimentPayload == null ? ExperimentPayloadProto.ExperimentPayload.getDefaultInstance() : experimentPayload;
    }

    public final String getCampaignId() {
        return this.campaignId_;
    }
}
