package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class c10 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    private final String b;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String c;

    @bq7("text")
    private final String d;

    @bq7("logoUrl")
    private final String e;

    @bq7("mainButton")
    private final a f;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("url")
        private final String b;

        public a(String str, String str2) {
            str.getClass();
            str2.getClass();
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
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("ButtonResponse(title=", this.a, ", url=", this.b, ")");
        }
    }

    public c10(int i, String str, String str2, String str3, String str4, a aVar) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        aVar.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = aVar;
    }

    public final ec8 a() {
        return new ec8(this.a, this.c, this.d, this.e, this.f.a(), this.f.b());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c10)) {
            return false;
        }
        c10 c10Var = (c10) obj;
        return this.a == c10Var.a && aa4.e(this.b, c10Var.b) && aa4.e(this.c, c10Var.c) && aa4.e(this.d, c10Var.d) && aa4.e(this.e, c10Var.e) && aa4.e(this.f, c10Var.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + zg.b(zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        String str4 = this.e;
        a aVar = this.f;
        StringBuilder sbE = ng.e(i, "BalanceBannerV2Response(id=", ", type=", str, ", title=");
        kv2.c(sbE, str2, ", text=", str3, ", logoUrl=");
        sbE.append(str4);
        sbE.append(", mainButton=");
        sbE.append(aVar);
        sbE.append(")");
        return sbE.toString();
    }
}
