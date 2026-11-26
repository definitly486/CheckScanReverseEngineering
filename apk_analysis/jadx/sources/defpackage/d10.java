package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class d10 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("text")
    private final String b;

    @bq7("mainButton")
    private final a c;

    public static final class a {

        @bq7("text")
        private final String a;

        public a(String str) {
            str.getClass();
            this.a = str;
        }

        public final String a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && aa4.e(this.a, ((a) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("MainButton(text=", this.a, ")");
        }
    }

    public d10(String str, String str2, a aVar) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = aVar;
    }

    public final a a() {
        return this.c;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d10)) {
            return false;
        }
        d10 d10Var = (d10) obj;
        return aa4.e(this.a, d10Var.a) && aa4.e(this.b, d10Var.b) && aa4.e(this.c, d10Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        a aVar = this.c;
        return iHashCode2 + (aVar != null ? aVar.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        a aVar = this.c;
        StringBuilder sbD = ad2.d("BalanceBlockAlfaIdResponse(title=", str, ", text=", str2, ", mainButton=");
        sbD.append(aVar);
        sbD.append(")");
        return sbD.toString();
    }
}
