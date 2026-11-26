package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class va3 {

    @bq7("syncDate")
    private final String a;

    @bq7("events")
    private final List<ua3> b;

    public va3(String str, List<ua3> list) {
        str.getClass();
        list.getClass();
        this.a = str;
        this.b = list;
    }

    public final String a() {
        return this.a;
    }

    public final List<ua3> b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof va3)) {
            return false;
        }
        va3 va3Var = (va3) obj;
        return aa4.e(this.a, va3Var.a) && aa4.e(this.b, va3Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "FirebaseAnalyticsReport(date=" + this.a + ", events=" + this.b + ")";
    }
}
