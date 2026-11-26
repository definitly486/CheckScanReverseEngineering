package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class yw3 implements pz3 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final boolean h;
    public final boolean i;
    public final String j;
    public final h57 k;
    public final String l;

    public yw3(String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z, boolean z2, String str8, h57 h57Var, String str9) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        str7.getClass();
        h57Var.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
        this.h = z;
        this.i = z2;
        this.j = str8;
        this.k = h57Var;
        this.l = str9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yw3)) {
            return false;
        }
        yw3 yw3Var = (yw3) obj;
        return aa4.e(this.a, yw3Var.a) && aa4.e(this.b, yw3Var.b) && aa4.e(this.c, yw3Var.c) && aa4.e(this.d, yw3Var.d) && aa4.e(this.e, yw3Var.e) && aa4.e(this.f, yw3Var.f) && aa4.e(this.g, yw3Var.g) && this.h == yw3Var.h && this.i == yw3Var.i && aa4.e(this.j, yw3Var.j) && this.k == yw3Var.k && this.l.equals(yw3Var.l);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d + this.e + this.f + this.h;
    }

    public final int hashCode() {
        int iC = tg.c(tg.c(zg.b(zg.b(zg.b(zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f), 31, this.g), 31, this.h), 31, this.i);
        String str = this.j;
        return this.l.hashCode() + ((this.k.hashCode() + ((iC + (str == null ? 0 : str.hashCode())) * 31)) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return ni0.c(this.a, this.b);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("HotItemViewModel(logoUrl=", this.a, ", discount=", this.b, ", title=");
        kv2.c(sbD, this.c, ", price=", this.d, ", oldPrice=");
        kv2.c(sbD, this.e, ", cashback=", this.f, ", url=");
        ud.f(sbD, this.g, ", adult=", this.h, ", buttonAddToList=");
        sbD.append(this.i);
        sbD.append(", buttonOrder=");
        sbD.append(this.j);
        sbD.append(", restrictionType=");
        sbD.append(this.k);
        sbD.append(", shopName=");
        sbD.append(this.l);
        sbD.append(")");
        return sbD.toString();
    }
}
