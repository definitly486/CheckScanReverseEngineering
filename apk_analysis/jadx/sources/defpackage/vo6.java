package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class vo6 implements pz3 {
    public final int a;
    public final a b;
    public final ArrayList c;
    public final pw7 d;

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
            return dg.c(ad2.d("Badge(text=", this.a, ", textColor=", this.b, ", strokeColor="), this.c, ", logoUrl=", this.d, ")");
        }
    }

    public vo6(int i, a aVar, ArrayList arrayList, pw7 pw7Var) {
        this.a = i;
        this.b = aVar;
        this.c = arrayList;
        this.d = pw7Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vo6)) {
            return false;
        }
        vo6 vo6Var = (vo6) obj;
        return this.a == vo6Var.a && aa4.e(this.b, vo6Var.b) && this.c.equals(vo6Var.c) && this.d.equals(vo6Var.d);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return qn1.a0(this.c, null, null, null, 0, null, 63) + this.b;
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        a aVar = this.b;
        return this.d.hashCode() + tg.d(this.c, (iHashCode + (aVar == null ? 0 : aVar.hashCode())) * 31, 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        return "PromoSelectCardHolderViewModel(id=" + this.a + ", badge=" + this.b + ", card=" + this.c + ", analytics=" + this.d + ")";
    }
}
