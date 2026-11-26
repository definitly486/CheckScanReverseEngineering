package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class oq3 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("text")
    private final String b;

    @bq7("logoUrl")
    private final String c;

    @bq7("mainButton")
    private final a d;

    @bq7("secondaryButton")
    private final a e;

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

        public final String b() {
            return this.b;
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

    public oq3(String str, String str2, String str3, a aVar, a aVar2) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = aVar;
        this.e = aVar2;
    }

    public final String a() {
        return this.c;
    }

    public final a b() {
        return this.d;
    }

    public final a c() {
        return this.e;
    }

    public final String d() {
        return this.b;
    }

    public final String e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oq3)) {
            return false;
        }
        oq3 oq3Var = (oq3) obj;
        return aa4.e(this.a, oq3Var.a) && aa4.e(this.b, oq3Var.b) && aa4.e(this.c, oq3Var.c) && aa4.e(this.d, oq3Var.d) && aa4.e(this.e, oq3Var.e);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        a aVar = this.d;
        int iHashCode = (iB + (aVar == null ? 0 : aVar.hashCode())) * 31;
        a aVar2 = this.e;
        return iHashCode + (aVar2 != null ? aVar2.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        a aVar = this.d;
        a aVar2 = this.e;
        StringBuilder sbD = ad2.d("GiftResponse(title=", str, ", text=", str2, ", logoUrl=");
        sbD.append(str3);
        sbD.append(", mainButton=");
        sbD.append(aVar);
        sbD.append(", secondaryButton=");
        sbD.append(aVar2);
        sbD.append(")");
        return sbD.toString();
    }
}
