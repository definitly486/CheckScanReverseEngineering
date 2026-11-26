package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class t90 {

    @bq7(TtmlNode.ATTR_ID)
    private final Integer a;

    @bq7("name")
    private final String b;

    @bq7("info")
    private final String c;

    @bq7("color")
    private final String d;

    @bq7("options")
    private final List<a> e;

    @bq7("imageUrl")
    private final String f;

    @bq7("rules")
    private final String g;

    @bq7("appInfo")
    private final u90 h;

    public static final class a {

        @bq7(TtmlNode.ATTR_ID)
        private final long a;

        @bq7("name")
        private final String b;

        @bq7("goToUrl")
        private final String c;

        @bq7("bankId")
        private final long d;

        @bq7("popup")
        private final C0335a e;

        @bq7("preview")
        private final b f;

        @bq7("descriptionArray")
        private final List<c> g;

        /* JADX INFO: renamed from: t90$a$a, reason: collision with other inner class name */
        public static final class C0335a {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("text")
            private final String b;

            public C0335a(String str, String str2) {
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
                if (!(obj instanceof C0335a)) {
                    return false;
                }
                C0335a c0335a = (C0335a) obj;
                return aa4.e(this.a, c0335a.a) && aa4.e(this.b, c0335a.b);
            }

            public final int hashCode() {
                return this.b.hashCode() + (this.a.hashCode() * 31);
            }

            public final String toString() {
                return n2.d("PopUp(title=", this.a, ", text=", this.b, ")");
            }
        }

        public static final class b {

            @bq7("color")
            private final String a;

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String b;

            @bq7("imageUrl")
            private final String c;

            public b(String str, String str2, String str3) {
                str.getClass();
                str2.getClass();
                this.a = str;
                this.b = str2;
                this.c = str3;
            }

            public final String a() {
                return this.a;
            }

            public final String b() {
                return this.c;
            }

            public final String c() {
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
                return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c);
            }

            public final int hashCode() {
                int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
                String str = this.c;
                return iB + (str == null ? 0 : str.hashCode());
            }

            public final String toString() {
                String str = this.a;
                String str2 = this.b;
                return me0.d(ad2.d("Preview(color=", str, ", title=", str2, ", imageUrl="), this.c, ")");
            }
        }

        public static final class c {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("description")
            private final String b;

            public c(String str, String str2) {
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
                if (!(obj instanceof c)) {
                    return false;
                }
                c cVar = (c) obj;
                return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b);
            }

            public final int hashCode() {
                String str = this.a;
                int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
                String str2 = this.b;
                return iHashCode + (str2 != null ? str2.hashCode() : 0);
            }

            public final String toString() {
                return n2.d("Term(title=", this.a, ", text=", this.b, ")");
            }
        }

        public a(long j, String str, String str2, long j2, C0335a c0335a, b bVar, List<c> list) {
            str.getClass();
            str2.getClass();
            this.a = j;
            this.b = str;
            this.c = str2;
            this.d = j2;
            this.e = c0335a;
            this.f = bVar;
            this.g = list;
        }

        public final long a() {
            return this.d;
        }

        public final String b() {
            return this.c;
        }

        public final String c() {
            return this.b;
        }

        public final C0335a d() {
            return this.e;
        }

        public final b e() {
            return this.f;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && this.d == aVar.d && aa4.e(this.e, aVar.e) && aa4.e(this.f, aVar.f) && aa4.e(this.g, aVar.g);
        }

        public final List<c> f() {
            return this.g;
        }

        public final int hashCode() {
            int iB = vg.b(zg.b(zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d);
            C0335a c0335a = this.e;
            int iHashCode = (iB + (c0335a == null ? 0 : c0335a.hashCode())) * 31;
            b bVar = this.f;
            int iHashCode2 = (iHashCode + (bVar == null ? 0 : bVar.hashCode())) * 31;
            List<c> list = this.g;
            return iHashCode2 + (list != null ? list.hashCode() : 0);
        }

        public final String toString() {
            long j = this.a;
            String str = this.b;
            String str2 = this.c;
            long j2 = this.d;
            C0335a c0335a = this.e;
            b bVar = this.f;
            List<c> list = this.g;
            StringBuilder sbD = ah.d(j, "Card(id=", ", name=", str);
            n1.d(sbD, ", link=", str2, ", bankId=");
            sbD.append(j2);
            sbD.append(", popup=");
            sbD.append(c0335a);
            sbD.append(", preview=");
            sbD.append(bVar);
            sbD.append(", terms=");
            sbD.append(list);
            sbD.append(")");
            return sbD.toString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ t90(Integer num, String str, String str2, String str3, List list, String str4, String str5, u90 u90Var, int i, jh2 jh2Var) {
        u90 u90Var2;
        if ((i & 128) != 0) {
            u90Var2 = new u90(null, 1, 0 == true ? 1 : 0);
        } else {
            u90Var2 = u90Var;
        }
        this(num, str, str2, str3, list, str4, str5, u90Var2);
    }

    public final String a() {
        return this.d;
    }

    public final String b() {
        return this.c;
    }

    public final String c() {
        return this.f;
    }

    public final String d() {
        return this.g;
    }

    public final String e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t90)) {
            return false;
        }
        t90 t90Var = (t90) obj;
        return aa4.e(this.a, t90Var.a) && aa4.e(this.b, t90Var.b) && aa4.e(this.c, t90Var.c) && aa4.e(this.d, t90Var.d) && aa4.e(this.e, t90Var.e) && aa4.e(this.f, t90Var.f) && aa4.e(this.g, t90Var.g) && aa4.e(this.h, t90Var.h);
    }

    public final List<a> f() {
        return this.e;
    }

    public final int hashCode() {
        Integer num = this.a;
        int iB = zg.b((num == null ? 0 : num.hashCode()) * 31, 31, this.b);
        String str = this.c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iB2 = e2.b(this.e, (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31);
        String str3 = this.f;
        int iHashCode2 = (iB2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.g;
        return this.h.hashCode() + ((iHashCode2 + (str4 != null ? str4.hashCode() : 0)) * 31);
    }

    public final String toString() {
        Integer num = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        List<a> list = this.e;
        String str4 = this.f;
        String str5 = this.g;
        u90 u90Var = this.h;
        StringBuilder sb = new StringBuilder("BankInfo(id=");
        sb.append(num);
        sb.append(", name=");
        sb.append(str);
        sb.append(", description=");
        kv2.c(sb, str2, ", color=", str3, ", options=");
        sb.append(list);
        sb.append(", imageUrl=");
        sb.append(str4);
        sb.append(", mainTerms=");
        sb.append(str5);
        sb.append(", appInfo=");
        sb.append(u90Var);
        sb.append(")");
        return sb.toString();
    }

    public t90(Integer num, String str, String str2, String str3, List<a> list, String str4, String str5, u90 u90Var) {
        str.getClass();
        list.getClass();
        u90Var.getClass();
        this.a = num;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = list;
        this.f = str4;
        this.g = str5;
        this.h = u90Var;
    }
}
