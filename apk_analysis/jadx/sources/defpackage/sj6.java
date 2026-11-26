package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class sj6 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("coverUrl")
    private final String c;

    @bq7("badges")
    private final List<a> d;

    public static final class a {

        @bq7("text")
        private final String a;

        @bq7("color")
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
            return n2.d("BadgeResponse(text=", this.a, ", color=", this.b, ")");
        }
    }

    public sj6(int i, String str, String str2, List<a> list) {
        str.getClass();
        str2.getClass();
        list.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = list;
    }

    public final List<a> a() {
        return this.d;
    }

    public final String b() {
        return this.c;
    }

    public final int c() {
        return this.a;
    }

    public final String d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sj6)) {
            return false;
        }
        sj6 sj6Var = (sj6) obj;
        return this.a == sj6Var.a && aa4.e(this.b, sj6Var.b) && aa4.e(this.c, sj6Var.c) && aa4.e(this.d, sj6Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        List<a> list = this.d;
        StringBuilder sbE = ng.e(i, "ProductsOfferPreviewResponse(id=", ", title=", str, ", coverUrl=");
        sbE.append(str2);
        sbE.append(", badges=");
        sbE.append(list);
        sbE.append(")");
        return sbE.toString();
    }
}
