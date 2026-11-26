package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wp8 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final Integer e;

    public wp8(String str, String str2, String str3, String str4, Integer num) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wp8)) {
            return false;
        }
        wp8 wp8Var = (wp8) obj;
        return aa4.e(this.a, wp8Var.a) && aa4.e(this.b, wp8Var.b) && aa4.e(this.c, wp8Var.c) && aa4.e(this.d, wp8Var.d) && aa4.e(this.e, wp8Var.e);
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
        Integer num = this.e;
        return iHashCode4 + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("TasksShowcaseContext(listId=", this.a, ", rankerVersion=", this.b, ", experimentKey=");
        kv2.c(sbD, this.c, ", experimentVariant=", this.d, ", lastClickedItemId=");
        sbD.append(this.e);
        sbD.append(")");
        return sbD.toString();
    }
}
