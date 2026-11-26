package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class jq6 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7("logoUrl")
    private final String b;

    @bq7("badge")
    private final b c;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String d;

    @bq7("profitTitle")
    private final String e;

    @bq7("subtitle")
    private final String f;

    @bq7("button")
    private final c g;

    @bq7("info")
    private final a h;

    @bq7("isFavorite")
    private final boolean i;

    public static final class a {

        @bq7("value")
        private final String a;

        @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
        private final String b;

        public a(String str, String str2) {
            str.getClass();
            this.a = str;
            this.b = str2;
        }

        public final String a() {
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
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return n2.d("InfoResponse(value=", this.a, ", type=", this.b, ")");
        }
    }

    public static final class b {

        @bq7("text")
        private final String a;

        @bq7("textColor")
        private final String b;

        @bq7("backgroundColor")
        private final String c;

        public b(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
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
            return me0.d(ad2.d("PromocodeBadgeResponse(text=", str, ", textColor=", str2, ", backgroundColor="), this.c, ")");
        }
    }

    public static final class c {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("url")
        private final String b;

        @bq7("action")
        private final String c;

        public c(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final String a() {
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
            return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b) && aa4.e(this.c, cVar.c);
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
            return me0.d(ad2.d("PromocodeButtonResponse(title=", str, ", url=", str2, ", action="), this.c, ")");
        }
    }

    public jq6(int i, String str, b bVar, String str2, String str3, String str4, c cVar, a aVar, boolean z) {
        str.getClass();
        this.a = i;
        this.b = str;
        this.c = bVar;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = cVar;
        this.h = aVar;
        this.i = z;
    }

    public final c a() {
        return this.g;
    }

    public final a b() {
        return this.h;
    }
}
