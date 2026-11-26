package yads;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class p90 implements ef6 {
    public final ArrayList a;
    public final ArrayList b;
    public final ArrayList c;
    public final ArrayList d;
    public final s90 e;
    public final String f;
    public final dm5 g;
    public final String h;
    public final int i;
    public final String j;

    public p90(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, s90 s90Var, String str, dm5 dm5Var, String str2, int i, String str3) {
        this.a = arrayList;
        this.b = arrayList2;
        this.c = arrayList3;
        this.d = arrayList4;
        this.e = s90Var;
        this.f = str;
        this.g = dm5Var;
        this.h = str2;
        this.i = i;
        this.j = str3;
    }

    @Override // yads.ef6
    public final Map a() {
        ArrayList<v06> arrayList = this.d;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (v06 v06Var : arrayList) {
            String str = v06Var.a;
            Object arrayList2 = linkedHashMap.get(str);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(str, arrayList2);
            }
            ((List) arrayList2).add(v06Var.b);
        }
        return linkedHashMap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p90)) {
            return false;
        }
        p90 p90Var = (p90) obj;
        return defpackage.aa4.e(this.a, p90Var.a) && defpackage.aa4.e(this.b, p90Var.b) && defpackage.aa4.e(this.c, p90Var.c) && defpackage.aa4.e(this.d, p90Var.d) && defpackage.aa4.e(this.e, p90Var.e) && defpackage.aa4.e(this.f, p90Var.f) && defpackage.aa4.e(this.g, p90Var.g) && defpackage.aa4.e(this.h, p90Var.h) && this.i == p90Var.i && defpackage.aa4.e(this.j, p90Var.j);
    }

    public final int hashCode() {
        int iD = defpackage.tg.d(this.d, defpackage.tg.d(this.c, defpackage.tg.d(this.b, this.a.hashCode() * 31, 31), 31), 31);
        s90 s90Var = this.e;
        int iHashCode = (iD + (s90Var == null ? 0 : s90Var.hashCode())) * 31;
        String str = this.f;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        dm5 dm5Var = this.g;
        int iHashCode3 = (iHashCode2 + (dm5Var == null ? 0 : dm5Var.hashCode())) * 31;
        String str2 = this.h;
        int iA = i96.a(this.i, (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31, 31);
        String str3 = this.j;
        return iA + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return "Creative(mediaFiles=" + this.a + ", interactiveCreativeFiles=" + this.b + ", icons=" + this.c + ", trackingEventsList=" + this.d + ", creativeExtensions=" + this.e + ", clickThroughUrl=" + this.f + ", skipOffset=" + this.g + ", id=" + this.h + ", durationMillis=" + this.i + ", adParameters=" + this.j + ")";
    }
}
