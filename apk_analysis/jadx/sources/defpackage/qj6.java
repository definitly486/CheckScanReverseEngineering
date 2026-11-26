package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public final class qj6 {

    @bq7("kind")
    private final a a;

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final sj6 b;

    public enum a {
        Offer
    }

    public qj6(a aVar, sj6 sj6Var) {
        this.a = aVar;
        this.b = sj6Var;
    }

    public final sj6 a() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qj6)) {
            return false;
        }
        qj6 qj6Var = (qj6) obj;
        return this.a == qj6Var.a && aa4.e(this.b, qj6Var.b);
    }

    public final int hashCode() {
        a aVar = this.a;
        int iHashCode = (aVar == null ? 0 : aVar.hashCode()) * 31;
        sj6 sj6Var = this.b;
        return iHashCode + (sj6Var != null ? sj6Var.hashCode() : 0);
    }

    public final String toString() {
        return "ProductsOfferBlockResponse(kind=" + this.a + ", content=" + this.b + ")";
    }
}
