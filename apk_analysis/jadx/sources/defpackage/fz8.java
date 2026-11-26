package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fz8 {
    public final a a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a Fail;
        public static final a Success;

        static {
            a aVar = new a("Success", 0);
            Success = aVar;
            a aVar2 = new a("Fail", 1);
            Fail = aVar2;
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

    public fz8(a aVar, String str, String str2, String str3, String str4) {
        aVar.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        this.a = aVar;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fz8)) {
            return false;
        }
        fz8 fz8Var = (fz8) obj;
        return this.a == fz8Var.a && aa4.e(this.b, fz8Var.b) && aa4.e(this.c, fz8Var.c) && aa4.e(this.d, fz8Var.d) && aa4.e(this.e, fz8Var.e);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
        String str = this.e;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransferCardResult(status=");
        sb.append(this.a);
        sb.append(", dateTime=");
        sb.append(this.b);
        sb.append(", valueText=");
        kv2.c(sb, this.c, ", titleValueText=", this.d, ", message=");
        return me0.d(sb, this.e, ")");
    }
}
