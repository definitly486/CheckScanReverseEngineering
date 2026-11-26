package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class p51 {
    public static final ct6<Object> h = new ct6<>();
    public static final ct6<a> i = new ct6<>();
    public final u51 a;
    public final j5 b;
    public final jf6 c;
    public final hi0<Boolean> d = new hi0<>();
    public final z68 e;
    public final gy6 f;
    public int g;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a ToBankCard;
        public static final a ToPhone;

        static {
            a aVar = new a("ToBankCard", 0);
            ToBankCard = aVar;
            a aVar2 = new a("ToPhone", 1);
            ToPhone = aVar2;
            $VALUES = new a[]{aVar, aVar2};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[fd3.a.values().length];
            try {
                iArr[fd3.a.BONUSES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[fd3.a.RECEIPTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[fd3.a.PRODUCTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[fd3.a.BALANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public p51(u51 u51Var, j5 j5Var, jf6 jf6Var) {
        this.a = u51Var;
        this.b = j5Var;
        this.c = jf6Var;
        z68 z68VarA = px.a(null);
        this.e = z68VarA;
        this.f = bf3.b(z68VarA);
        this.g = -1;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d1, code lost:
    
        if (r6.k(r0, r2) == r3) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(defpackage.f02 r18) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.p51.a(f02):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0069, code lost:
    
        if (r1 == r3) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(defpackage.f02 r18) {
        /*
            Method dump skipped, instruction units count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.p51.b(f02):java.lang.Object");
    }
}
