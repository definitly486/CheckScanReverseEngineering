package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes.dex */
public final class co0 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("titleColor")
    private final String c;

    @bq7("text")
    private final String d;

    @bq7("imageUrl")
    private final String e;

    @bq7("mainButton")
    private final a f;

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    private final String g;

    @bq7("buttonUrl")
    private final String h;

    @bq7("buttonTitle")
    private final String i;

    @bq7("buttonColor")
    private final String j;

    @bq7("secondButtonTitle")
    private final String k;

    @bq7("ordInfo")
    private final c06 l;

    @bq7("sort")
    private final Integer m;

    @bq7("backgroundColor")
    private final String n;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("titleColor")
        private final String b;

        @bq7("backgroundColor")
        private final String c;

        public a(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final String a() {
            return this.c;
        }

        public final String b() {
            return this.a;
        }

        public final String c() {
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
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c);
        }

        public final int hashCode() {
            String str = this.a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.b;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.c;
            return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return me0.d(ad2.d("ButtonResponse(title=", str, ", titleColor=", str2, ", backgroundColor="), this.c, ")");
        }
    }

    public co0(int i, String str, String str2, String str3, String str4, a aVar, String str5, String str6, String str7, String str8, String str9, c06 c06Var, Integer num, String str10) {
        str.getClass();
        str4.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = aVar;
        this.g = str5;
        this.h = str6;
        this.i = str7;
        this.j = str8;
        this.k = str9;
        this.l = c06Var;
        this.m = num;
        this.n = str10;
    }

    public final String a() {
        return this.j;
    }

    public final String b() {
        return this.i;
    }

    public final int c() {
        return this.a;
    }

    public final String d() {
        return this.e;
    }

    public final a e() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof co0)) {
            return false;
        }
        co0 co0Var = (co0) obj;
        return this.a == co0Var.a && aa4.e(this.b, co0Var.b) && aa4.e(this.c, co0Var.c) && aa4.e(this.d, co0Var.d) && aa4.e(this.e, co0Var.e) && aa4.e(this.f, co0Var.f) && aa4.e(this.g, co0Var.g) && aa4.e(this.h, co0Var.h) && aa4.e(this.i, co0Var.i) && aa4.e(this.j, co0Var.j) && aa4.e(this.k, co0Var.k) && aa4.e(this.l, co0Var.l) && aa4.e(this.m, co0Var.m) && aa4.e(this.n, co0Var.n);
    }

    public final c06 f() {
        return this.l;
    }

    public final String g() {
        return this.k;
    }

    public final String h() {
        return this.b;
    }

    public final int hashCode() {
        int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
        String str = this.c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iB2 = zg.b((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.e);
        a aVar = this.f;
        int iHashCode2 = (iB2 + (aVar == null ? 0 : aVar.hashCode())) * 31;
        String str3 = this.g;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.h;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.i;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.j;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.k;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        c06 c06Var = this.l;
        int iHashCode8 = (iHashCode7 + (c06Var == null ? 0 : c06Var.hashCode())) * 31;
        Integer num = this.m;
        int iHashCode9 = (iHashCode8 + (num == null ? 0 : num.hashCode())) * 31;
        String str8 = this.n;
        return iHashCode9 + (str8 != null ? str8.hashCode() : 0);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        String str4 = this.e;
        a aVar = this.f;
        String str5 = this.g;
        String str6 = this.h;
        String str7 = this.i;
        String str8 = this.j;
        String str9 = this.k;
        c06 c06Var = this.l;
        Integer num = this.m;
        String str10 = this.n;
        StringBuilder sbE = ng.e(i, "BonusHidableBannerResponse(id=", ", title=", str, ", titleColor=");
        kv2.c(sbE, str2, ", text=", str3, ", imageUrl=");
        sbE.append(str4);
        sbE.append(", mainButton=");
        sbE.append(aVar);
        sbE.append(", type=");
        kv2.c(sbE, str5, ", buttonUrl=", str6, ", buttonTitle=");
        kv2.c(sbE, str7, ", buttonColor=", str8, ", secondButtonTitle=");
        sbE.append(str9);
        sbE.append(", ordInfo=");
        sbE.append(c06Var);
        sbE.append(", sort=");
        sbE.append(num);
        sbE.append(", backgroundColor=");
        sbE.append(str10);
        sbE.append(")");
        return sbE.toString();
    }
}
