package defpackage;

import com.google.protobuf.o;

/* JADX INFO: loaded from: classes4.dex */
public final class ql1 extends o<ql1, b> implements ha5 {
    public static final int APP_INSTANCE_ID_FIELD_NUMBER = 2;
    public static final int APP_INSTANCE_ID_TOKEN_FIELD_NUMBER = 3;
    private static final ql1 DEFAULT_INSTANCE;
    public static final int GMP_APP_ID_FIELD_NUMBER = 1;
    private static volatile x36<ql1> PARSER;
    private String gmpAppId_ = "";
    private String appInstanceId_ = "";
    private String appInstanceIdToken_ = "";

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

    public static final class b extends o.a<ql1, b> implements ha5 {
        public b() {
            super(ql1.DEFAULT_INSTANCE);
        }

        public final void b(String str) {
            copyOnWrite();
            ql1 ql1Var = (ql1) this.instance;
            int i = ql1.GMP_APP_ID_FIELD_NUMBER;
            ql1Var.setAppInstanceId(str);
        }

        public final void c(String str) {
            copyOnWrite();
            ql1 ql1Var = (ql1) this.instance;
            int i = ql1.GMP_APP_ID_FIELD_NUMBER;
            ql1Var.c(str);
        }

        public final void d(String str) {
            copyOnWrite();
            ql1 ql1Var = (ql1) this.instance;
            int i = ql1.GMP_APP_ID_FIELD_NUMBER;
            ql1Var.d(str);
        }
    }

    static {
        ql1 ql1Var = new ql1();
        DEFAULT_INSTANCE = ql1Var;
        o.registerDefaultInstance(ql1.class, ql1Var);
    }

    public static b b() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public final void c(String str) {
        str.getClass();
        this.appInstanceIdToken_ = str;
    }

    public final void d(String str) {
        str.getClass();
        this.gmpAppId_ = str;
    }

    @Override // com.google.protobuf.o
    public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
        x36 bVar;
        switch (a.a[fVar.ordinal()]) {
            case 1:
                return new ql1();
            case 2:
                return new b();
            case 3:
                return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"gmpAppId_", "appInstanceId_", "appInstanceIdToken_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x36<ql1> x36Var = PARSER;
                if (x36Var != null) {
                    return x36Var;
                }
                synchronized (ql1.class) {
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

    public final void setAppInstanceId(String str) {
        str.getClass();
        this.appInstanceId_ = str;
    }
}
