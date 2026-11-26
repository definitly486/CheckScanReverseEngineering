package defpackage;

import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class w88 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("banners")
    private final List<a> b;

    public static final class a {

        @bq7("text")
        private final String a;

        @bq7("logoUrl")
        private final String b;

        public a(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
        }

        public final String a() {
            return this.b;
        }

        public final String b() {
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
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("BannerResponse(text=", this.a, ", logoUrl=", this.b, ")");
        }
    }

    public w88(String str, List<a> list) {
        str.getClass();
        list.getClass();
        this.a = str;
        this.b = list;
    }

    public final List<a> a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w88)) {
            return false;
        }
        w88 w88Var = (w88) obj;
        return aa4.e(this.a, w88Var.a) && aa4.e(this.b, w88Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "StepsBlockResponse(title=" + this.a + ", banners=" + this.b + ")";
    }
}
