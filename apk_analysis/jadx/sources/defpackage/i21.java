package defpackage;

import com.google.protobuf.o;

/* JADX INFO: loaded from: classes4.dex */
public final class i21 extends o<i21, b> implements ha5 {
    public static final int CAMPAIGN_ID_FIELD_NUMBER = 1;
    private static final i21 DEFAULT_INSTANCE;
    public static final int IMPRESSION_TIMESTAMP_MILLIS_FIELD_NUMBER = 2;
    private static volatile x36<i21> PARSER;
    private String campaignId_ = "";
    private long impressionTimestampMillis_;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[o.f.values().length];
            a = iArr;
            try {
                iArr[o.f.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[o.f.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[o.f.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[o.f.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[o.f.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[o.f.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[o.f.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static final class b extends o.a<i21, b> implements ha5 {
        public b() {
            super(i21.DEFAULT_INSTANCE);
        }

        public final void b(String str) {
            copyOnWrite();
            i21 i21Var = (i21) this.instance;
            int i = i21.CAMPAIGN_ID_FIELD_NUMBER;
            i21Var.setCampaignId(str);
        }

        public final void d(long j) {
            copyOnWrite();
            i21 i21Var = (i21) this.instance;
            int i = i21.CAMPAIGN_ID_FIELD_NUMBER;
            i21Var.c(j);
        }
    }

    static {
        i21 i21Var = new i21();
        DEFAULT_INSTANCE = i21Var;
        o.registerDefaultInstance(i21.class, i21Var);
    }

    public static b b() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public final void c(long j) {
        this.impressionTimestampMillis_ = j;
    }

    @Override // com.google.protobuf.o
    public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
        x36 bVar;
        switch (a.a[fVar.ordinal()]) {
            case 1:
                return new i21();
            case 2:
                return new b();
            case 3:
                return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\u0002", new Object[]{"campaignId_", "impressionTimestampMillis_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x36<i21> x36Var = PARSER;
                if (x36Var != null) {
                    return x36Var;
                }
                synchronized (i21.class) {
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

    public final void setCampaignId(String str) {
        str.getClass();
        this.campaignId_ = str;
    }
}
