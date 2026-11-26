package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class g41 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final Integer f;
    public final Integer g;

    public g41(String str, String str2, String str3, String str4, String str5, Integer num, Integer num2) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = num;
        this.g = num2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g41)) {
            return false;
        }
        g41 g41Var = (g41) obj;
        return aa4.e(this.a, g41Var.a) && aa4.e(this.b, g41Var.b) && aa4.e(this.c, g41Var.c) && aa4.e(this.d, g41Var.d) && aa4.e(this.e, g41Var.e) && aa4.e(this.f, g41Var.f) && aa4.e(this.g, g41Var.g);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num = this.f;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.g;
        return iHashCode6 + (num2 != null ? num2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("CardsShowcaseContext(listId=", this.a, ", rankerVersion=", this.b, ", experimentKey=");
        kv2.c(sbD, this.c, ", experimentVariant=", this.d, ", source=");
        sbD.append(this.e);
        sbD.append(", sourceTaskId=");
        sbD.append(this.f);
        sbD.append(", lastClickedItemId=");
        sbD.append(this.g);
        sbD.append(")");
        return sbD.toString();
    }
}
