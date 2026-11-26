package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class vn7 implements fn7 {

    @bq7(FirebaseAnalytics.Param.CONTENT)
    private final a a;

    public static final class a {

        @bq7(TtmlNode.ATTR_ID)
        private final int a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("coverUrl")
        private final String c;

        @bq7("badges")
        private final List<C0345a> d;

        /* JADX INFO: renamed from: vn7$a$a, reason: collision with other inner class name */
        public static final class C0345a {

            @bq7("text")
            private final String a;

            @bq7("color")
            private final String b;

            public C0345a(String str, String str2) {
                str.getClass();
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
                if (!(obj instanceof C0345a)) {
                    return false;
                }
                C0345a c0345a = (C0345a) obj;
                return aa4.e(this.a, c0345a.a) && aa4.e(this.b, c0345a.b);
            }

            public final int hashCode() {
                int iHashCode = this.a.hashCode() * 31;
                String str = this.b;
                return iHashCode + (str == null ? 0 : str.hashCode());
            }

            public final String toString() {
                return n2.d("Badge(text=", this.a, ", color=", this.b, ")");
            }
        }

        public a(int i, String str, String str2, List<C0345a> list) {
            str.getClass();
            str2.getClass();
            list.getClass();
            this.a = i;
            this.b = str;
            this.c = str2;
            this.d = list;
        }

        public final List<C0345a> a() {
            return this.d;
        }

        public final String b() {
            return this.c;
        }

        public final int c() {
            return this.a;
        }

        public final String d() {
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
            return this.a == aVar.a && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
        }

        public final String toString() {
            int i = this.a;
            String str = this.b;
            String str2 = this.c;
            List<C0345a> list = this.d;
            StringBuilder sbE = ng.e(i, "Content(id=", ", title=", str, ", coverUrl=");
            sbE.append(str2);
            sbE.append(", badges=");
            sbE.append(list);
            sbE.append(")");
            return sbE.toString();
        }
    }

    public vn7(a aVar) {
        aVar.getClass();
        this.a = aVar;
        fn7.a aVar2 = fn7.a.SelectionHeader;
    }

    public final a a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof vn7) && aa4.e(this.a, ((vn7) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "SelectionOfferResponse(content=" + this.a + ")";
    }
}
