package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class q50 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("text")
    private final String b;

    @bq7("mainButton")
    private final k70.h.a c;

    @bq7("secondButton")
    private final k70.h.a d;

    @bq7("logoUrl")
    private final String e;

    public q50(String str, String str2, k70.h.a aVar, k70.h.a aVar2, String str3) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = str2;
        this.c = aVar;
        this.d = aVar2;
        this.e = str3;
    }

    public final uj9 a() {
        String str = this.e;
        String str2 = this.a;
        String str3 = this.b;
        k70.h.a aVar = this.c;
        uj9.a aVarA = aVar != null ? aVar.a() : null;
        k70.h.a aVar2 = this.d;
        return new uj9(str, str2, str3, aVarA, aVar2 != null ? aVar2.a() : null, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q50)) {
            return false;
        }
        q50 q50Var = (q50) obj;
        return aa4.e(this.a, q50Var.a) && aa4.e(this.b, q50Var.b) && aa4.e(this.c, q50Var.c) && aa4.e(this.d, q50Var.d) && aa4.e(this.e, q50Var.e);
    }

    public final int hashCode() {
        int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
        k70.h.a aVar = this.c;
        int iHashCode = (iB + (aVar == null ? 0 : aVar.hashCode())) * 31;
        k70.h.a aVar2 = this.d;
        return this.e.hashCode() + ((iHashCode + (aVar2 != null ? aVar2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        k70.h.a aVar = this.c;
        k70.h.a aVar2 = this.d;
        String str3 = this.e;
        StringBuilder sbD = ad2.d("BalanceMiniLogoBlockResponse(title=", str, ", text=", str2, ", mainButton=");
        sbD.append(aVar);
        sbD.append(", secondButton=");
        sbD.append(aVar2);
        sbD.append(", logoUrl=");
        return me0.d(sbD, str3, ")");
    }
}
