package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class ln3 {

    @bq7("imageUrl")
    private final String a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("description")
    private final String c;

    @bq7("mainButton")
    private final a d;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        public a(String str) {
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
            String str = this.a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return me0.c("Button(title=", this.a, ")");
        }
    }

    public ln3(String str, String str2, String str3, a aVar) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = aVar;
    }

    public final String a() {
        return this.c;
    }

    public final String b() {
        return this.a;
    }

    public final a c() {
        return this.d;
    }

    public final String d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ln3)) {
            return false;
        }
        ln3 ln3Var = (ln3) obj;
        return aa4.e(this.a, ln3Var.a) && aa4.e(this.b, ln3Var.b) && aa4.e(this.c, ln3Var.c) && aa4.e(this.d, ln3Var.d);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        a aVar = this.d;
        return iHashCode3 + (aVar != null ? aVar.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        a aVar = this.d;
        StringBuilder sbD = ad2.d("GamesBannerResponse(imageUrl=", str, ", title=", str2, ", description=");
        sbD.append(str3);
        sbD.append(", mainButton=");
        sbD.append(aVar);
        sbD.append(")");
        return sbD.toString();
    }
}
