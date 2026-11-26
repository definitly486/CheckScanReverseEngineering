package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class tm8 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("text")
    private final String b;

    @bq7("imageUrl")
    private final String c;

    @bq7("badgeUrl")
    private final String d;

    @bq7("cells")
    private final List<b> e;

    @bq7("failSplash")
    private final c f;

    @bq7("mainButton")
    private final a g;

    public static final class a {

        @bq7("text")
        private final String a;

        @bq7(TJAdUnitConstants.String.ENABLED)
        private final boolean b;

        public a(String str, boolean z) {
            str.getClass();
            this.a = str;
            this.b = z;
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
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && this.b == aVar.b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "ButtonResponse(text=" + this.a + ", enabled=" + this.b + ")";
        }
    }

    public static final class b {

        @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
        private final a a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("value")
        private final String c;

        public enum a {
            COMPLETED,
            CURRENT,
            DISABLED,
            FINAL
        }

        public b(a aVar, String str, String str2) {
            aVar.getClass();
            str.getClass();
            str2.getClass();
            this.a = aVar;
            this.b = str;
            this.c = str2;
        }

        public final String a() {
            return this.b;
        }

        public final a b() {
            return this.a;
        }

        public final String c() {
            return this.c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a == bVar.a && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            a aVar = this.a;
            String str = this.b;
            String str2 = this.c;
            StringBuilder sb = new StringBuilder("CellResponse(type=");
            sb.append(aVar);
            sb.append(", title=");
            sb.append(str);
            sb.append(", value=");
            return me0.d(sb, str2, ")");
        }
    }

    public static final class c {

        @bq7("imageUrl")
        private final String a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("text")
        private final String c;

        @bq7("buttonText")
        private final String d;

        public c(String str, String str2, String str3, String str4) {
            m2.e(str, str2, str3, str4);
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
        }

        public final String a() {
            return this.d;
        }

        public final String b() {
            return this.a;
        }

        public final String c() {
            return this.c;
        }

        public final String d() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b) && aa4.e(this.c, cVar.c) && aa4.e(this.d, cVar.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return dg.c(ad2.d("FailSplashResponse(imageUrl=", str, ", title=", str2, ", text="), this.c, ", buttonText=", this.d, ")");
        }
    }

    public tm8(int i, String str, String str2, String str3, List<b> list, c cVar, a aVar) {
        str2.getClass();
        str3.getClass();
        list.getClass();
        aVar.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = list;
        this.f = cVar;
        this.g = aVar;
    }

    public final List<b> a() {
        return this.e;
    }

    public final c b() {
        return this.f;
    }

    public final String c() {
        return this.c;
    }

    public final a d() {
        return this.g;
    }

    public final String e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tm8)) {
            return false;
        }
        tm8 tm8Var = (tm8) obj;
        return this.a == tm8Var.a && aa4.e(this.b, tm8Var.b) && aa4.e(this.c, tm8Var.c) && aa4.e(this.d, tm8Var.d) && aa4.e(this.e, tm8Var.e) && aa4.e(this.f, tm8Var.f) && aa4.e(this.g, tm8Var.g);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        String str = this.b;
        int iB = e2.b(this.e, zg.b(zg.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c), 31, this.d), 31);
        c cVar = this.f;
        return this.g.hashCode() + ((iB + (cVar != null ? cVar.hashCode() : 0)) * 31);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        List<b> list = this.e;
        c cVar = this.f;
        a aVar = this.g;
        StringBuilder sbE = ng.e(i, "TaskDetailedDetailsResponse(id=", ", text=", str, ", imageUrl=");
        kv2.c(sbE, str2, ", badgeUrl=", str3, ", cells=");
        sbE.append(list);
        sbE.append(", failSplash=");
        sbE.append(cVar);
        sbE.append(", mainButton=");
        sbE.append(aVar);
        sbE.append(")");
        return sbE.toString();
    }
}
