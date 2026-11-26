package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class mo8 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("text")
    private final String c;

    @bq7("logoUrl")
    private final String d;

    @bq7("subtitle")
    private final String e;

    @bq7("aboutUrl")
    private final String f;

    @bq7("badgeUrls")
    private final List<String> g;

    @bq7("claimButton")
    private final a h;

    @bq7("ordInfo")
    private final c06 i;

    @bq7("subtasks")
    private final List<b> j;

    @bq7("fullTerms")
    private final jl3 k;

    @bq7("disclaimers")
    private final List<fn8> l;

    public static final class a {

        @bq7("text")
        private final String a;

        @bq7(TJAdUnitConstants.String.ENABLED)
        private final boolean b;

        @bq7("delayMs")
        private final long c;

        public a(String str, boolean z, long j) {
            str.getClass();
            this.a = str;
            this.b = z;
            this.c = j;
        }

        public final long a() {
            return this.c;
        }

        public final boolean b() {
            return this.b;
        }

        public final String c() {
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
            return Long.hashCode(this.c) + tg.c(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            return k2.b(this.c, ")", p2.b("ClaimButtonResponse(text=", this.a, ", enabled=", ", delayMs=", this.b));
        }
    }

    public static final class b {

        @bq7(TtmlNode.ATTR_ID)
        private final int a;

        @bq7("text")
        private final String b;

        @bq7("completed")
        private final boolean c;

        @bq7("actionButton")
        private final a d;

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

            public final boolean b() {
                return this.c;
            }

            public final String c() {
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
                return dh.e(p2.b("ButtonResponse(text=", str, ", enabled=", ", registrationRequired=", z), this.c, ")");
            }
        }

        public b(int i, String str, boolean z, a aVar) {
            str.getClass();
            this.a = i;
            this.b = str;
            this.c = z;
            this.d = aVar;
        }

        public final a a() {
            return this.d;
        }

        public final boolean b() {
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
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a == bVar.a && aa4.e(this.b, bVar.b) && this.c == bVar.c && aa4.e(this.d, bVar.d);
        }

        public final int hashCode() {
            int iC = tg.c(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
            a aVar = this.d;
            return iC + (aVar == null ? 0 : aVar.hashCode());
        }

        public final String toString() {
            int i = this.a;
            String str = this.b;
            boolean z = this.c;
            a aVar = this.d;
            StringBuilder sbE = ng.e(i, "SubtaskResponse(id=", ", text=", str, ", completed=");
            sbE.append(z);
            sbE.append(", actionButton=");
            sbE.append(aVar);
            sbE.append(")");
            return sbE.toString();
        }
    }

    public mo8(int i, String str, String str2, String str3, String str4, String str5, List<String> list, a aVar, c06 c06Var, List<b> list2, jl3 jl3Var, List<fn8> list3) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        aVar.getClass();
        list2.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = list;
        this.h = aVar;
        this.i = c06Var;
        this.j = list2;
        this.k = jl3Var;
        this.l = list3;
    }

    public final String a() {
        return this.f;
    }

    public final List<String> b() {
        return this.g;
    }

    public final a c() {
        return this.h;
    }

    public final List<fn8> d() {
        return this.l;
    }

    public final jl3 e() {
        return this.k;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mo8)) {
            return false;
        }
        mo8 mo8Var = (mo8) obj;
        return this.a == mo8Var.a && aa4.e(this.b, mo8Var.b) && aa4.e(this.c, mo8Var.c) && aa4.e(this.d, mo8Var.d) && aa4.e(this.e, mo8Var.e) && aa4.e(this.f, mo8Var.f) && aa4.e(this.g, mo8Var.g) && aa4.e(this.h, mo8Var.h) && aa4.e(this.i, mo8Var.i) && aa4.e(this.j, mo8Var.j) && aa4.e(this.k, mo8Var.k) && aa4.e(this.l, mo8Var.l);
    }

    public final String f() {
        return this.d;
    }

    public final c06 g() {
        return this.i;
    }

    public final List<b> h() {
        return this.j;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d);
        String str = this.e;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f;
        int iHashCode2 = (this.h.hashCode() + e2.b(this.g, (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31)) * 31;
        c06 c06Var = this.i;
        int iB2 = e2.b(this.j, (iHashCode2 + (c06Var == null ? 0 : c06Var.hashCode())) * 31, 31);
        jl3 jl3Var = this.k;
        int iHashCode3 = (iB2 + (jl3Var == null ? 0 : jl3Var.hashCode())) * 31;
        List<fn8> list = this.l;
        return iHashCode3 + (list != null ? list.hashCode() : 0);
    }

    public final String i() {
        return this.e;
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
        String str4 = this.e;
        String str5 = this.f;
        List<String> list = this.g;
        a aVar = this.h;
        c06 c06Var = this.i;
        List<b> list2 = this.j;
        jl3 jl3Var = this.k;
        List<fn8> list3 = this.l;
        StringBuilder sbE = ng.e(i, "TaskSimpleWithSubtasksDetailsResponse(id=", ", title=", str, ", text=");
        kv2.c(sbE, str2, ", logoUrl=", str3, ", subtitle=");
        kv2.c(sbE, str4, ", aboutUrl=", str5, ", badgeUrls=");
        sbE.append(list);
        sbE.append(", claimButton=");
        sbE.append(aVar);
        sbE.append(", ordInfoResponse=");
        sbE.append(c06Var);
        sbE.append(", subtasks=");
        sbE.append(list2);
        sbE.append(", fullTerms=");
        sbE.append(jl3Var);
        sbE.append(", disclaimers=");
        sbE.append(list3);
        sbE.append(")");
        return sbE.toString();
    }
}
