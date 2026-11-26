package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class to5 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7(TtmlNode.TAG_BODY)
    private final String c;

    @bq7("date")
    private final String d;

    @bq7("url")
    private final String e;

    @bq7("isRead")
    private final boolean f;

    @bq7("agreementRequired")
    private final Boolean g;

    @bq7("ordInfo")
    private final c06 h;

    @bq7("mainButton")
    private final a i;

    @bq7("headerBanner")
    private final b j;

    public static final class a {

        @bq7("text")
        private final String a;

        @bq7("url")
        private final String b;

        public a(String str, String str2) {
            str.getClass();
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
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return n2.d("Button(text=", this.a, ", url=", this.b, ")");
        }
    }

    public static final class b {

        @bq7("logoUrl")
        private final String a;

        @bq7("aspectRatio")
        private final Float b;

        public b(String str, Float f) {
            str.getClass();
            this.a = str;
            this.b = f;
        }

        public final Float a() {
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
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            Float f = this.b;
            return iHashCode + (f == null ? 0 : f.hashCode());
        }

        public final String toString() {
            return "HeaderBanner(logoUrl=" + this.a + ", aspectRatio=" + this.b + ")";
        }
    }

    public to5(int i, String str, String str2, String str3, String str4, boolean z, Boolean bool, c06 c06Var, a aVar, b bVar) {
        x7.b(str, str2, str3);
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = z;
        this.g = bool;
        this.h = c06Var;
        this.i = aVar;
        this.j = bVar;
    }

    public final Boolean a() {
        return this.g;
    }

    public final String b() {
        return this.c;
    }

    public final String c() {
        return this.d;
    }

    public final b d() {
        return this.j;
    }

    public final int e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof to5)) {
            return false;
        }
        to5 to5Var = (to5) obj;
        return this.a == to5Var.a && aa4.e(this.b, to5Var.b) && aa4.e(this.c, to5Var.c) && aa4.e(this.d, to5Var.d) && aa4.e(this.e, to5Var.e) && this.f == to5Var.f && aa4.e(this.g, to5Var.g) && aa4.e(this.h, to5Var.h) && aa4.e(this.i, to5Var.i) && aa4.e(this.j, to5Var.j);
    }

    public final a f() {
        return this.i;
    }

    public final c06 g() {
        return this.h;
    }

    public final String h() {
        return this.b;
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d);
        String str = this.e;
        int iC = tg.c((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.f);
        Boolean bool = this.g;
        int iHashCode = (iC + (bool == null ? 0 : bool.hashCode())) * 31;
        c06 c06Var = this.h;
        int iHashCode2 = (iHashCode + (c06Var == null ? 0 : c06Var.hashCode())) * 31;
        a aVar = this.i;
        int iHashCode3 = (iHashCode2 + (aVar == null ? 0 : aVar.hashCode())) * 31;
        b bVar = this.j;
        return iHashCode3 + (bVar != null ? bVar.hashCode() : 0);
    }

    public final String i() {
        return this.e;
    }

    public final boolean j() {
        return this.f;
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        String str4 = this.e;
        boolean z = this.f;
        Boolean bool = this.g;
        c06 c06Var = this.h;
        a aVar = this.i;
        b bVar = this.j;
        StringBuilder sbE = ng.e(i, "Notification(id=", ", title=", str, ", body=");
        kv2.c(sbE, str2, ", date=", str3, ", url=");
        ud.f(sbE, str4, ", isRead=", z, ", agreementRequired=");
        sbE.append(bool);
        sbE.append(", ordInfo=");
        sbE.append(c06Var);
        sbE.append(", mainButton=");
        sbE.append(aVar);
        sbE.append(", headerBanner=");
        sbE.append(bVar);
        sbE.append(")");
        return sbE.toString();
    }
}
