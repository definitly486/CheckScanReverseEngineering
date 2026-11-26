package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class na0 {
    public final b a;
    public final ArrayList b;
    public final a c;

    public static final class a {
        public final String a;
        public final String b;

        public a(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("Button(title=", this.a, ", url=", this.b, ")");
        }
    }

    public static final class b {
        public final String a;
        public final String b;
        public final String c;
        public final String d;

        public b(String str, String str2, String str3, String str4) {
            x7.b(str2, str3, str4);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c) && aa4.e(this.d, bVar.d);
        }

        public final int hashCode() {
            String str = this.a;
            return this.d.hashCode() + zg.b(zg.b((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31, this.c);
        }

        public final String toString() {
            return dg.c(ad2.d("Header(title=", this.a, ", subtitle=", this.b, ", imageUrl="), this.c, ", backgroundColor=", this.d, ")");
        }
    }

    public na0(b bVar, ArrayList arrayList, a aVar) {
        this.a = bVar;
        this.b = arrayList;
        this.c = aVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof na0)) {
            return false;
        }
        na0 na0Var = (na0) obj;
        return this.a.equals(na0Var.a) && this.b.equals(na0Var.b) && this.c.equals(na0Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + tg.d(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "BankLandingInfo(header=" + this.a + ", items=" + this.b + ", button=" + this.c + ")";
    }
}
