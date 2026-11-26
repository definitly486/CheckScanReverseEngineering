package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes.dex */
public final class u88 {

    @bq7(TtmlNode.LEFT)
    private final b a;

    @bq7(TtmlNode.RIGHT)
    private final c b;

    public static final class a {

        @bq7("text")
        private final String a;

        @bq7("imageUrl")
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
            return n2.d("BottomResponse(text=", this.a, ", imageUrl=", this.b, ")");
        }
    }

    public static final class b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("bottom")
        private final a c;

        public b(String str, String str2, a aVar) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
            this.c = aVar;
        }

        public final a a() {
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
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c);
        }

        public final int hashCode() {
            int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
            a aVar = this.c;
            return iB + (aVar == null ? 0 : aVar.hashCode());
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            a aVar = this.c;
            StringBuilder sbD = ad2.d("LeftResponse(title=", str, ", text=", str2, ", bottom=");
            sbD.append(aVar);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class c {

        @bq7("imageUrl")
        private final String a;

        @bq7("eventPath")
        private final String b;

        @bq7("backgroundImageUrl")
        private final String c;

        @bq7("text")
        private final String d;

        @bq7("textColor")
        private final String e;

        @bq7("url")
        private final String f;

        @bq7("registrationRequired")
        private final boolean g;

        @bq7("arrow")
        private final boolean h;

        public c(String str, String str2, String str3, String str4, String str5, String str6, boolean z, boolean z2) {
            str.getClass();
            str3.getClass();
            str4.getClass();
            str5.getClass();
            str6.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = str5;
            this.f = str6;
            this.g = z;
            this.h = z2;
        }

        public final boolean a() {
            return this.h;
        }

        public final String b() {
            return this.c;
        }

        public final String c() {
            return this.b;
        }

        public final String d() {
            return this.a;
        }

        public final boolean e() {
            return this.g;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b) && aa4.e(this.c, cVar.c) && aa4.e(this.d, cVar.d) && aa4.e(this.e, cVar.e) && aa4.e(this.f, cVar.f) && this.g == cVar.g && this.h == cVar.h;
        }

        public final String f() {
            return this.d;
        }

        public final String g() {
            return this.e;
        }

        public final String h() {
            return this.f;
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            return Boolean.hashCode(this.h) + tg.c(zg.b(zg.b(zg.b(zg.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c), 31, this.d), 31, this.e), 31, this.f), 31, this.g);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            String str4 = this.d;
            String str5 = this.e;
            String str6 = this.f;
            boolean z = this.g;
            boolean z2 = this.h;
            StringBuilder sbD = ad2.d("RightResponse(imageUrl=", str, ", eventPath=", str2, ", backgroundImageUrl=");
            kv2.c(sbD, str3, ", text=", str4, ", textColor=");
            kv2.c(sbD, str5, ", url=", str6, ", registrationRequired=");
            sbD.append(z);
            sbD.append(", arrow=");
            sbD.append(z2);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public u88(b bVar, c cVar) {
        bVar.getClass();
        cVar.getClass();
        this.a = bVar;
        this.b = cVar;
    }

    public final b a() {
        return this.a;
    }

    public final c b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u88)) {
            return false;
        }
        u88 u88Var = (u88) obj;
        return aa4.e(this.a, u88Var.a) && aa4.e(this.b, u88Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "StepEarningBlockResponse(left=" + this.a + ", right=" + this.b + ")";
    }
}
