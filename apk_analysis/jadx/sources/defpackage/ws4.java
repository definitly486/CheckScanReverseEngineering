package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ws4 implements pz3 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final b e;
    public final List<qs4> f;
    public final ArrayList g;
    public final a h;
    public final c i;
    public final pw7 j;

    public static final class a {
        public final String a;
        public final String b;
        public final String c;
        public final String d;

        public a(String str, String str2, String str3, String str4) {
            m2.e(str, str2, str3, str4);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
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
            return this.d.hashCode() + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        }

        public final String toString() {
            return dg.c(ad2.d("Badge(title=", this.a, ", logoUrl=", this.b, ", strokeColor="), this.c, ", textColor=", this.d, ")");
        }
    }

    public static final class b {
        public final String a;
        public final String b;

        public b(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("Button(title=", this.a, ", url=", this.b, ")");
        }
    }

    public static final class c {
        public final String a;
        public final String b;
        public final String c;

        public c(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.a.equals(cVar.a) && this.b.equals(cVar.b) && this.c.equals(cVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            return me0.d(ad2.d("Disclaimer(title=", this.a, ", description=", this.b, ", fullDescription="), this.c, ")");
        }
    }

    public ws4(int i, String str, String str2, String str3, b bVar, List list, ArrayList arrayList, a aVar, c cVar, pw7 pw7Var) {
        x7.b(str, str2, str3);
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = bVar;
        this.f = list;
        this.g = arrayList;
        this.h = aVar;
        this.i = cVar;
        this.j = pw7Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ws4)) {
            return false;
        }
        ws4 ws4Var = (ws4) obj;
        return this.a == ws4Var.a && aa4.e(this.b, ws4Var.b) && aa4.e(this.c, ws4Var.c) && aa4.e(this.d, ws4Var.d) && this.e.equals(ws4Var.e) && this.f.equals(ws4Var.f) && this.g.equals(ws4Var.g) && aa4.e(this.h, ws4Var.h) && aa4.e(this.i, ws4Var.i) && this.j.equals(ws4Var.j);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d + this.e + this.f + this.g + this.h;
    }

    public final int hashCode() {
        int iD = tg.d(this.g, e2.b(this.f, (this.e.hashCode() + zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d)) * 31, 31), 31);
        a aVar = this.h;
        int iHashCode = (iD + (aVar == null ? 0 : aVar.hashCode())) * 31;
        c cVar = this.i;
        return this.j.hashCode() + ((iHashCode + (cVar != null ? cVar.hashCode() : 0)) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "LoanPromoSelectCardViewModel(id=", ", title=", this.b, ", subtitle=");
        kv2.c(sbE, this.c, ", headerLogoUrl=", this.d, ", button=");
        sbE.append(this.e);
        sbE.append(", conditions=");
        sbE.append(this.f);
        sbE.append(", benefits=");
        sbE.append(this.g);
        sbE.append(", badge=");
        sbE.append(this.h);
        sbE.append(", disclaimers=");
        sbE.append(this.i);
        sbE.append(", analytics=");
        sbE.append(this.j);
        sbE.append(")");
        return sbE.toString();
    }
}
