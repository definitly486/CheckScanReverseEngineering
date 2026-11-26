package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class i70 {
    public final String a;
    public final String b;
    public final String c;
    public final List d;

    public i70(String str, String str2, String str3, List list) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i70)) {
            return false;
        }
        i70 i70Var = (i70) obj;
        return defpackage.aa4.e(this.a, i70Var.a) && defpackage.aa4.e(this.b, i70Var.b) && defpackage.aa4.e(this.c, i70Var.c) && defpackage.aa4.e(this.d, i70Var.d);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        return this.d.hashCode() + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        List list = this.d;
        StringBuilder sbD = defpackage.ad2.d("CoreAdInfo(adUnitId=", str, ", extraData=", str2, ", additionalText=");
        sbD.append(str3);
        sbD.append(", creatives=");
        sbD.append(list);
        sbD.append(")");
        return sbD.toString();
    }
}
