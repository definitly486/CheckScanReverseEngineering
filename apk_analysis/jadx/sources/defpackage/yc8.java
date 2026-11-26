package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class yc8 {

    @bq7("iconUrl")
    private final String a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("text")
    private final String c;

    @bq7("mainButton")
    private final a d;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("url")
        private final String b;

        public a(String str, String str2) {
            str.getClass();
            str2.getClass();
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
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("MainButton(title=", this.a, ", url=", this.b, ")");
        }
    }

    public yc8(String str, String str2, String str3, a aVar) {
        str2.getClass();
        str3.getClass();
        aVar.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = aVar;
    }

    public final String a() {
        return this.a;
    }

    public final a b() {
        return this.d;
    }

    public final String c() {
        return this.c;
    }

    public final String d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yc8)) {
            return false;
        }
        yc8 yc8Var = (yc8) obj;
        return aa4.e(this.a, yc8Var.a) && aa4.e(this.b, yc8Var.b) && aa4.e(this.c, yc8Var.c) && aa4.e(this.d, yc8Var.d);
    }

    public final int hashCode() {
        String str = this.a;
        return this.d.hashCode() + zg.b(zg.b((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31, this.c);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        a aVar = this.d;
        StringBuilder sbD = ad2.d("SuccessPopupResponse(iconUrl=", str, ", title=", str2, ", text=");
        sbD.append(str3);
        sbD.append(", mainButton=");
        sbD.append(aVar);
        sbD.append(")");
        return sbD.toString();
    }
}
