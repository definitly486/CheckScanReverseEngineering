package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class bo8 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("text")
    private final String c;

    @bq7("logoUrl")
    private final String d;

    @bq7("badgeUrls")
    private final List<String> e;

    @bq7("actionButton")
    private final a f;

    @bq7("claimButton")
    private final b g;

    @bq7("ordInfo")
    private final c06 h;

    @bq7("aboutUrl")
    private final String i;

    @bq7("promoCodeId")
    private final int j;

    @bq7("fullTerms")
    private final jl3 k;

    @bq7("disclaimers")
    private final List<fn8> l;

    public static final class a {

        @bq7("text")
        private final String a;

        @bq7(TJAdUnitConstants.String.ENABLED)
        private final boolean b;

        @bq7("registrationRequired")
        private final boolean c;

        public a(String str, boolean z, boolean z2) {
            str.getClass();
            this.a = str;
            this.b = z;
            this.c = z2;
        }

        public final boolean a() {
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
            return aa4.e(this.a, aVar.a) && this.b == aVar.b && this.c == aVar.c;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.c) + tg.c(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            String str = this.a;
            boolean z = this.b;
            return dh.e(p2.b("ActionButtonResponse(text=", str, ", enabled=", ", registrationRequired=", z), this.c, ")");
        }
    }

    public static final class b {

        @bq7("text")
        private final String a;

        @bq7(TJAdUnitConstants.String.ENABLED)
        private final boolean b;

        @bq7("delayMs")
        private final long c;

        public b(String str, boolean z, long j) {
            str.getClass();
            this.a = str;
            this.b = z;
            this.c = j;
        }

        public final boolean a() {
            return this.b;
        }

        public final String b() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && this.b == bVar.b && this.c == bVar.c;
        }

        public final int hashCode() {
            return Long.hashCode(this.c) + tg.c(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            return k2.b(this.c, ")", p2.b("ClaimButtonResponse(text=", this.a, ", enabled=", ", delayMs=", this.b));
        }
    }

    public bo8(int i, String str, String str2, String str3, List<String> list, a aVar, b bVar, c06 c06Var, String str4, int i2, jl3 jl3Var, List<fn8> list2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        aVar.getClass();
        bVar.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = list;
        this.f = aVar;
        this.g = bVar;
        this.h = c06Var;
        this.i = str4;
        this.j = i2;
        this.k = jl3Var;
        this.l = list2;
    }

    public final String a() {
        return this.i;
    }

    public final a b() {
        return this.f;
    }

    public final List<String> c() {
        return this.e;
    }

    public final b d() {
        return this.g;
    }

    public final List<fn8> e() {
        return this.l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bo8)) {
            return false;
        }
        bo8 bo8Var = (bo8) obj;
        return this.a == bo8Var.a && aa4.e(this.b, bo8Var.b) && aa4.e(this.c, bo8Var.c) && aa4.e(this.d, bo8Var.d) && aa4.e(this.e, bo8Var.e) && aa4.e(this.f, bo8Var.f) && aa4.e(this.g, bo8Var.g) && aa4.e(this.h, bo8Var.h) && aa4.e(this.i, bo8Var.i) && this.j == bo8Var.j && aa4.e(this.k, bo8Var.k) && aa4.e(this.l, bo8Var.l);
    }

    public final jl3 f() {
        return this.k;
    }

    public final String g() {
        return this.d;
    }

    public final c06 h() {
        return this.h;
    }

    public final int hashCode() {
        int iHashCode = (this.g.hashCode() + ((this.f.hashCode() + e2.b(this.e, zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31)) * 31)) * 31;
        c06 c06Var = this.h;
        int iHashCode2 = (iHashCode + (c06Var == null ? 0 : c06Var.hashCode())) * 31;
        String str = this.i;
        int iB = ej0.b(this.j, (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31, 31);
        jl3 jl3Var = this.k;
        int iHashCode3 = (iB + (jl3Var == null ? 0 : jl3Var.hashCode())) * 31;
        List<fn8> list = this.l;
        return iHashCode3 + (list != null ? list.hashCode() : 0);
    }

    public final int i() {
        return this.j;
    }

    public final String j() {
        return this.c;
    }

    public final String k() {
        return this.b;
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        List<String> list = this.e;
        a aVar = this.f;
        b bVar = this.g;
        c06 c06Var = this.h;
        String str4 = this.i;
        int i2 = this.j;
        jl3 jl3Var = this.k;
        List<fn8> list2 = this.l;
        StringBuilder sbE = ng.e(i, "TaskPromocodeDetailsResponse(id=", ", title=", str, ", text=");
        kv2.c(sbE, str2, ", logoUrl=", str3, ", badgeUrls=");
        sbE.append(list);
        sbE.append(", actionButton=");
        sbE.append(aVar);
        sbE.append(", claimButton=");
        sbE.append(bVar);
        sbE.append(", ordInfoResponse=");
        sbE.append(c06Var);
        sbE.append(", aboutUrl=");
        o2.e(sbE, str4, ", promoCodeId=", i2, ", fullTerms=");
        sbE.append(jl3Var);
        sbE.append(", disclaimers=");
        sbE.append(list2);
        sbE.append(")");
        return sbE.toString();
    }
}
