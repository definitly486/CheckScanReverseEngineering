package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class hq6 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("text")
    private final String c;

    @bq7("logoUrl")
    private final String d;

    @bq7("bottom")
    private final a e;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("badge")
        private final C0195a c;

        /* JADX INFO: renamed from: hq6$a$a, reason: collision with other inner class name */
        public static final class C0195a {

            @bq7("text")
            private final String a;

            @bq7("textColor")
            private final String b;

            @bq7("backgroundColor")
            private final String c;

            public C0195a(String str, String str2, String str3) {
                x7.b(str, str2, str3);
                this.a = str;
                this.b = str2;
                this.c = str3;
            }

            public final fr6.a a() {
                return new fr6.a(this.a, this.b, this.c);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0195a)) {
                    return false;
                }
                C0195a c0195a = (C0195a) obj;
                return aa4.e(this.a, c0195a.a) && aa4.e(this.b, c0195a.b) && aa4.e(this.c, c0195a.c);
            }

            public final int hashCode() {
                return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
            }

            public final String toString() {
                String str = this.a;
                String str2 = this.b;
                return me0.d(ad2.d("BadgeResponse(text=", str, ", textColor=", str2, ", backgroundColor="), this.c, ")");
            }
        }

        public a(String str, String str2, C0195a c0195a) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
            this.c = c0195a;
        }

        public final C0195a a() {
            return this.c;
        }

        public final String b() {
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
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c);
        }

        public final int hashCode() {
            int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
            C0195a c0195a = this.c;
            return iB + (c0195a == null ? 0 : c0195a.hashCode());
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            C0195a c0195a = this.c;
            StringBuilder sbD = ad2.d("BottomResponse(title=", str, ", text=", str2, ", badge=");
            sbD.append(c0195a);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public hq6(int i, String str, String str2, String str3, a aVar) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        aVar.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = aVar;
    }

    public final fr6 a() {
        int i = this.a;
        String str = this.d;
        String str2 = this.b;
        String str3 = this.c;
        String strC = this.e.c();
        String strB = this.e.b();
        a.C0195a c0195aA = this.e.a();
        return new fr6(i, str, str2, str3, strC, strB, c0195aA != null ? c0195aA.a() : null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hq6)) {
            return false;
        }
        hq6 hq6Var = (hq6) obj;
        return this.a == hq6Var.a && aa4.e(this.b, hq6Var.b) && aa4.e(this.c, hq6Var.c) && aa4.e(this.d, hq6Var.d) && aa4.e(this.e, hq6Var.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        a aVar = this.e;
        StringBuilder sbE = ng.e(i, "PromocodeResponse(id=", ", title=", str, ", text=");
        kv2.c(sbE, str2, ", logoUrl=", str3, ", bottom=");
        sbE.append(aVar);
        sbE.append(")");
        return sbE.toString();
    }
}
