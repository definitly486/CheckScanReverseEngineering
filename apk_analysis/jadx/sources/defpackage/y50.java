package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class y50 {

    @bq7("show")
    private final boolean a;

    @bq7("screens")
    private final List<sw5> b;

    public y50(boolean z, List<sw5> list) {
        list.getClass();
        this.a = z;
        this.b = list;
    }

    public final List<sw5> a() {
        return this.b;
    }

    public final boolean b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y50)) {
            return false;
        }
        y50 y50Var = (y50) obj;
        return this.a == y50Var.a && aa4.e(this.b, y50Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Boolean.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "BalanceOnboardingCardResponse(show=" + this.a + ", screens=" + this.b + ")";
    }
}
