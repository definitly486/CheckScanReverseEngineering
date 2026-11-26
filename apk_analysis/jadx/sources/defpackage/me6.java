package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class me6 {

    @bq7("fixedIncrease")
    private final Integer a;

    @bq7("endDate")
    private final String b;

    @bq7("hot")
    private final Boolean c;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String d;

    @bq7("description")
    private final String e;

    public me6(Integer num, String str, Boolean bool, String str2, String str3) {
        this.a = num;
        this.b = str;
        this.c = bool;
        this.d = str2;
        this.e = str3;
    }

    public final String a() {
        return this.e;
    }

    public final String b() {
        return this.b;
    }

    public final Integer c() {
        return this.a;
    }

    public final Boolean d() {
        return this.c;
    }

    public final String e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof me6)) {
            return false;
        }
        me6 me6Var = (me6) obj;
        return aa4.e(this.a, me6Var.a) && aa4.e(this.b, me6Var.b) && aa4.e(this.c, me6Var.c) && aa4.e(this.d, me6Var.d) && aa4.e(this.e, me6Var.e);
    }

    public final int hashCode() {
        Integer num = this.a;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.c;
        int iHashCode3 = (iHashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        Integer num = this.a;
        String str = this.b;
        Boolean bool = this.c;
        String str2 = this.d;
        String str3 = this.e;
        StringBuilder sb = new StringBuilder("PowercodeHikeFixedResponse(fixedIncrease=");
        sb.append(num);
        sb.append(", endDate=");
        sb.append(str);
        sb.append(", hot=");
        sb.append(bool);
        sb.append(", title=");
        sb.append(str2);
        sb.append(", description=");
        return me0.d(sb, str3, ")");
    }
}
