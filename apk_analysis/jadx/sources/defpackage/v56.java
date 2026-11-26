package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class v56 implements pz3 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final a e;
    public final String f;
    public final b g;

    public static final class a {
        public final String a;

        public a(String str) {
            str.getClass();
            this.a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && aa4.e(this.a, ((a) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("Badge(text=", this.a, ")");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final /* synthetic */ b[] $VALUES;
        public static final b NotSet;
        public static final b Set;

        static {
            b bVar = new b("Set", 0);
            Set = bVar;
            b bVar2 = new b("NotSet", 1);
            NotSet = bVar2;
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

    public v56(String str, String str2, String str3, String str4, a aVar, String str5, b bVar) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        bVar.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = aVar;
        this.f = str5;
        this.g = bVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v56)) {
            return false;
        }
        v56 v56Var = (v56) obj;
        return aa4.e(this.a, v56Var.a) && aa4.e(this.b, v56Var.b) && aa4.e(this.c, v56Var.c) && aa4.e(this.d, v56Var.d) && aa4.e(this.e, v56Var.e) && aa4.e(this.f, v56Var.f) && this.g == v56Var.g;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.b + this.c + this.d + this.e + this.f + this.g;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        a aVar = this.e;
        int iHashCode2 = (iHashCode + (aVar == null ? 0 : aVar.a.hashCode())) * 31;
        String str2 = this.f;
        return this.g.hashCode() + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return "email_banner";
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("PersonalDataFormEmailBannerViewModel(imageUrl=", this.a, ", title=", this.b, ", description=");
        kv2.c(sbD, this.c, ", buttonText=", this.d, ", badge=");
        sbD.append(this.e);
        sbD.append(", email=");
        sbD.append(this.f);
        sbD.append(", status=");
        sbD.append(this.g);
        sbD.append(")");
        return sbD.toString();
    }
}
