package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class qq6 implements pz3 {
    public final a a;
    public final int b;
    public final String c;
    public final String d;
    public final boolean e;
    public final boolean f;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a Activate;
        public static final a Reward;

        static {
            a aVar = new a("Activate", 0);
            Activate = aVar;
            a aVar2 = new a("Reward", 1);
            Reward = aVar2;
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

    public qq6(a aVar, int i, String str, String str2, boolean z, boolean z2) {
        aVar.getClass();
        str2.getClass();
        this.a = aVar;
        this.b = i;
        this.c = str;
        this.d = str2;
        this.e = z;
        this.f = z2;
    }

    public static qq6 d(qq6 qq6Var, boolean z) {
        a aVar = qq6Var.a;
        int i = qq6Var.b;
        String str = qq6Var.c;
        String str2 = qq6Var.d;
        boolean z2 = qq6Var.e;
        aVar.getClass();
        str2.getClass();
        return new qq6(aVar, i, str, str2, z2, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qq6)) {
            return false;
        }
        qq6 qq6Var = (qq6) obj;
        return this.a == qq6Var.a && this.b == qq6Var.b && aa4.e(this.c, qq6Var.c) && aa4.e(this.d, qq6Var.d) && this.e == qq6Var.e && this.f == qq6Var.f;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.d + this.e + this.f + this.b + false;
    }

    public final int hashCode() {
        int iB = ej0.b(this.b, this.a.hashCode() * 31, 31);
        String str = this.c;
        return Boolean.hashCode(false) + tg.c(tg.c(zg.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d), 31, this.e), 31, this.f);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PromocodeTaskButtonViewModel(id=");
        sb.append(this.a);
        sb.append(", promocodeId=");
        sb.append(this.b);
        sb.append(", url=");
        kv2.c(sb, this.c, ", title=", this.d, ", isEnabled=");
        sb.append(this.e);
        sb.append(", isLoading=");
        sb.append(this.f);
        sb.append(", hasPromocode=false)");
        return sb.toString();
    }
}
