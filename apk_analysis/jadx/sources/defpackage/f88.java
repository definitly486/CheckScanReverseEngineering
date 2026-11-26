package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class f88 {

    @bq7("categories")
    private List<d81> a;

    @bq7("weekdays")
    private List<lh9> b;

    @bq7("retailers")
    private List<f67> c;

    public f88(List<d81> list, List<lh9> list2, List<f67> list3) {
        this.a = list;
        this.b = list2;
        this.c = list3;
    }

    public final k78 a() {
        ArrayList arrayList;
        ArrayList arrayList2;
        List<d81> list = this.a;
        ArrayList arrayList3 = null;
        if (list != null) {
            List<d81> list2 = list;
            arrayList = new ArrayList(kn1.q(list2, 10));
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(((d81) it.next()).a());
            }
        } else {
            arrayList = null;
        }
        List<lh9> list3 = this.b;
        if (list3 != null) {
            List<lh9> list4 = list3;
            arrayList2 = new ArrayList(kn1.q(list4, 10));
            Iterator<T> it2 = list4.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((lh9) it2.next()).a());
            }
        } else {
            arrayList2 = null;
        }
        List<f67> list5 = this.c;
        if (list5 != null) {
            List<f67> list6 = list5;
            arrayList3 = new ArrayList(kn1.q(list6, 10));
            Iterator<T> it3 = list6.iterator();
            while (it3.hasNext()) {
                arrayList3.add(((f67) it3.next()).a());
            }
        }
        return new k78(arrayList, arrayList2, arrayList3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f88)) {
            return false;
        }
        f88 f88Var = (f88) obj;
        return aa4.e(this.a, f88Var.a) && aa4.e(this.b, f88Var.b) && aa4.e(this.c, f88Var.c);
    }

    public final int hashCode() {
        List<d81> list = this.a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<lh9> list2 = this.b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<f67> list3 = this.c;
        return iHashCode2 + (list3 != null ? list3.hashCode() : 0);
    }

    public final String toString() {
        List<d81> list = this.a;
        List<lh9> list2 = this.b;
        List<f67> list3 = this.c;
        StringBuilder sb = new StringBuilder("StatisticsResponse(categories=");
        sb.append(list);
        sb.append(", weekdays=");
        sb.append(list2);
        sb.append(", retailers=");
        return bg.e(")", list3, sb);
    }
}
