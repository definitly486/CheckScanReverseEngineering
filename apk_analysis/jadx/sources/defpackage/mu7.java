package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class mu7 {
    public final boolean a;
    public final String b;
    public final String c;
    public final String d;
    public final ArrayList e;

    public mu7(boolean z, String str, String str2, String str3, ArrayList arrayList) {
        this.a = z;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mu7)) {
            return false;
        }
        mu7 mu7Var = (mu7) obj;
        return this.a == mu7Var.a && aa4.e(this.b, mu7Var.b) && aa4.e(this.c, mu7Var.c) && aa4.e(this.d, mu7Var.d) && this.e.equals(mu7Var.e);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.a) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        return this.e.hashCode() + ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ShopContent(isMerchant=");
        sb.append(this.a);
        sb.append(", title=");
        sb.append(this.b);
        sb.append(", imageUrl=");
        kv2.c(sb, this.c, ", secondaryImage=", this.d, ", items=");
        sb.append(this.e);
        sb.append(")");
        return sb.toString();
    }
}
