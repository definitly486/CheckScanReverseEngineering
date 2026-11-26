package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class xb0 {
    public final a a;
    public final String b;
    public final int c;
    public final String d;

    public static final class a {
        public final String a;
        public final String b;
        public final String c;

        public a(String str, String str2, String str3) {
            str2.getClass();
            str3.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c);
        }

        public final int hashCode() {
            String str = this.a;
            return this.c.hashCode() + zg.b((str == null ? 0 : str.hashCode()) * 31, 31, this.b);
        }

        public final String toString() {
            return me0.d(ad2.d("Button(tapAction=", this.a, ", title=", this.b, ", url="), this.c, ")");
        }
    }

    public xb0(a aVar, String str, int i, String str2) {
        str2.getClass();
        this.a = aVar;
        this.b = str;
        this.c = i;
        this.d = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xb0)) {
            return false;
        }
        xb0 xb0Var = (xb0) obj;
        return aa4.e(this.a, xb0Var.a) && aa4.e(this.b, xb0Var.b) && this.c == xb0Var.c && aa4.e(this.d, xb0Var.d);
    }

    public final int hashCode() {
        a aVar = this.a;
        int iHashCode = (aVar == null ? 0 : aVar.hashCode()) * 31;
        String str = this.b;
        return this.d.hashCode() + ej0.b(this.c, (iHashCode + (str != null ? str.hashCode() : 0)) * 31, 31);
    }

    public final String toString() {
        return "Banner(button=" + this.a + ", description=" + this.b + ", id=" + this.c + ", title=" + this.d + ")";
    }
}
