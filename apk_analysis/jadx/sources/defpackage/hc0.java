package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class hc0 {

    public static final class a extends hc0 {
        public final Integer a;
        public final Integer b;
        public final String c;
        public final Integer d;
        public final fw0 e;
        public final String f;
        public final int g;
        public final long h;
        public final String i;
        public final Integer j;
        public final fw0 k;
        public final String l;
        public final String m;
        public final Integer n;
        public final String o;
        public final Integer p;
        public final b06 q;
        public final String r;
        public final boolean s;

        public a(Integer num, Integer num2, String str, Integer num3, fw0 fw0Var, String str2, int i, long j, String str3, Integer num4, fw0 fw0Var2, String str4, String str5, Integer num5, String str6, Integer num6, b06 b06Var, String str7, boolean z) {
            this.a = num;
            this.b = num2;
            this.c = str;
            this.d = num3;
            this.e = fw0Var;
            this.f = str2;
            this.g = i;
            this.h = j;
            this.i = str3;
            this.j = num4;
            this.k = fw0Var2;
            this.l = str4;
            this.m = str5;
            this.n = num5;
            this.o = str6;
            this.p = num6;
            this.q = b06Var;
            this.r = str7;
            this.s = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d) && aa4.e(this.e, aVar.e) && this.f.equals(aVar.f) && this.g == aVar.g && this.h == aVar.h && aa4.e(this.i, aVar.i) && aa4.e(this.j, aVar.j) && aa4.e(this.k, aVar.k) && aa4.e(this.l, aVar.l) && aa4.e(this.m, aVar.m) && aa4.e(this.n, aVar.n) && aa4.e(this.o, aVar.o) && aa4.e(this.p, aVar.p) && aa4.e(this.q, aVar.q) && this.r.equals(aVar.r) && this.s == aVar.s;
        }

        public final int hashCode() {
            Integer num = this.a;
            int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
            Integer num2 = this.b;
            int iHashCode2 = (iHashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
            String str = this.c;
            int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
            Integer num3 = this.d;
            int iHashCode4 = (iHashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
            fw0 fw0Var = this.e;
            int iB = vg.b(ej0.b(this.g, zg.b((iHashCode4 + (fw0Var == null ? 0 : fw0Var.hashCode())) * 31, 31, this.f), 31), 31, this.h);
            String str2 = this.i;
            int iHashCode5 = (iB + (str2 == null ? 0 : str2.hashCode())) * 31;
            Integer num4 = this.j;
            int iHashCode6 = (iHashCode5 + (num4 == null ? 0 : num4.hashCode())) * 31;
            fw0 fw0Var2 = this.k;
            int iHashCode7 = (iHashCode6 + (fw0Var2 == null ? 0 : fw0Var2.hashCode())) * 31;
            String str3 = this.l;
            int iHashCode8 = (iHashCode7 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.m;
            int iHashCode9 = (iHashCode8 + (str4 == null ? 0 : str4.hashCode())) * 31;
            Integer num5 = this.n;
            int iHashCode10 = (iHashCode9 + (num5 == null ? 0 : num5.hashCode())) * 31;
            String str5 = this.o;
            int iHashCode11 = (iHashCode10 + (str5 == null ? 0 : str5.hashCode())) * 31;
            Integer num6 = this.p;
            int iHashCode12 = (iHashCode11 + (num6 == null ? 0 : num6.hashCode())) * 31;
            b06 b06Var = this.q;
            return Boolean.hashCode(this.s) + zg.b((iHashCode12 + (b06Var != null ? b06Var.hashCode() : 0)) * 31, 31, this.r);
        }

        public final String toString() {
            return "BottomSheet(backgroundColor=" + this.a + ", bottomBackgroundColor=" + this.b + ", bottomText=" + this.c + ", bottomTextColor=" + this.d + ", button=" + this.e + ", expireDate=" + this.f + ", id=" + this.g + ", intervalShowing=" + this.h + ", logoUrl=" + this.i + ", middleTextColor=" + this.j + ", secondaryButton=" + this.k + ", subtitle=" + this.l + ", title=" + this.m + ", titleColor=" + this.n + ", topText=" + this.o + ", topTextColor=" + this.p + ", ordInfo=" + this.q + ", deeplink=" + this.r + ", isRedesign=" + this.s + ")";
        }
    }

    public static final class b extends hc0 {
        public final String a;
        public final String b;
        public final b06 c;
        public final String d;
        public final int e;

        public b(int i, b06 b06Var, String str, String str2, String str3) {
            str3.getClass();
            this.a = str;
            this.b = str2;
            this.c = b06Var;
            this.d = str3;
            this.e = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && this.b.equals(bVar.b) && aa4.e(this.c, bVar.c) && this.d.equals(bVar.d) && this.e == bVar.e;
        }

        public final int hashCode() {
            String str = this.a;
            int iB = zg.b((str == null ? 0 : str.hashCode()) * 31, 961, this.b);
            b06 b06Var = this.c;
            return Integer.hashCode(this.e) + zg.b((iB + (b06Var != null ? b06Var.hashCode() : 0)) * 31, 31, this.d);
        }

        public final String toString() {
            StringBuilder sbD = ad2.d("SpecialViewModel(imageUrl=", this.a, ", deeplink=", this.b, ", drawableRes=null, ordInfo=");
            sbD.append(this.c);
            sbD.append(", title=");
            sbD.append(this.d);
            sbD.append(", id=");
            return l2.e(sbD, ")", this.e);
        }
    }

    public static final class c extends hc0 {
        public final int a;
        public final String b;
        public final String c;
        public final String d;
        public final String e;
        public final fw0 f;
        public final b06 g;

        public c(int i, String str, String str2, String str3, String str4, fw0 fw0Var, b06 b06Var) {
            str2.getClass();
            this.a = i;
            this.b = str;
            this.c = str2;
            this.d = str3;
            this.e = str4;
            this.f = fw0Var;
            this.g = b06Var;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.a == cVar.a && aa4.e(this.b, cVar.b) && aa4.e(this.c, cVar.c) && this.d.equals(cVar.d) && this.e.equals(cVar.e) && aa4.e(this.f, cVar.f) && aa4.e(this.g, cVar.g);
        }

        public final int hashCode() {
            int iHashCode = Integer.hashCode(this.a) * 31;
            String str = this.b;
            int iB = zg.b(zg.b(zg.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c), 31, this.d), 31, this.e);
            fw0 fw0Var = this.f;
            int iHashCode2 = (iB + (fw0Var == null ? 0 : fw0Var.hashCode())) * 31;
            b06 b06Var = this.g;
            return iHashCode2 + (b06Var != null ? b06Var.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbE = ng.e(this.a, "Splash(id=", ", imageUrl=", this.b, ", title=");
            kv2.c(sbE, this.c, ", description=", this.d, ", deeplink=");
            sbE.append(this.e);
            sbE.append(", button=");
            sbE.append(this.f);
            sbE.append(", ordInfo=");
            sbE.append(this.g);
            sbE.append(")");
            return sbE.toString();
        }
    }
}
