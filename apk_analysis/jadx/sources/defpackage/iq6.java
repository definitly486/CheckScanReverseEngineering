package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class iq6 {

    @bq7("bottom")
    private b a;

    @bq7(TtmlNode.ATTR_ID)
    private int b;

    @bq7("isFavorite")
    private boolean c;

    @bq7("logoUrl")
    private String d;

    @bq7("subtitle")
    private String e;

    @bq7(TJAdUnitConstants.String.TITLE)
    private String f;

    public static final class a {

        @bq7("backgroundColor")
        private String a;

        @bq7("text")
        private String b;

        @bq7("textColor")
        private String c;

        public a(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final String a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public final String c() {
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
            return me0.d(ad2.d("BadgeResponse(backgroundColor=", str, ", text=", str2, ", textColor="), this.c, ")");
        }
    }

    public static final class b {

        @bq7("badge")
        private a a;

        @bq7("subtitle")
        private String b;

        @bq7(TJAdUnitConstants.String.TITLE)
        private String c;

        public b(a aVar, String str, String str2) {
            this.a = aVar;
            this.b = str;
            this.c = str2;
        }

        public final er6.b a() {
            a aVar = this.a;
            String strA = aVar != null ? aVar.a() : null;
            a aVar2 = this.a;
            String strB = aVar2 != null ? aVar2.b() : null;
            a aVar3 = this.a;
            String strC = aVar3 != null ? aVar3.c() : null;
            er6.a aVar4 = new er6.a();
            aVar4.a = strA;
            aVar4.b = strB;
            aVar4.c = strC;
            String str = this.b;
            String str2 = this.c;
            er6.b bVar = new er6.b();
            bVar.a = aVar4;
            bVar.b = str;
            bVar.c = str2;
            return bVar;
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
            a aVar = this.a;
            int iHashCode = (aVar == null ? 0 : aVar.hashCode()) * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.c;
            return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            a aVar = this.a;
            String str = this.b;
            String str2 = this.c;
            StringBuilder sb = new StringBuilder("BottomResponse(badge=");
            sb.append(aVar);
            sb.append(", subtitle=");
            sb.append(str);
            sb.append(", title=");
            return me0.d(sb, str2, ")");
        }
    }

    public iq6(b bVar, int i, boolean z, String str, String str2, String str3) {
        str2.getClass();
        str3.getClass();
        this.a = bVar;
        this.b = i;
        this.c = z;
        this.d = str;
        this.e = str2;
        this.f = str3;
    }

    public final er6 a() {
        b bVar = this.a;
        return new er6(bVar != null ? bVar.a() : null, this.b, this.c, this.d, this.e, this.f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof iq6)) {
            return false;
        }
        iq6 iq6Var = (iq6) obj;
        return aa4.e(this.a, iq6Var.a) && this.b == iq6Var.b && this.c == iq6Var.c && aa4.e(this.d, iq6Var.d) && aa4.e(this.e, iq6Var.e) && aa4.e(this.f, iq6Var.f);
    }

    public final int hashCode() {
        b bVar = this.a;
        int iC = tg.c(ej0.b(this.b, (bVar == null ? 0 : bVar.hashCode()) * 31, 31), 31, this.c);
        String str = this.d;
        return this.f.hashCode() + zg.b((iC + (str != null ? str.hashCode() : 0)) * 31, 31, this.e);
    }

    public final String toString() {
        b bVar = this.a;
        int i = this.b;
        boolean z = this.c;
        String str = this.d;
        String str2 = this.e;
        String str3 = this.f;
        StringBuilder sb = new StringBuilder("PromocodeResponse(bottom=");
        sb.append(bVar);
        sb.append(", id=");
        sb.append(i);
        sb.append(", isFavorite=");
        sb.append(z);
        sb.append(", logoUrl=");
        sb.append(str);
        sb.append(", subtitle=");
        return dg.c(sb, str2, ", title=", str3, ")");
    }
}
