package yads;

import defpackage.kv2;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class sd4 {
    public final f95 a;
    public List b;
    public final String c;
    public final String d;
    public final String e;
    public final ot3 f;
    public final j5 g;
    public final List h;
    public final List i;
    public final s70 j;
    public final ai4 k;

    public sd4(f95 f95Var, List list, String str, String str2, String str3, ot3 ot3Var, j5 j5Var, List list2, List list3, s70 s70Var, ai4 ai4Var) {
        this.a = f95Var;
        this.b = list;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = ot3Var;
        this.g = j5Var;
        this.h = list2;
        this.i = list3;
        this.j = s70Var;
        this.k = ai4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sd4)) {
            return false;
        }
        sd4 sd4Var = (sd4) obj;
        return this.a == sd4Var.a && defpackage.aa4.e(this.b, sd4Var.b) && defpackage.aa4.e(this.c, sd4Var.c) && defpackage.aa4.e(this.d, sd4Var.d) && defpackage.aa4.e(this.e, sd4Var.e) && defpackage.aa4.e(this.f, sd4Var.f) && defpackage.aa4.e(this.g, sd4Var.g) && defpackage.aa4.e(this.h, sd4Var.h) && defpackage.aa4.e(this.i, sd4Var.i) && defpackage.aa4.e(this.j, sd4Var.j) && defpackage.aa4.e(this.k, sd4Var.k);
    }

    public final int hashCode() {
        int iB = defpackage.e2.b(this.b, this.a.hashCode() * 31, 31);
        String str = this.c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        ot3 ot3Var = this.f;
        int iHashCode4 = (iHashCode3 + (ot3Var == null ? 0 : ot3Var.hashCode())) * 31;
        j5 j5Var = this.g;
        int iB2 = defpackage.e2.b(this.i, defpackage.e2.b(this.h, (iHashCode4 + (j5Var == null ? 0 : j5Var.b.hashCode())) * 31, 31), 31);
        s70 s70Var = this.j;
        return this.k.hashCode() + ((iB2 + (s70Var != null ? s70Var.hashCode() : 0)) * 31);
    }

    public final String toString() {
        f95 f95Var = this.a;
        List list = this.b;
        String str = this.c;
        String str2 = this.d;
        String str3 = this.e;
        ot3 ot3Var = this.f;
        j5 j5Var = this.g;
        List list2 = this.h;
        List list3 = this.i;
        s70 s70Var = this.j;
        ai4 ai4Var = this.k;
        StringBuilder sb = new StringBuilder("Native(responseNativeType=");
        sb.append(f95Var);
        sb.append(", assets=");
        sb.append(list);
        sb.append(", adId=");
        kv2.c(sb, str, ", info=", str2, ", additionalText=");
        sb.append(str3);
        sb.append(", link=");
        sb.append(ot3Var);
        sb.append(", impressionData=");
        sb.append(j5Var);
        sb.append(", renderTrackingUrls=");
        sb.append(list2);
        sb.append(", showNotices=");
        sb.append(list3);
        sb.append(", creative=");
        sb.append(s70Var);
        sb.append(", nativeAnalytics=");
        sb.append(ai4Var);
        sb.append(")");
        return sb.toString();
    }
}
