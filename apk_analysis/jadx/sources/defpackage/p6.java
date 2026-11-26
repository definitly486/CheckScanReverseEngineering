package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes.dex */
public final class p6 {

    @bq7(FirebaseAnalytics.Param.SUCCESS)
    private final boolean a;

    @bq7("failBanner")
    private final n6 b;

    @bq7("successBanner")
    private final r6 c;

    public p6(boolean z, n6 n6Var, r6 r6Var) {
        this.a = z;
        this.b = n6Var;
        this.c = r6Var;
    }

    public final n6 a() {
        return this.b;
    }

    public final r6 b() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p6)) {
            return false;
        }
        p6 p6Var = (p6) obj;
        return this.a == p6Var.a && aa4.e(this.b, p6Var.b) && aa4.e(this.c, p6Var.c);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.a) * 31;
        n6 n6Var = this.b;
        int iHashCode2 = (iHashCode + (n6Var == null ? 0 : n6Var.hashCode())) * 31;
        r6 r6Var = this.c;
        return iHashCode2 + (r6Var != null ? r6Var.hashCode() : 0);
    }

    public final String toString() {
        return "ActivateSettingsPromocodeResultResponse(success=" + this.a + ", failBanner=" + this.b + ", successBanner=" + this.c + ")";
    }
}
