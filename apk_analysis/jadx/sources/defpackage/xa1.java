package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class xa1 implements pz3 {
    public final a a;
    public final String b;
    public final boolean c;
    public final boolean d;
    public final boolean e;

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

    public xa1(a aVar, String str, boolean z, boolean z2, boolean z3) {
        aVar.getClass();
        str.getClass();
        this.a = aVar;
        this.b = str;
        this.c = z;
        this.d = z2;
        this.e = z3;
    }

    public static xa1 d(xa1 xa1Var, boolean z, boolean z2, int i) {
        a aVar = xa1Var.a;
        String str = xa1Var.b;
        if ((i & 4) != 0) {
            z = xa1Var.c;
        }
        boolean z3 = z;
        if ((i & 8) != 0) {
            z2 = xa1Var.d;
        }
        boolean z4 = xa1Var.e;
        aVar.getClass();
        str.getClass();
        return new xa1(aVar, str, z3, z2, z4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xa1)) {
            return false;
        }
        xa1 xa1Var = (xa1) obj;
        return this.a == xa1Var.a && aa4.e(this.b, xa1Var.b) && this.c == xa1Var.c && this.d == xa1Var.d && this.e == xa1Var.e;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d + this.e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.e) + tg.c(tg.c(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CheckboxTaskButtonViewModel(id=");
        sb.append(this.a);
        sb.append(", title=");
        sb.append(this.b);
        sb.append(", isEnabled=");
        sb.append(this.c);
        sb.append(", isLoading=");
        sb.append(this.d);
        sb.append(", isRegistrationRequired=");
        return dh.e(sb, this.e, ")");
    }
}
