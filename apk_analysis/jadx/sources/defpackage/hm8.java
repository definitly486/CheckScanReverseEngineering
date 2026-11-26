package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class hm8 {

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
    private final c g;

    @bq7("ordInfo")
    private final c06 h;

    @bq7("aboutUrl")
    private final String i;

    @bq7("agreements")
    private final List<b> j;

    @bq7("completed")
    private final boolean k;

    @bq7("fullTerms")
    private final jl3 l;

    @bq7("disclaimers")
    private final List<fn8> m;

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
            return this.c;
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

        public b(String str) {
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
            return (obj instanceof b) && aa4.e(this.a, ((b) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("AgreementResponse(text=", this.a, ")");
        }
    }

    public static final class c {

        @bq7("text")
        private final String a;

        @bq7(TJAdUnitConstants.String.ENABLED)
        private final boolean b;

        @bq7("delayMs")
        private final long c;

        public c(String str, boolean z, long j) {
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
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return aa4.e(this.a, cVar.a) && this.b == cVar.b && this.c == cVar.c;
        }

        public final int hashCode() {
            return Long.hashCode(this.c) + tg.c(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            return k2.b(this.c, ")", p2.b("ClaimButtonResponse(text=", this.a, ", enabled=", ", delayMs=", this.b));
        }
    }

    public hm8(int i, String str, String str2, String str3, List<String> list, a aVar, c cVar, c06 c06Var, String str4, List<b> list2, boolean z, jl3 jl3Var, List<fn8> list3) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        aVar.getClass();
        cVar.getClass();
        list2.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = list;
        this.f = aVar;
        this.g = cVar;
        this.h = c06Var;
        this.i = str4;
        this.j = list2;
        this.k = z;
        this.l = jl3Var;
        this.m = list3;
    }

    public final String a() {
        return this.i;
    }

    public final a b() {
        return this.f;
    }

    public final List<b> c() {
        return this.j;
    }

    public final List<String> d() {
        return this.e;
    }

    public final c e() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hm8)) {
            return false;
        }
        hm8 hm8Var = (hm8) obj;
        return this.a == hm8Var.a && aa4.e(this.b, hm8Var.b) && aa4.e(this.c, hm8Var.c) && aa4.e(this.d, hm8Var.d) && aa4.e(this.e, hm8Var.e) && aa4.e(this.f, hm8Var.f) && aa4.e(this.g, hm8Var.g) && aa4.e(this.h, hm8Var.h) && aa4.e(this.i, hm8Var.i) && aa4.e(this.j, hm8Var.j) && this.k == hm8Var.k && aa4.e(this.l, hm8Var.l) && aa4.e(this.m, hm8Var.m);
    }

    public final boolean f() {
        return this.k;
    }

    public final jl3 g() {
        return this.l;
    }

    public final String h() {
        return this.d;
    }

    public final int hashCode() {
        int iHashCode = (this.g.hashCode() + ((this.f.hashCode() + e2.b(this.e, zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31)) * 31)) * 31;
        c06 c06Var = this.h;
        int iHashCode2 = (iHashCode + (c06Var == null ? 0 : c06Var.hashCode())) * 31;
        String str = this.i;
        int iC = tg.c(e2.b(this.j, (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31, 31), 31, this.k);
        jl3 jl3Var = this.l;
        int iHashCode3 = (iC + (jl3Var == null ? 0 : jl3Var.hashCode())) * 31;
        List<fn8> list = this.m;
        return iHashCode3 + (list != null ? list.hashCode() : 0);
    }

    public final c06 i() {
        return this.h;
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
        c cVar = this.g;
        c06 c06Var = this.h;
        String str4 = this.i;
        List<b> list2 = this.j;
        boolean z = this.k;
        jl3 jl3Var = this.l;
        List<fn8> list3 = this.m;
        StringBuilder sbE = ng.e(i, "TaskCheckboxDetailsResponse(id=", ", title=", str, ", text=");
        kv2.c(sbE, str2, ", logoUrl=", str3, ", badgeUrls=");
        sbE.append(list);
        sbE.append(", actionButton=");
        sbE.append(aVar);
        sbE.append(", claimButton=");
        sbE.append(cVar);
        sbE.append(", ordInfoResponse=");
        sbE.append(c06Var);
        sbE.append(", aboutUrl=");
        sbE.append(str4);
        sbE.append(", agreements=");
        sbE.append(list2);
        sbE.append(", completed=");
        sbE.append(z);
        sbE.append(", fullTerms=");
        sbE.append(jl3Var);
        sbE.append(", disclaimers=");
        return bg.e(")", list3, sbE);
    }
}
