package defpackage;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class ld1 {

    @bq7("description")
    private final String a;

    @bq7("button")
    private final a b;

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
            return n2.d("Button(title=", this.a, ", url=", this.b, ")");
        }
    }

    public ld1(String str, a aVar) {
        str.getClass();
        aVar.getClass();
        this.a = str;
        this.b = aVar;
    }

    public final a a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ld1)) {
            return false;
        }
        ld1 ld1Var = (ld1) obj;
        return aa4.e(this.a, ld1Var.a) && aa4.e(this.b, ld1Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ChequeAlertResponse(description=" + this.a + ", button=" + this.b + ")";
    }
}
