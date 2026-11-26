package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class n71 {

    @bq7("categories")
    private final List<p81> a;

    public n71(List<p81> list) {
        list.getClass();
        this.a = list;
    }

    public final List<p81> a() {
        return this.a;
    }

    public final ArrayList b() {
        List<p81> list = this.a;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((p81) it.next()).b());
        }
        return arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof n71) && aa4.e(this.a, ((n71) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("CategoriesResponse(categories=", this.a, ")");
    }
}
