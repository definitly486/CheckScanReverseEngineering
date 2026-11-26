package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class na3 {

    @bq7("dateFrom")
    private final String a;

    @bq7("dateTo")
    private final String b;

    @bq7("categories")
    private final List<Integer> c;

    @bq7("retailers")
    private final List<Integer> d;

    @bq7("weekdays")
    private final List<Integer> e;

    public /* synthetic */ na3(String str, String str2, List list, List list2, List list3, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : list, (i & 8) != 0 ? null : list2, (i & 16) != 0 ? null : list3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof na3)) {
            return false;
        }
        na3 na3Var = (na3) obj;
        return aa4.e(this.a, na3Var.a) && aa4.e(this.b, na3Var.b) && aa4.e(this.c, na3Var.c) && aa4.e(this.d, na3Var.d) && aa4.e(this.e, na3Var.e);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<Integer> list = this.c;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        List<Integer> list2 = this.d;
        int iHashCode4 = (iHashCode3 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<Integer> list3 = this.e;
        return iHashCode4 + (list3 != null ? list3.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        List<Integer> list = this.c;
        List<Integer> list2 = this.d;
        List<Integer> list3 = this.e;
        StringBuilder sbD = ad2.d("FilterResponse(dateFrom=", str, ", dateTo=", str2, ", categories=");
        sbD.append(list);
        sbD.append(", retailers=");
        sbD.append(list2);
        sbD.append(", weekdays=");
        return bg.e(")", list3, sbD);
    }

    public na3(String str, String str2, List<Integer> list, List<Integer> list2, List<Integer> list3) {
        this.a = str;
        this.b = str2;
        this.c = list;
        this.d = list2;
        this.e = list3;
    }

    public na3() {
        this(null, null, null, null, null, 31, null);
    }
}
