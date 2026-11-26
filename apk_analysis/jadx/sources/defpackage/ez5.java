package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ez5 implements pz3 {
    public final long a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final m88 f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final qy5 k;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[qy5.values().length];
            try {
                iArr[qy5.CARD_OPERATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    public ez5(long j, String str, String str2, String str3, String str4, m88 m88Var, String str5, String str6, String str7, String str8, qy5 qy5Var) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        m88Var.getClass();
        qy5Var.getClass();
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = m88Var;
        this.g = str5;
        this.h = str6;
        this.i = str7;
        this.j = str8;
        this.k = qy5Var;
    }

    public final String d() {
        int i = a.a[this.k.ordinal()];
        String str = this.g;
        if (i != 1) {
            return str == null ? "" : str;
        }
        m88 m88Var = m88.PENDING;
        m88 m88Var2 = this.f;
        return (m88Var2 == m88Var || m88Var2 == m88.UNKNOWN || str == null) ? "" : str;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d + this.e + this.g + this.h;
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Long.valueOf(this.a);
    }
}
