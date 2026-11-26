package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ei1 {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final List<jh1> a;

    public ei1(List<jh1> list) {
        list.getClass();
        this.a = list;
    }

    public final List<jh1> a() {
        return this.a;
    }

    public final ArrayList b() {
        List<jh1> list = this.a;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((jh1) it.next()).e());
        }
        return arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ei1) && aa4.e(this.a, ((ei1) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("ChequesResponse(cheques=", this.a, ")");
    }
}
