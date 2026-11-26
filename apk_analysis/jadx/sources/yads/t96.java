package yads;

import defpackage.kv2;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class t96 implements ef6 {
    public final boolean a;
    public final ArrayList b;
    public final LinkedHashMap c;
    public final ba6 d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final jh6 j;
    public final Integer k;
    public final String l;
    public final rl6 m;
    public final ArrayList n;
    public final Map o;

    public t96(boolean z, ArrayList arrayList, LinkedHashMap linkedHashMap, ba6 ba6Var, String str, String str2, String str3, String str4, String str5, jh6 jh6Var, Integer num, String str6, rl6 rl6Var, ArrayList arrayList2, Map map) {
        this.a = z;
        this.b = arrayList;
        this.c = linkedHashMap;
        this.d = ba6Var;
        this.e = str;
        this.f = str2;
        this.g = str3;
        this.h = str4;
        this.i = str5;
        this.j = jh6Var;
        this.k = num;
        this.l = str6;
        this.m = rl6Var;
        this.n = arrayList2;
        this.o = map;
    }

    @Override // yads.ef6
    public final Map a() {
        return this.o;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t96)) {
            return false;
        }
        t96 t96Var = (t96) obj;
        return this.a == t96Var.a && defpackage.aa4.e(this.b, t96Var.b) && defpackage.aa4.e(this.c, t96Var.c) && defpackage.aa4.e(this.d, t96Var.d) && defpackage.aa4.e(this.e, t96Var.e) && defpackage.aa4.e(this.f, t96Var.f) && defpackage.aa4.e(this.g, t96Var.g) && defpackage.aa4.e(this.h, t96Var.h) && defpackage.aa4.e(this.i, t96Var.i) && defpackage.aa4.e(this.j, t96Var.j) && defpackage.aa4.e(this.k, t96Var.k) && defpackage.aa4.e(this.l, t96Var.l) && defpackage.aa4.e(this.m, t96Var.m) && defpackage.aa4.e(this.n, t96Var.n) && defpackage.aa4.e(this.o, t96Var.o);
    }

    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + ((this.c.hashCode() + defpackage.tg.d(this.b, Boolean.hashCode(this.a) * 31, 31)) * 31)) * 31;
        String str = this.e;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.h;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.i;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        jh6 jh6Var = this.j;
        int iHashCode7 = (iHashCode6 + (jh6Var == null ? 0 : jh6Var.a.hashCode())) * 31;
        Integer num = this.k;
        int iHashCode8 = (iHashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        String str6 = this.l;
        int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        rl6 rl6Var = this.m;
        return this.o.hashCode() + defpackage.tg.d(this.n, (iHashCode9 + (rl6Var != null ? rl6Var.hashCode() : 0)) * 31, 31);
    }

    public final String toString() {
        boolean z = this.a;
        ArrayList arrayList = this.b;
        LinkedHashMap linkedHashMap = this.c;
        ba6 ba6Var = this.d;
        String str = this.e;
        String str2 = this.f;
        String str3 = this.g;
        String str4 = this.h;
        String str5 = this.i;
        jh6 jh6Var = this.j;
        Integer num = this.k;
        String str6 = this.l;
        rl6 rl6Var = this.m;
        ArrayList arrayList2 = this.n;
        Map map = this.o;
        StringBuilder sb = new StringBuilder("VideoAd(isWrapper=");
        sb.append(z);
        sb.append(", creatives=");
        sb.append(arrayList);
        sb.append(", rawTrackingEvents=");
        sb.append(linkedHashMap);
        sb.append(", videoAdExtensions=");
        sb.append(ba6Var);
        sb.append(", adSystem=");
        kv2.c(sb, str, ", adTitle=", str2, ", description=");
        kv2.c(sb, str3, ", survey=", str4, ", vastAdTagUri=");
        sb.append(str5);
        sb.append(", viewableImpression=");
        sb.append(jh6Var);
        sb.append(", sequence=");
        sb.append(num);
        sb.append(", id=");
        sb.append(str6);
        sb.append(", wrapperConfiguration=");
        sb.append(rl6Var);
        sb.append(", adVerifications=");
        sb.append(arrayList2);
        sb.append(", trackingEvents=");
        sb.append(map);
        sb.append(")");
        return sb.toString();
    }
}
