package defpackage;

import com.google.protobuf.o;
import com.google.protobuf.q;

/* JADX INFO: loaded from: classes4.dex */
public final class f73 extends o<f73, b> implements ha5 {
    private static final f73 DEFAULT_INSTANCE;
    public static final int EXPIRATION_EPOCH_TIMESTAMP_MILLIS_FIELD_NUMBER = 2;
    public static final int MESSAGES_FIELD_NUMBER = 1;
    private static volatile x36<f73> PARSER;
    private long expirationEpochTimestampMillis_;
    private q.j<m21> messages_ = o.emptyProtobufList();

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

    public static final class b extends o.a<f73, b> implements ha5 {
        public b() {
            super(f73.DEFAULT_INSTANCE);
        }

        public final void b(long j) {
            copyOnWrite();
            f73 f73Var = (f73) this.instance;
            int i = f73.MESSAGES_FIELD_NUMBER;
            f73Var.f(j);
        }
    }

    static {
        f73 f73Var = new f73();
        DEFAULT_INSTANCE = f73Var;
        o.registerDefaultInstance(f73.class, f73Var);
    }

    public static f73 b() {
        return DEFAULT_INSTANCE;
    }

    public static b e() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static x36<f73> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public final long c() {
        return this.expirationEpochTimestampMillis_;
    }

    public final q.j d() {
        return this.messages_;
    }

    @Override // com.google.protobuf.o
    public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
        x36 bVar;
        switch (a.a[fVar.ordinal()]) {
            case 1:
                return new f73();
            case 2:
                return new b();
            case 3:
                return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0002", new Object[]{"messages_", m21.class, "expirationEpochTimestampMillis_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x36<f73> x36Var = PARSER;
                if (x36Var != null) {
                    return x36Var;
                }
                synchronized (f73.class) {
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

    public final void f(long j) {
        this.expirationEpochTimestampMillis_ = j;
    }
}
