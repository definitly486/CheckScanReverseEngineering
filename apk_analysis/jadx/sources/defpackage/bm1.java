package defpackage;

import com.google.protobuf.o;

/* JADX INFO: loaded from: classes4.dex */
public final class bm1 extends o<bm1, a> implements ha5 {
    public static final int APP_VERSION_FIELD_NUMBER = 1;
    private static final bm1 DEFAULT_INSTANCE;
    public static final int LANGUAGE_CODE_FIELD_NUMBER = 3;
    private static volatile x36<bm1> PARSER = null;
    public static final int PLATFORM_VERSION_FIELD_NUMBER = 2;
    public static final int TIME_ZONE_FIELD_NUMBER = 4;
    private String appVersion_ = "";
    private String platformVersion_ = "";
    private String languageCode_ = "";
    private String timeZone_ = "";

    public static final class a extends o.a<bm1, a> implements ha5 {
        public a() {
            super(bm1.DEFAULT_INSTANCE);
        }

        public final void b(String str) {
            copyOnWrite();
            bm1 bm1Var = (bm1) this.instance;
            int i = bm1.APP_VERSION_FIELD_NUMBER;
            bm1Var.c(str);
        }

        public final void c(String str) {
            copyOnWrite();
            bm1 bm1Var = (bm1) this.instance;
            int i = bm1.APP_VERSION_FIELD_NUMBER;
            bm1Var.d(str);
        }

        public final void d(String str) {
            copyOnWrite();
            bm1 bm1Var = (bm1) this.instance;
            int i = bm1.APP_VERSION_FIELD_NUMBER;
            bm1Var.e(str);
        }

        public final void e(String str) {
            copyOnWrite();
            bm1 bm1Var = (bm1) this.instance;
            int i = bm1.APP_VERSION_FIELD_NUMBER;
            bm1Var.setTimeZone(str);
        }
    }

    static {
        bm1 bm1Var = new bm1();
        DEFAULT_INSTANCE = bm1Var;
        o.registerDefaultInstance(bm1.class, bm1Var);
    }

    public static a b() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public final void c(String str) {
        str.getClass();
        this.appVersion_ = str;
    }

    public final void d(String str) {
        str.getClass();
        this.languageCode_ = str;
    }

    @Override // com.google.protobuf.o
    public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
        x36 bVar;
        switch (am1.a[fVar.ordinal()]) {
            case 1:
                return new bm1();
            case 2:
                return new a();
            case 3:
                return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ", new Object[]{"appVersion_", "platformVersion_", "languageCode_", "timeZone_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x36<bm1> x36Var = PARSER;
                if (x36Var != null) {
                    return x36Var;
                }
                synchronized (bm1.class) {
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

    public final void e(String str) {
        str.getClass();
        this.platformVersion_ = str;
    }

    public final void setTimeZone(String str) {
        str.getClass();
        this.timeZone_ = str;
    }
}
