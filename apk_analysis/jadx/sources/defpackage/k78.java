package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class k78 {

    @bq7("categories")
    private List<c81> a;

    @bq7("weekdays")
    private List<kh9> b;

    @bq7("retailers")
    private List<e67> c;

    public k78(List<c81> list, List<kh9> list2, List<e67> list3) {
        this.a = list;
        this.b = list2;
        this.c = list3;
    }

    public final List<c81> a() {
        return this.a;
    }

    public final List<e67> b() {
        return this.c;
    }

    public final List<kh9> c() {
        return this.b;
    }

    public final void d() {
        this.a = null;
    }

    public final void e() {
        this.c = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k78)) {
            return false;
        }
        k78 k78Var = (k78) obj;
        return aa4.e(this.a, k78Var.a) && aa4.e(this.b, k78Var.b) && aa4.e(this.c, k78Var.c);
    }

    public final void f(ArrayList arrayList) {
        this.b = arrayList;
    }

    public final int hashCode() {
        List<c81> list = this.a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<kh9> list2 = this.b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<e67> list3 = this.c;
        return iHashCode2 + (list3 != null ? list3.hashCode() : 0);
    }

    public final String toString() {
        List<c81> list = this.a;
        List<kh9> list2 = this.b;
        List<e67> list3 = this.c;
        StringBuilder sb = new StringBuilder("Statistics(categories=");
        sb.append(list);
        sb.append(", weekdays=");
        sb.append(list2);
        sb.append(", retailers=");
        return bg.e(")", list3, sb);
    }
}
