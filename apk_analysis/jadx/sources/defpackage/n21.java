package defpackage;

import com.google.protobuf.o;

/* JADX INFO: loaded from: classes4.dex */
public final class n21 extends o<n21, a> implements ha5 {
    public static final int CAMPAIGN_END_TIME_MILLIS_FIELD_NUMBER = 4;
    public static final int CAMPAIGN_ID_FIELD_NUMBER = 1;
    public static final int CAMPAIGN_NAME_FIELD_NUMBER = 5;
    public static final int CAMPAIGN_START_TIME_MILLIS_FIELD_NUMBER = 3;
    private static final n21 DEFAULT_INSTANCE;
    public static final int EXPERIMENTAL_CAMPAIGN_ID_FIELD_NUMBER = 2;
    private static volatile x36<n21> PARSER;
    private long campaignEndTimeMillis_;
    private long campaignStartTimeMillis_;
    private String campaignId_ = "";
    private String experimentalCampaignId_ = "";
    private String campaignName_ = "";

    public static final class a extends o.a<n21, a> implements ha5 {
    }

    static {
        n21 n21Var = new n21();
        DEFAULT_INSTANCE = n21Var;
        o.registerDefaultInstance(n21.class, n21Var);
    }

    public static n21 e() {
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
                return new n21();
            case 2:
                return new a(DEFAULT_INSTANCE);
            case 3:
                return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0002\u0004\u0002\u0005Ȉ", new Object[]{"campaignId_", "experimentalCampaignId_", "campaignStartTimeMillis_", "campaignEndTimeMillis_", "campaignName_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x36<n21> x36Var = PARSER;
                if (x36Var != null) {
                    return x36Var;
                }
                synchronized (n21.class) {
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

    public final String getCampaignId() {
        return this.campaignId_;
    }
}
