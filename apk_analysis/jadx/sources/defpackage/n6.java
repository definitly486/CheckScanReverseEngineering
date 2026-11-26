package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes.dex */
public final class n6 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("text")
    private final String b;

    @bq7("mainButton")
    private final a c;

    public static final class a {

        @bq7("text")
        private final String a;

        @bq7("url")
        private final String b;

        public a(String str, String str2) {
            str.getClass();
            this.a = str;
            this.b = str2;
        }

        public final String a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return n2.d("ButtonResponse(text=", this.a, ", url=", this.b, ")");
        }
    }

    public n6(String str, String str2, a aVar) {
        str.getClass();
        str2.getClass();
        aVar.getClass();
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
        if (!(obj instanceof n6)) {
            return false;
        }
        n6 n6Var = (n6) obj;
        return aa4.e(this.a, n6Var.a) && aa4.e(this.b, n6Var.b) && aa4.e(this.c, n6Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        a aVar = this.c;
        StringBuilder sbD = ad2.d("ActivateSettingsPromocodeErrorResponse(title=", str, ", text=", str2, ", mainButton=");
        sbD.append(aVar);
        sbD.append(")");
        return sbD.toString();
    }
}
