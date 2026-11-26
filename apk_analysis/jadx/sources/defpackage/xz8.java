package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class xz8 {
    public final b a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final a f;

    public static final class a {
        public final String a;
        public final String b;
        public final String c;
        public final C0360a d;
        public final C0360a e;

        /* JADX INFO: renamed from: xz8$a$a, reason: collision with other inner class name */
        public static final class C0360a {
            public final String a;
            public final String b;

            public C0360a(String str, String str2) {
                str.getClass();
                this.a = str;
                this.b = str2;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0360a)) {
                    return false;
                }
                C0360a c0360a = (C0360a) obj;
                return aa4.e(this.a, c0360a.a) && aa4.e(this.b, c0360a.b);
            }

            public final int hashCode() {
                int iHashCode = this.a.hashCode() * 31;
                String str = this.b;
                return iHashCode + (str == null ? 0 : str.hashCode());
            }

            public final String toString() {
                return n2.d("Button(title=", this.a, ", deeplink=", this.b, ")");
            }
        }

        public a(String str, String str2, String str3, C0360a c0360a, C0360a c0360a2) {
            str2.getClass();
            str3.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = c0360a;
            this.e = c0360a2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && this.d.equals(aVar.d) && aa4.e(this.e, aVar.e);
        }

        public final int hashCode() {
            String str = this.a;
            int iHashCode = (this.d.hashCode() + zg.b(zg.b((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31, this.c)) * 31;
            C0360a c0360a = this.e;
            return iHashCode + (c0360a != null ? c0360a.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbD = ad2.d("SheetResult(logoUrl=", this.a, ", title=", this.b, ", text=");
            sbD.append(this.c);
            sbD.append(", mainButton=");
            sbD.append(this.d);
            sbD.append(", secondaryButton=");
            sbD.append(this.e);
            sbD.append(")");
            return sbD.toString();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final /* synthetic */ b[] $VALUES;
        public static final b Fail;
        public static final b Success;

        static {
            b bVar = new b("Success", 0);
            Success = bVar;
            b bVar2 = new b("Fail", 1);
            Fail = bVar2;
            $VALUES = new b[]{bVar, bVar2};
        }

        public b() {
            throw null;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }
    }

    public xz8(b bVar, String str, String str2, String str3, String str4, a aVar) {
        bVar.getClass();
        str.getClass();
        str2.getClass();
        this.a = bVar;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = aVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xz8)) {
            return false;
        }
        xz8 xz8Var = (xz8) obj;
        return this.a == xz8Var.a && aa4.e(this.b, xz8Var.b) && aa4.e(this.c, xz8Var.c) && aa4.e(this.d, xz8Var.d) && aa4.e(this.e, xz8Var.e) && aa4.e(this.f, xz8Var.f);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.e;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        a aVar = this.f;
        return iHashCode2 + (aVar != null ? aVar.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransferPhoneResult(status=");
        sb.append(this.a);
        sb.append(", dateTime=");
        sb.append(this.b);
        sb.append(", valueText=");
        kv2.c(sb, this.c, ", titleValueText=", this.d, ", message=");
        sb.append(this.e);
        sb.append(", sheetResult=");
        sb.append(this.f);
        sb.append(")");
        return sb.toString();
    }
}
