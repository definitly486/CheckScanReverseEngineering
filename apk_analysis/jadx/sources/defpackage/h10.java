package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class h10 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("url")
    private final String b;

    @bq7("mainButton")
    private final a c;

    @bq7("secondButton")
    private final a d;

    @bq7("logoUrl")
    private final String e;

    @bq7(TtmlNode.ATTR_ID)
    private final int f;

    @bq7("terms")
    private final List<String> g;

    @bq7("ordInfo")
    private final c06 h;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
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
            return me0.c("ButtonResponse(title=", this.a, ")");
        }
    }

    public h10(String str, String str2, a aVar, a aVar2, String str3, int i, List<String> list, c06 c06Var) {
        str.getClass();
        str2.getClass();
        aVar.getClass();
        this.a = str;
        this.b = str2;
        this.c = aVar;
        this.d = aVar2;
        this.e = str3;
        this.f = i;
        this.g = list;
        this.h = c06Var;
    }

    public final int a() {
        return this.f;
    }

    public final String b() {
        return this.e;
    }

    public final a c() {
        return this.c;
    }

    public final c06 d() {
        return this.h;
    }

    public final a e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h10)) {
            return false;
        }
        h10 h10Var = (h10) obj;
        return aa4.e(this.a, h10Var.a) && aa4.e(this.b, h10Var.b) && aa4.e(this.c, h10Var.c) && aa4.e(this.d, h10Var.d) && aa4.e(this.e, h10Var.e) && this.f == h10Var.f && aa4.e(this.g, h10Var.g) && aa4.e(this.h, h10Var.h);
    }

    public final List<String> f() {
        return this.g;
    }

    public final String g() {
        return this.a;
    }

    public final String h() {
        return this.b;
    }

    public final int hashCode() {
        int iHashCode = (this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b)) * 31;
        a aVar = this.d;
        int iHashCode2 = (iHashCode + (aVar == null ? 0 : aVar.hashCode())) * 31;
        String str = this.e;
        int iB = ej0.b(this.f, (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31, 31);
        List<String> list = this.g;
        int iHashCode3 = (iB + (list == null ? 0 : list.hashCode())) * 31;
        c06 c06Var = this.h;
        return iHashCode3 + (c06Var != null ? c06Var.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        a aVar = this.c;
        a aVar2 = this.d;
        String str3 = this.e;
        int i = this.f;
        List<String> list = this.g;
        c06 c06Var = this.h;
        StringBuilder sbD = ad2.d("BalanceBlockPromoBannerResponse(title=", str, ", url=", str2, ", mainButton=");
        sbD.append(aVar);
        sbD.append(", secondButton=");
        sbD.append(aVar2);
        sbD.append(", logoUrl=");
        o2.e(sbD, str3, ", id=", i, ", terms=");
        sbD.append(list);
        sbD.append(", ordInfo=");
        sbD.append(c06Var);
        sbD.append(")");
        return sbD.toString();
    }
}
