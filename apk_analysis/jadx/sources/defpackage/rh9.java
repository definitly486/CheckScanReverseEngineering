package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class rh9 implements so8 {
    public final int a;
    public final String b;
    public final String c;
    public final a d;
    public final String e;
    public final b f;
    public final fo0.c g;
    public final pw7 h;

    public static final class a {
        public final String a;
        public final String b;
        public final String c;
        public final Long d;

        public a(String str, String str2, String str3, Long l) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = l;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d);
        }

        public final int hashCode() {
            int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
            String str = this.c;
            int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
            Long l = this.d;
            return iHashCode + (l != null ? l.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbD = ad2.d("Button(leftText=", this.a, ", rightText=", this.b, ", pointsUrl=");
            sbD.append(this.c);
            sbD.append(", newBonusEndRealtime=");
            sbD.append(this.d);
            sbD.append(")");
            return sbD.toString();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final /* synthetic */ b[] $VALUES;
        public static final b AVAILABLE;
        public static final b COMPLETED;

        static {
            b bVar = new b("AVAILABLE", 0);
            AVAILABLE = bVar;
            b bVar2 = new b("COMPLETED", 1);
            COMPLETED = bVar2;
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

    public rh9(int i, String str, String str2, a aVar, String str3, b bVar, fo0.c cVar, pw7 pw7Var) {
        str.getClass();
        str2.getClass();
        bVar.getClass();
        cVar.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = aVar;
        this.e = str3;
        this.f = bVar;
        this.g = cVar;
        this.h = pw7Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rh9)) {
            return false;
        }
        rh9 rh9Var = (rh9) obj;
        return this.a == rh9Var.a && aa4.e(this.b, rh9Var.b) && aa4.e(this.c, rh9Var.c) && aa4.e(this.d, rh9Var.d) && aa4.e(this.e, rh9Var.e) && this.f == rh9Var.f && this.g == rh9Var.g && this.h.equals(rh9Var.h);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.g + this.d + this.f + this.e;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
        a aVar = this.d;
        int iHashCode = (iB + (aVar == null ? 0 : aVar.hashCode())) * 31;
        String str = this.e;
        return this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((iHashCode + (str != null ? str.hashCode() : 0)) * 31)) * 31)) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "WideBonusPointsViewModel(id=", ", title=", this.b, ", imageUrl=");
        sbE.append(this.c);
        sbE.append(", button=");
        sbE.append(this.d);
        sbE.append(", secondaryButton=");
        sbE.append(this.e);
        sbE.append(", state=");
        sbE.append(this.f);
        sbE.append(", type=");
        sbE.append(this.g);
        sbE.append(", analytics=");
        sbE.append(this.h);
        sbE.append(")");
        return sbE.toString();
    }
}
