package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class xa implements pz3 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final c e;
    public final d f;
    public final h g;
    public final f h;
    public final b i;
    public final a j;
    public final pw7 k;

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
        public final String d;

        public c(String str, String str2, String str3, String str4) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.a.equals(cVar.a) && this.b.equals(cVar.b) && this.c.equals(cVar.c) && this.d.equals(cVar.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        }

        public final String toString() {
            return dg.c(ad2.d("CardInfo(firstLabel=", this.a, ", firstValue=", this.b, ", secondLabel="), this.c, ", secondValue=", this.d, ")");
        }
    }

    public static final class d {
        public final String a;
        public final String b;
        public final ArrayList c;

        public d(String str, String str2, ArrayList arrayList) {
            str.getClass();
            this.a = str;
            this.b = str2;
            this.c = arrayList;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return aa4.e(this.a, dVar.a) && aa4.e(this.b, dVar.b) && this.c.equals(dVar.c);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            return this.c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
        }

        public final String toString() {
            StringBuilder sbD = ad2.d("CategoriesBlock(title=", this.a, ", fullDescription=", this.b, ", categories=");
            sbD.append(this.c);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class e implements pz3 {
        public final String a;
        public final String b;

        public e(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return aa4.e(this.a, eVar.a) && aa4.e(this.b, eVar.b);
        }

        @Override // defpackage.pz3
        public final Object f() {
            return ni0.c(this.a, this.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        @Override // defpackage.pz3
        public final Object id() {
            return this.a;
        }

        public final String toString() {
            return n2.d("CategoryViewModel(title=", this.a, ", iconUrl=", this.b, ")");
        }
    }

    public static final class f {
        public final String a;
        public final String b;
        public final String c;

        public f(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return this.a.equals(fVar.a) && this.b.equals(fVar.b) && this.c.equals(fVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            return me0.d(ad2.d("Conditions(title=", this.a, ", description=", this.b, ", fullDescription="), this.c, ")");
        }
    }

    public static final class g {
        public final String a;
        public final String b;

        public g(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return this.a.equals(gVar.a) && this.b.equals(gVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("Step(title=", this.a, ", imageUrl=", this.b, ")");
        }
    }

    public static final class h {
        public final String a;
        public final g b;
        public final g c;

        public h(String str, g gVar, g gVar2) {
            str.getClass();
            this.a = str;
            this.b = gVar;
            this.c = gVar2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return aa4.e(this.a, hVar.a) && this.b.equals(hVar.b) && this.c.equals(hVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
        }

        public final String toString() {
            return "StepsBlock(stepsTitle=" + this.a + ", firstStep=" + this.b + ", secondStep=" + this.c + ")";
        }
    }

    public xa(int i, String str, String str2, String str3, c cVar, d dVar, h hVar, f fVar, b bVar, a aVar, pw7 pw7Var) {
        x7.b(str, str2, str3);
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = cVar;
        this.f = dVar;
        this.g = hVar;
        this.h = fVar;
        this.i = bVar;
        this.j = aVar;
        this.k = pw7Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xa)) {
            return false;
        }
        xa xaVar = (xa) obj;
        return this.a == xaVar.a && aa4.e(this.b, xaVar.b) && aa4.e(this.c, xaVar.c) && aa4.e(this.d, xaVar.d) && this.e.equals(xaVar.e) && aa4.e(this.f, xaVar.f) && this.g.equals(xaVar.g) && aa4.e(this.h, xaVar.h) && this.i.equals(xaVar.i) && aa4.e(this.j, xaVar.j) && this.k.equals(xaVar.k);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d + this.e + this.f + this.g + this.h + this.i + this.j + this.a;
    }

    public final int hashCode() {
        int iHashCode = (this.e.hashCode() + zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d)) * 31;
        d dVar = this.f;
        int iHashCode2 = (this.g.hashCode() + ((iHashCode + (dVar == null ? 0 : dVar.hashCode())) * 31)) * 31;
        f fVar = this.h;
        int iHashCode3 = (this.i.hashCode() + ((iHashCode2 + (fVar == null ? 0 : fVar.hashCode())) * 31)) * 31;
        a aVar = this.j;
        return this.k.hashCode() + ((iHashCode3 + (aVar != null ? aVar.hashCode() : 0)) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "AdvancePromoSelectCardViewModel(id=", ", title=", this.b, ", subtitle=");
        kv2.c(sbE, this.c, ", imageUrl=", this.d, ", cardInfo=");
        sbE.append(this.e);
        sbE.append(", categoriesBlock=");
        sbE.append(this.f);
        sbE.append(", stepsBlock=");
        sbE.append(this.g);
        sbE.append(", conditions=");
        sbE.append(this.h);
        sbE.append(", button=");
        sbE.append(this.i);
        sbE.append(", badge=");
        sbE.append(this.j);
        sbE.append(", analytics=");
        sbE.append(this.k);
        sbE.append(")");
        return sbE.toString();
    }
}
