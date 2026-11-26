package defpackage;

import com.google.protobuf.o;
import com.google.protobuf.q;

/* JADX INFO: loaded from: classes4.dex */
public final class j21 extends o<j21, b> implements ha5 {
    public static final int ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER = 1;
    private static final j21 DEFAULT_INSTANCE;
    private static volatile x36<j21> PARSER;
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

    public static final class b extends o.a<j21, b> implements ha5 {
        public b() {
            super(j21.DEFAULT_INSTANCE);
        }

        public final void b(i21 i21Var) {
            copyOnWrite();
            j21 j21Var = (j21) this.instance;
            int i = j21.ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER;
            j21Var.b(i21Var);
        }
    }

    static {
        j21 j21Var = new j21();
        DEFAULT_INSTANCE = j21Var;
        o.registerDefaultInstance(j21.class, j21Var);
    }

    public static j21 d() {
        return DEFAULT_INSTANCE;
    }

    public static b e() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static b f(j21 j21Var) {
        return DEFAULT_INSTANCE.createBuilder(j21Var);
    }

    public static x36<j21> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public final void b(i21 i21Var) {
        i21Var.getClass();
        q.j<i21> jVar = this.alreadySeenCampaigns_;
        if (!jVar.isModifiable()) {
            this.alreadySeenCampaigns_ = o.mutableCopy(jVar);
        }
        this.alreadySeenCampaigns_.add(i21Var);
    }

    public final q.j c() {
        return this.alreadySeenCampaigns_;
    }

    @Override // com.google.protobuf.o
    public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
        x36 bVar;
        switch (a.a[fVar.ordinal()]) {
            case 1:
                return new j21();
            case 2:
                return new b();
            case 3:
                return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"alreadySeenCampaigns_", i21.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x36<j21> x36Var = PARSER;
                if (x36Var != null) {
                    return x36Var;
                }
                synchronized (j21.class) {
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
}
