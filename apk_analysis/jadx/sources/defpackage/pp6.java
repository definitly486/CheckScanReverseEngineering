package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class pp6 {
    public final String a;
    public final ArrayList b;
    public final ap6 c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;

    public pp6(String str, ArrayList arrayList, ap6 ap6Var, String str2, String str3, String str4, String str5) {
        str.getClass();
        this.a = str;
        this.b = arrayList;
        this.c = ap6Var;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pp6)) {
            return false;
        }
        pp6 pp6Var = (pp6) obj;
        return aa4.e(this.a, pp6Var.a) && this.b.equals(pp6Var.b) && aa4.e(this.c, pp6Var.c) && aa4.e(this.d, pp6Var.d) && aa4.e(this.e, pp6Var.e) && aa4.e(this.f, pp6Var.f) && aa4.e(this.g, pp6Var.g);
    }

    public final int hashCode() {
        int iD = tg.d(this.b, this.a.hashCode() * 31, 31);
        ap6 ap6Var = this.c;
        int iHashCode = (iD + (ap6Var == null ? 0 : ap6Var.hashCode())) * 31;
        String str = this.d;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.e;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.g;
        return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PromoSelectCardsScreen(toolbarTitle=");
        sb.append(this.a);
        sb.append(", items=");
        sb.append(this.b);
        sb.append(", motivationBanner=");
        sb.append(this.c);
        sb.append(", listId=");
        sb.append(this.d);
        sb.append(", rankerVersion=");
        kv2.c(sb, this.e, ", experimentKey=", this.f, ", experimentVariant=");
        return me0.d(sb, this.g, ")");
    }
}
