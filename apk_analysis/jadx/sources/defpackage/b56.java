package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class b56 implements pz3 {
    public final String a;
    public final a b;
    public final int c;
    public final int d;
    public final String e;

    public static final class a {
        public final String a;
        public final int b;
        public final int c;

        public a(String str, int i, int i2) {
            str.getClass();
            this.a = str;
            this.b = i;
            this.c = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && this.b == aVar.b && this.c == aVar.c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.c) + ej0.b(this.b, this.a.hashCode() * 31, 31);
        }

        public final String toString() {
            return l2.e(mz0.a(this.b, "Badge(text=", this.a, ", textColor=", ", backgroundColor="), ")", this.c);
        }
    }

    public b56(String str, a aVar, int i, int i2, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = aVar;
        this.c = i;
        this.d = i2;
        this.e = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b56)) {
            return false;
        }
        b56 b56Var = (b56) obj;
        return aa4.e(this.a, b56Var.a) && this.b.equals(b56Var.b) && this.c == b56Var.c && this.d == b56Var.d && aa4.e(this.e, b56Var.e);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.d + this.c + this.b + this.e;
    }

    public final int hashCode() {
        return this.e.hashCode() + ej0.b(this.d, ej0.b(this.c, (this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31), 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PersonalDataFormBannerViewModel(text=");
        sb.append(this.a);
        sb.append(", badge=");
        sb.append(this.b);
        sb.append(", backgroundColor=");
        gg.e(sb, this.c, ", textColor=", this.d, ", iconUrl=");
        return me0.d(sb, this.e, ")");
    }
}
