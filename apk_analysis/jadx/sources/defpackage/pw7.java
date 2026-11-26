package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pw7 {
    public final String a;
    public final Integer b;
    public final String c;
    public final Integer d;
    public final String e;

    public /* synthetic */ pw7(int i, String str, String str2, Integer num) {
        this(str, (i & 4) != 0 ? null : str2, num, null, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pw7)) {
            return false;
        }
        pw7 pw7Var = (pw7) obj;
        return aa4.e(this.a, pw7Var.a) && aa4.e(this.b, pw7Var.b) && aa4.e(this.c, pw7Var.c) && aa4.e(this.d, pw7Var.d) && aa4.e(this.e, pw7Var.e);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.b;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num2 = this.d;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str3 = this.e;
        return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ShowcaseItemPayload(block=");
        sb.append(this.a);
        sb.append(", itemId=");
        sb.append(this.b);
        sb.append(", badge=");
        sb.append(this.c);
        sb.append(", operationId=");
        sb.append(this.d);
        sb.append(", itemState=");
        return me0.d(sb, this.e, ")");
    }

    public pw7(String str, String str2, Integer num, Integer num2, String str3) {
        this.a = str;
        this.b = num;
        this.c = str2;
        this.d = num2;
        this.e = str3;
    }
}
