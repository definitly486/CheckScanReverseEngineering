package yads;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class vg4 {
    public final List a;
    public final List b;
    public final List c;
    public final j5 d;
    public final Map e;
    public final List f;
    public final List g;
    public final String h;
    public final uj5 i;
    public final n6 j;

    public vg4(List list, List list2, List list3, j5 j5Var, Map map, List list4, List list5, String str, uj5 uj5Var, n6 n6Var) {
        this.a = list;
        this.b = list2;
        this.c = list3;
        this.d = j5Var;
        this.e = map;
        this.f = list4;
        this.g = list5;
        this.h = str;
        this.i = uj5Var;
        this.j = n6Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vg4)) {
            return false;
        }
        vg4 vg4Var = (vg4) obj;
        return defpackage.aa4.e(this.a, vg4Var.a) && defpackage.aa4.e(this.b, vg4Var.b) && defpackage.aa4.e(this.c, vg4Var.c) && defpackage.aa4.e(this.d, vg4Var.d) && defpackage.aa4.e(this.e, vg4Var.e) && defpackage.aa4.e(this.f, vg4Var.f) && defpackage.aa4.e(this.g, vg4Var.g) && defpackage.aa4.e(this.h, vg4Var.h) && defpackage.aa4.e(this.i, vg4Var.i) && defpackage.aa4.e(this.j, vg4Var.j);
    }

    public final int hashCode() {
        int iB = defpackage.e2.b(this.c, defpackage.e2.b(this.b, this.a.hashCode() * 31, 31), 31);
        j5 j5Var = this.d;
        int iB2 = defpackage.e2.b(this.g, defpackage.e2.b(this.f, defpackage.k.c(this.e, (iB + (j5Var == null ? 0 : j5Var.b.hashCode())) * 31, 31), 31), 31);
        String str = this.h;
        int iHashCode = (iB2 + (str == null ? 0 : str.hashCode())) * 31;
        uj5 uj5Var = this.i;
        int iHashCode2 = (iHashCode + (uj5Var == null ? 0 : uj5Var.hashCode())) * 31;
        n6 n6Var = this.j;
        return iHashCode2 + (n6Var != null ? n6Var.hashCode() : 0);
    }

    public final String toString() {
        return "NativeAdResponse(nativeAds=" + this.a + ", assets=" + this.b + ", renderTrackingUrls=" + this.c + ", impressionData=" + this.d + ", properties=" + this.e + ", divKitDesigns=" + this.f + ", showNotices=" + this.g + ", version=" + this.h + ", settings=" + this.i + ", adPod=" + this.j + ")";
    }
}
