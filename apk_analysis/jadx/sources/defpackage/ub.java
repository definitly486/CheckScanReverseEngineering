package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class ub implements pz3 {
    public final a a;
    public final String b;
    public final boolean c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a SMS;
        public static final a USER;

        static {
            a aVar = new a("USER", 0);
            USER = aVar;
            a aVar2 = new a("SMS", 1);
            SMS = aVar2;
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

    public ub(a aVar, String str, boolean z) {
        aVar.getClass();
        this.a = aVar;
        this.b = str;
        this.c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ub)) {
            return false;
        }
        ub ubVar = (ub) obj;
        return this.a == ubVar.a && this.b.equals(ubVar.b) && this.c == ubVar.c;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AgreementViewModel(key=");
        sb.append(this.a);
        sb.append(", text=");
        sb.append(this.b);
        sb.append(", isChecked=");
        return dh.e(sb, this.c, ")");
    }
}
