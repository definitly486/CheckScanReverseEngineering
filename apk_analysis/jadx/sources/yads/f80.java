package yads;

import defpackage.kv2;

/* JADX INFO: loaded from: classes6.dex */
public final class f80 {
    public final p80 a;
    public final i80 b;
    public final i80 c;
    public final i80 d;
    public final u80 e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final Float k;
    public final String l;
    public final String m;
    public final String n;
    public final r80 o;
    public final boolean p;

    public f80(p80 p80Var, i80 i80Var, i80 i80Var2, i80 i80Var3, u80 u80Var, String str, String str2, String str3, String str4, String str5, Float f, String str6, String str7, String str8, r80 r80Var, boolean z) {
        this.a = p80Var;
        this.b = i80Var;
        this.c = i80Var2;
        this.d = i80Var3;
        this.e = u80Var;
        this.f = str;
        this.g = str2;
        this.h = str3;
        this.i = str4;
        this.j = str5;
        this.k = f;
        this.l = str6;
        this.m = str7;
        this.n = str8;
        this.o = r80Var;
        this.p = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f80)) {
            return false;
        }
        f80 f80Var = (f80) obj;
        return defpackage.aa4.e(this.a, f80Var.a) && defpackage.aa4.e(this.b, f80Var.b) && defpackage.aa4.e(this.c, f80Var.c) && defpackage.aa4.e(this.d, f80Var.d) && defpackage.aa4.e(this.e, f80Var.e) && defpackage.aa4.e(this.f, f80Var.f) && defpackage.aa4.e(this.g, f80Var.g) && defpackage.aa4.e(this.h, f80Var.h) && defpackage.aa4.e(this.i, f80Var.i) && defpackage.aa4.e(this.j, f80Var.j) && defpackage.aa4.e(this.k, f80Var.k) && defpackage.aa4.e(this.l, f80Var.l) && defpackage.aa4.e(this.m, f80Var.m) && defpackage.aa4.e(this.n, f80Var.n) && defpackage.aa4.e(this.o, f80Var.o) && this.p == f80Var.p;
    }

    public final int hashCode() {
        p80 p80Var = this.a;
        int iHashCode = (p80Var == null ? 0 : p80Var.hashCode()) * 31;
        i80 i80Var = this.b;
        int iHashCode2 = (iHashCode + (i80Var == null ? 0 : i80Var.hashCode())) * 31;
        i80 i80Var2 = this.c;
        int iHashCode3 = (iHashCode2 + (i80Var2 == null ? 0 : i80Var2.hashCode())) * 31;
        i80 i80Var3 = this.d;
        int iHashCode4 = (iHashCode3 + (i80Var3 == null ? 0 : i80Var3.hashCode())) * 31;
        u80 u80Var = this.e;
        int iHashCode5 = (iHashCode4 + (u80Var == null ? 0 : u80Var.hashCode())) * 31;
        String str = this.f;
        int iHashCode6 = (iHashCode5 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.g;
        int iHashCode7 = (iHashCode6 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.h;
        int iHashCode8 = (iHashCode7 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.i;
        int iHashCode9 = (iHashCode8 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.j;
        int iHashCode10 = (iHashCode9 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Float f = this.k;
        int iHashCode11 = (iHashCode10 + (f == null ? 0 : f.hashCode())) * 31;
        String str6 = this.l;
        int iHashCode12 = (iHashCode11 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.m;
        int iHashCode13 = (iHashCode12 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.n;
        int iHashCode14 = (iHashCode13 + (str8 == null ? 0 : str8.hashCode())) * 31;
        r80 r80Var = this.o;
        return Boolean.hashCode(this.p) + ((iHashCode14 + (r80Var != null ? r80Var.hashCode() : 0)) * 31);
    }

    public final String toString() {
        p80 p80Var = this.a;
        i80 i80Var = this.b;
        i80 i80Var2 = this.c;
        i80 i80Var3 = this.d;
        u80 u80Var = this.e;
        String str = this.f;
        String str2 = this.g;
        String str3 = this.h;
        String str4 = this.i;
        String str5 = this.j;
        Float f = this.k;
        String str6 = this.l;
        String str7 = this.m;
        String str8 = this.n;
        r80 r80Var = this.o;
        boolean z = this.p;
        StringBuilder sb = new StringBuilder("CoreNativeAdAssets(media=");
        sb.append(p80Var);
        sb.append(", favicon=");
        sb.append(i80Var);
        sb.append(", icon=");
        sb.append(i80Var2);
        sb.append(", image=");
        sb.append(i80Var3);
        sb.append(", closeButton=");
        sb.append(u80Var);
        sb.append(", age=");
        sb.append(str);
        sb.append(", body=");
        kv2.c(sb, str2, ", callToAction=", str3, ", domain=");
        kv2.c(sb, str4, ", price=", str5, ", rating=");
        sb.append(f);
        sb.append(", reviewCount=");
        sb.append(str6);
        sb.append(", sponsored=");
        kv2.c(sb, str7, ", title=", str8, ", warning=");
        sb.append(r80Var);
        sb.append(", feedbackAvailable=");
        sb.append(z);
        sb.append(")");
        return sb.toString();
    }
}
