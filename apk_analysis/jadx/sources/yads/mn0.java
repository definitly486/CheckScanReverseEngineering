package yads;

import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class mn0 {
    public final String a;
    public final String b;
    public final String c;
    public final ArrayList d;
    public final LinkedHashMap e;

    public mn0(String str, String str2, String str3, ArrayList arrayList, LinkedHashMap linkedHashMap) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = arrayList;
        this.e = linkedHashMap;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mn0)) {
            return false;
        }
        mn0 mn0Var = (mn0) obj;
        return defpackage.aa4.e(this.a, mn0Var.a) && defpackage.aa4.e(this.b, mn0Var.b) && defpackage.aa4.e(this.c, mn0Var.c) && defpackage.aa4.e(this.d, mn0Var.d) && defpackage.aa4.e(this.e, mn0Var.e);
    }

    public final int hashCode() {
        int iA = l4.a(l4.a(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        ArrayList arrayList = this.d;
        int iHashCode = (iA + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
        LinkedHashMap linkedHashMap = this.e;
        return iHashCode + (linkedHashMap != null ? linkedHashMap.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        ArrayList arrayList = this.d;
        LinkedHashMap linkedHashMap = this.e;
        StringBuilder sbD = defpackage.ad2.d("Design(type=", str, ", target=", str2, ", layout=");
        sbD.append(str3);
        sbD.append(", images=");
        sbD.append(arrayList);
        sbD.append(", analyticsParameters=");
        sbD.append(linkedHashMap);
        sbD.append(")");
        return sbD.toString();
    }
}
