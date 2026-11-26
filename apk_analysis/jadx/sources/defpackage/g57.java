package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes5.dex */
public final class g57 {

    @bq7(FirebaseAnalytics.Param.LEVEL)
    private final h57 a;

    @bq7("androidApp")
    private final zf b;

    public g57(h57 h57Var, zf zfVar) {
        h57Var.getClass();
        this.a = h57Var;
        this.b = zfVar;
    }

    public final zf a() {
        return this.b;
    }

    public final h57 b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g57)) {
            return false;
        }
        g57 g57Var = (g57) obj;
        return this.a == g57Var.a && aa4.e(this.b, g57Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        zf zfVar = this.b;
        return iHashCode + (zfVar == null ? 0 : zfVar.hashCode());
    }

    public final String toString() {
        return "RestrictionResponse(level=" + this.a + ", androidApp=" + this.b + ")";
    }
}
