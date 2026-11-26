package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public final class nb0 {

    @bq7("text")
    private final String a;

    @bq7(FirebaseAnalytics.Param.SUCCESS)
    private final Boolean b;

    public nb0(String str, Boolean bool) {
        this.a = str;
        this.b = bool;
    }

    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nb0)) {
            return false;
        }
        nb0 nb0Var = (nb0) obj;
        return aa4.e(this.a, nb0Var.a) && aa4.e(this.b, nb0Var.b);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Boolean bool = this.b;
        return iHashCode + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return "BankRegistrationErrorResponse(text=" + this.a + ", success=" + this.b + ")";
    }
}
