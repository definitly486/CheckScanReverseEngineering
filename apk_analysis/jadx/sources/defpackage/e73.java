package defpackage;

import com.google.protobuf.o;
import com.google.protobuf.q;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class e73 extends o<e73, b> implements ha5 {
    public static final int ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER = 3;
    public static final int CLIENT_SIGNALS_FIELD_NUMBER = 4;
    private static final e73 DEFAULT_INSTANCE;
    private static volatile x36<e73> PARSER = null;
    public static final int PROJECT_NUMBER_FIELD_NUMBER = 1;
    public static final int REQUESTING_CLIENT_APP_FIELD_NUMBER = 2;
    private int bitField0_;
    private bm1 clientSignals_;
    private ql1 requestingClientApp_;
    private String projectNumber_ = "";
    private q.j<i21> alreadySeenCampaigns_ = o.emptyProtobufList();

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

    public static final class b extends o.a<e73, b> implements ha5 {
        public b() {
            super(e73.DEFAULT_INSTANCE);
        }

        public final void b(q.j jVar) {
            copyOnWrite();
            e73 e73Var = (e73) this.instance;
            int i = e73.PROJECT_NUMBER_FIELD_NUMBER;
            e73Var.b(jVar);
        }

        public final void c(bm1 bm1Var) {
            copyOnWrite();
            e73 e73Var = (e73) this.instance;
            int i = e73.PROJECT_NUMBER_FIELD_NUMBER;
            e73Var.e(bm1Var);
        }

        public final void d(String str) {
            copyOnWrite();
            e73 e73Var = (e73) this.instance;
            int i = e73.PROJECT_NUMBER_FIELD_NUMBER;
            e73Var.setProjectNumber(str);
        }

        public final void e(ql1 ql1Var) {
            copyOnWrite();
            e73 e73Var = (e73) this.instance;
            int i = e73.PROJECT_NUMBER_FIELD_NUMBER;
            e73Var.f(ql1Var);
        }
    }

    static {
        e73 e73Var = new e73();
        DEFAULT_INSTANCE = e73Var;
        o.registerDefaultInstance(e73.class, e73Var);
    }

    public static e73 c() {
        return DEFAULT_INSTANCE;
    }

    public static b d() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public final void b(Iterable<? extends i21> iterable) {
        q.j<i21> jVar = this.alreadySeenCampaigns_;
        if (!jVar.isModifiable()) {
            this.alreadySeenCampaigns_ = o.mutableCopy(jVar);
        }
        com.google.protobuf.a.addAll((Iterable) iterable, (List) this.alreadySeenCampaigns_);
    }

    @Override // com.google.protobuf.o
    public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
        x36 bVar;
        switch (a.a[fVar.ordinal()]) {
            case 1:
                return new e73();
            case 2:
                return new b();
            case 3:
                return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001Ȉ\u0002ဉ\u0000\u0003\u001b\u0004ဉ\u0001", new Object[]{"bitField0_", "projectNumber_", "requestingClientApp_", "alreadySeenCampaigns_", i21.class, "clientSignals_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x36<e73> x36Var = PARSER;
                if (x36Var != null) {
                    return x36Var;
                }
                synchronized (e73.class) {
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

    public final void e(bm1 bm1Var) {
        bm1Var.getClass();
        this.clientSignals_ = bm1Var;
        this.bitField0_ |= 2;
    }

    public final void f(ql1 ql1Var) {
        ql1Var.getClass();
        this.requestingClientApp_ = ql1Var;
        this.bitField0_ |= 1;
    }

    public final void setProjectNumber(String str) {
        str.getClass();
        this.projectNumber_ = str;
    }
}
