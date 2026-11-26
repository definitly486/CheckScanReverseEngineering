package defpackage;

import com.google.android.gms.actions.SearchIntents;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public final class m17 {

    @bq7(FirebaseAnalytics.Param.LOCATION)
    private final du4 a;

    @bq7(SearchIntents.EXTRA_QUERY)
    private final String b;

    public m17(du4 du4Var, String str) {
        du4Var.getClass();
        str.getClass();
        this.a = du4Var;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m17)) {
            return false;
        }
        m17 m17Var = (m17) obj;
        return aa4.e(this.a, m17Var.a) && aa4.e(this.b, m17Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "RegionRequest(location=" + this.a + ", query=" + this.b + ")";
    }
}
