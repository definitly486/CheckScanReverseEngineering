package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TJKeyValueStorageKt;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class jj4 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("logoUrl")
    private final String c;

    @bq7("terms")
    private final List<String> d;

    @bq7("questionsTitle")
    private final String e;

    @bq7("questions")
    private final List<c> f;

    @bq7("agreements")
    private final List<a> g;

    @bq7("submitText")
    private final String h;

    @bq7("submitDisabled")
    private final boolean i;

    @bq7("ordInfo")
    private final c06 j;

    @bq7("submitted")
    private final boolean k;

    @bq7("submitButton")
    private final d l;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7(TJKeyValueStorageKt.KEY)
        private final String b;

        @bq7("value")
        private final boolean c;

        @bq7("required")
        private final boolean d;

        public a(String str, String str2, boolean z, boolean z2) {
            str.getClass();
            str2.getClass();
            this.a = str;
            this.b = str2;
            this.c = z;
            this.d = z2;
        }

        public final String a() {
            return this.b;
        }

        public final boolean b() {
            return this.d;
        }

        public final String c() {
            return this.a;
        }

        public final boolean d() {
            return this.c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && this.c == aVar.c && this.d == aVar.d;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.d) + tg.c(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            boolean z = this.c;
            boolean z2 = this.d;
            StringBuilder sbD = ad2.d("AgreementsResponse(title=", str, ", key=", str2, ", value=");
            sbD.append(z);
            sbD.append(", required=");
            sbD.append(z2);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class b {

        @bq7(TJKeyValueStorageKt.KEY)
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
            return this.c;
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
            return me0.d(ad2.d("OptionsResponse(key=", str, ", title=", str2, ", imageUrl="), this.c, ")");
        }
    }

    public static final class c {

        @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
        private final qv6 a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7(TJKeyValueStorageKt.KEY)
        private final String c;

        @bq7("value")
        private final String d;

        @bq7("required")
        private final boolean e;

        @bq7("options")
        private final List<b> f;

        public c(qv6 qv6Var, String str, String str2, String str3, boolean z, List<b> list) {
            qv6Var.getClass();
            str.getClass();
            str2.getClass();
            this.a = qv6Var;
            this.b = str;
            this.c = str2;
            this.d = str3;
            this.e = z;
            this.f = list;
        }

        public final String a() {
            return this.c;
        }

        public final List<b> b() {
            return this.f;
        }

        public final boolean c() {
            return this.e;
        }

        public final String d() {
            return this.b;
        }

        public final qv6 e() {
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
            return this.a == cVar.a && aa4.e(this.b, cVar.b) && aa4.e(this.c, cVar.c) && aa4.e(this.d, cVar.d) && this.e == cVar.e && aa4.e(this.f, cVar.f);
        }

        public final String f() {
            return this.d;
        }

        public final int hashCode() {
            int iB = zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
            String str = this.d;
            int iC = tg.c((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.e);
            List<b> list = this.f;
            return iC + (list != null ? list.hashCode() : 0);
        }

        public final String toString() {
            qv6 qv6Var = this.a;
            String str = this.b;
            String str2 = this.c;
            String str3 = this.d;
            boolean z = this.e;
            List<b> list = this.f;
            StringBuilder sb = new StringBuilder("QuestionResponse(type=");
            sb.append(qv6Var);
            sb.append(", title=");
            sb.append(str);
            sb.append(", key=");
            kv2.c(sb, str2, ", value=", str3, ", required=");
            sb.append(z);
            sb.append(", options=");
            sb.append(list);
            sb.append(")");
            return sb.toString();
        }
    }

    public static final class d {

        @bq7("text")
        private final String a;

        @bq7("url")
        private final String b;

        @bq7("submitted")
        private final boolean c;

        @bq7("disabled")
        private final boolean d;

        public d(String str, String str2, boolean z, boolean z2) {
            str.getClass();
            this.a = str;
            this.b = str2;
            this.c = z;
            this.d = z2;
        }

        public final boolean a() {
            return this.d;
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
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return aa4.e(this.a, dVar.a) && aa4.e(this.b, dVar.b) && this.c == dVar.c && this.d == dVar.d;
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            return Boolean.hashCode(this.d) + tg.c((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            boolean z = this.c;
            boolean z2 = this.d;
            StringBuilder sbD = ad2.d("SubmitButtonResponse(text=", str, ", url=", str2, ", submitted=");
            sbD.append(z);
            sbD.append(", disabled=");
            sbD.append(z2);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public jj4(int i, String str, String str2, List<String> list, String str3, List<c> list2, List<a> list3, String str4, boolean z, c06 c06Var, boolean z2, d dVar) {
        str.getClass();
        str2.getClass();
        list.getClass();
        str3.getClass();
        list2.getClass();
        list3.getClass();
        str4.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = list;
        this.e = str3;
        this.f = list2;
        this.g = list3;
        this.h = str4;
        this.i = z;
        this.j = c06Var;
        this.k = z2;
        this.l = dVar;
    }

    public final List<a> a() {
        return this.g;
    }

    public final int b() {
        return this.a;
    }

    public final String c() {
        return this.c;
    }

    public final c06 d() {
        return this.j;
    }

    public final String e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jj4)) {
            return false;
        }
        jj4 jj4Var = (jj4) obj;
        return this.a == jj4Var.a && aa4.e(this.b, jj4Var.b) && aa4.e(this.c, jj4Var.c) && aa4.e(this.d, jj4Var.d) && aa4.e(this.e, jj4Var.e) && aa4.e(this.f, jj4Var.f) && aa4.e(this.g, jj4Var.g) && aa4.e(this.h, jj4Var.h) && this.i == jj4Var.i && aa4.e(this.j, jj4Var.j) && this.k == jj4Var.k && aa4.e(this.l, jj4Var.l);
    }

    public final List<c> f() {
        return this.f;
    }

    public final d g() {
        return this.l;
    }

    public final boolean h() {
        return this.i;
    }

    public final int hashCode() {
        int iC = tg.c(zg.b(e2.b(this.g, e2.b(this.f, zg.b(e2.b(this.d, zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31), 31, this.e), 31), 31), 31, this.h), 31, this.i);
        c06 c06Var = this.j;
        int iC2 = tg.c((iC + (c06Var == null ? 0 : c06Var.hashCode())) * 31, 31, this.k);
        d dVar = this.l;
        return iC2 + (dVar != null ? dVar.hashCode() : 0);
    }

    public final List<String> i() {
        return this.d;
    }

    public final String j() {
        return this.b;
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        List<String> list = this.d;
        String str3 = this.e;
        List<c> list2 = this.f;
        List<a> list3 = this.g;
        String str4 = this.h;
        boolean z = this.i;
        c06 c06Var = this.j;
        boolean z2 = this.k;
        d dVar = this.l;
        StringBuilder sbE = ng.e(i, "LandingPageResponse(id=", ", title=", str, ", image=");
        sbE.append(str2);
        sbE.append(", terms=");
        sbE.append(list);
        sbE.append(", questionTitle=");
        sbE.append(str3);
        sbE.append(", questions=");
        sbE.append(list2);
        sbE.append(", agreements=");
        sbE.append(list3);
        sbE.append(", submitText=");
        sbE.append(str4);
        sbE.append(", submitDisabled=");
        sbE.append(z);
        sbE.append(", ordInfo=");
        sbE.append(c06Var);
        sbE.append(", submitted=");
        sbE.append(z2);
        sbE.append(", submitButton=");
        sbE.append(dVar);
        sbE.append(")");
        return sbE.toString();
    }
}
