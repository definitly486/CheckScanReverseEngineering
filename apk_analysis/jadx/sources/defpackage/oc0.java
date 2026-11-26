package defpackage;

import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class oc0 {

    @bq7("banners")
    private final List<a> a;

    @bq7("polls")
    private final List<a> b;

    public static final class a {

        @bq7("button")
        private final C0308a a;

        @bq7("completeText")
        private final String b;

        @bq7("description")
        private final String c;

        @bq7(TtmlNode.ATTR_ID)
        private final int d;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String e;

        @bq7("variants")
        private final List<b> f;

        /* JADX INFO: renamed from: oc0$a$a, reason: collision with other inner class name */
        public static final class C0308a {

            @bq7("tapAction")
            private final String a;

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String b;

            @bq7("url")
            private final String c;

            public C0308a(String str, String str2, String str3) {
                str2.getClass();
                str3.getClass();
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
                if (!(obj instanceof C0308a)) {
                    return false;
                }
                C0308a c0308a = (C0308a) obj;
                return aa4.e(this.a, c0308a.a) && aa4.e(this.b, c0308a.b) && aa4.e(this.c, c0308a.c);
            }

            public final int hashCode() {
                String str = this.a;
                return this.c.hashCode() + zg.b((str == null ? 0 : str.hashCode()) * 31, 31, this.b);
            }

            public final String toString() {
                String str = this.a;
                String str2 = this.b;
                return me0.d(ad2.d("Button(tapAction=", str, ", title=", str2, ", url="), this.c, ")");
            }
        }

        public static final class b {

            @bq7(NotificationCompat.CATEGORY_EVENT)
            private final String a;

            @bq7(TtmlNode.ATTR_ID)
            private final int b;

            @bq7("text")
            private final String c;

            public b(String str, int i, String str2) {
                str.getClass();
                str2.getClass();
                this.a = str;
                this.b = i;
                this.c = str2;
            }

            public final String a() {
                return this.a;
            }

            public final int b() {
                return this.b;
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
                return aa4.e(this.a, bVar.a) && this.b == bVar.b && aa4.e(this.c, bVar.c);
            }

            public final int hashCode() {
                return this.c.hashCode() + ej0.b(this.b, this.a.hashCode() * 31, 31);
            }

            public final String toString() {
                String str = this.a;
                int i = this.b;
                return me0.d(mz0.a(i, "Variants(event=", str, ", id=", ", text="), this.c, ")");
            }
        }

        public a(C0308a c0308a, String str, String str2, int i, String str3, List<b> list) {
            str3.getClass();
            this.a = c0308a;
            this.b = str;
            this.c = str2;
            this.d = i;
            this.e = str3;
            this.f = list;
        }

        public final C0308a a() {
            return this.a;
        }

        public final String b() {
            return this.b;
        }

        public final String c() {
            return this.c;
        }

        public final int d() {
            return this.d;
        }

        public final String e() {
            return this.e;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && this.d == aVar.d && aa4.e(this.e, aVar.e) && aa4.e(this.f, aVar.f);
        }

        public final List<b> f() {
            return this.f;
        }

        public final int hashCode() {
            C0308a c0308a = this.a;
            int iHashCode = (c0308a == null ? 0 : c0308a.hashCode()) * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.c;
            int iB = zg.b(ej0.b(this.d, (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31), 31, this.e);
            List<b> list = this.f;
            return iB + (list != null ? list.hashCode() : 0);
        }

        public final String toString() {
            C0308a c0308a = this.a;
            String str = this.b;
            String str2 = this.c;
            int i = this.d;
            String str3 = this.e;
            List<b> list = this.f;
            StringBuilder sb = new StringBuilder("Banners(button=");
            sb.append(c0308a);
            sb.append(", completeText=");
            sb.append(str);
            sb.append(", description=");
            o2.e(sb, str2, ", id=", i, ", title=");
            sb.append(str3);
            sb.append(", variants=");
            sb.append(list);
            sb.append(")");
            return sb.toString();
        }
    }

    public oc0(List<a> list, List<a> list2) {
        this.a = list;
        this.b = list2;
    }

    public final List<a> a() {
        return this.a;
    }

    public final List<a> b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oc0)) {
            return false;
        }
        oc0 oc0Var = (oc0) obj;
        return aa4.e(this.a, oc0Var.a) && aa4.e(this.b, oc0Var.b);
    }

    public final int hashCode() {
        List<a> list = this.a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<a> list2 = this.b;
        return iHashCode + (list2 != null ? list2.hashCode() : 0);
    }

    public final String toString() {
        return "BannersResponse(banners=" + this.a + ", polls=" + this.b + ")";
    }
}
