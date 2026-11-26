package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class gq6 {

    @bq7("go_to_url")
    private final String a;

    @bq7("row_info")
    private final b b;

    @bq7("full_info")
    private final a c;

    @bq7("withdraw_info")
    private final c d;

    @bq7("program_id")
    private final int e;

    public static final class a {

        @bq7("balance")
        private final int a;

        @bq7("button_text")
        private final String b;

        @bq7("icon_url")
        private final String c;

        @bq7("not_enough_description")
        private final String d;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String e;

        @bq7("values")
        private final List<b> f;

        @bq7("rule_button")
        private final C0192a g;

        /* JADX INFO: renamed from: gq6$a$a, reason: collision with other inner class name */
        public static final class C0192a {

            @bq7("go_to_url")
            private final String a;

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String b;

            public C0192a(String str, String str2) {
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
                if (!(obj instanceof C0192a)) {
                    return false;
                }
                C0192a c0192a = (C0192a) obj;
                return aa4.e(this.a, c0192a.a) && aa4.e(this.b, c0192a.b);
            }

            public final int hashCode() {
                return this.b.hashCode() + (this.a.hashCode() * 31);
            }

            public final String toString() {
                return n2.d("RuleButton(go_to_url=", this.a, ", title=", this.b, ")");
            }
        }

        public static final class b {

            @bq7(TtmlNode.ATTR_ID)
            private final int a;

            @bq7("max_value")
            private final int b;

            @bq7("min_value")
            private final int c;

            @bq7("subtitle")
            private final String d;

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String e;

            @bq7("value")
            private final int f;

            public b(int i, int i2, int i3, String str, String str2, int i4) {
                str.getClass();
                str2.getClass();
                this.a = i;
                this.b = i2;
                this.c = i3;
                this.d = str;
                this.e = str2;
                this.f = i4;
            }

            public final int a() {
                return this.a;
            }

            public final int b() {
                return this.b;
            }

            public final int c() {
                return this.c;
            }

            public final String d() {
                return this.d;
            }

            public final String e() {
                return this.e;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof b)) {
                    return false;
                }
                b bVar = (b) obj;
                return this.a == bVar.a && this.b == bVar.b && this.c == bVar.c && aa4.e(this.d, bVar.d) && aa4.e(this.e, bVar.e) && this.f == bVar.f;
            }

            public final int f() {
                return this.f;
            }

            public final int hashCode() {
                return Integer.hashCode(this.f) + zg.b(zg.b(ej0.b(this.c, ej0.b(this.b, Integer.hashCode(this.a) * 31, 31), 31), 31, this.d), 31, this.e);
            }

            public final String toString() {
                int i = this.a;
                int i2 = this.b;
                int i3 = this.c;
                String str = this.d;
                String str2 = this.e;
                int i4 = this.f;
                StringBuilder sbF = bg.f(i, i2, "Variants(id=", ", max_value=", ", min_value=");
                sbF.append(i3);
                sbF.append(", subtitle=");
                sbF.append(str);
                sbF.append(", title=");
                sbF.append(str2);
                sbF.append(", value=");
                sbF.append(i4);
                sbF.append(")");
                return sbF.toString();
            }
        }

        public a(int i, String str, String str2, String str3, String str4, List<b> list, C0192a c0192a) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            str4.getClass();
            list.getClass();
            c0192a.getClass();
            this.a = i;
            this.b = str;
            this.c = str2;
            this.d = str3;
            this.e = str4;
            this.f = list;
            this.g = c0192a;
        }

        public final int a() {
            return this.a;
        }

        public final String b() {
            return this.c;
        }

        public final String c() {
            return this.d;
        }

        public final C0192a d() {
            return this.g;
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
            return this.a == aVar.a && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d) && aa4.e(this.e, aVar.e) && aa4.e(this.f, aVar.f) && aa4.e(this.g, aVar.g);
        }

        public final List<b> f() {
            return this.f;
        }

        public final int hashCode() {
            return this.g.hashCode() + e2.b(this.f, zg.b(zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31);
        }

        public final String toString() {
            int i = this.a;
            String str = this.b;
            String str2 = this.c;
            String str3 = this.d;
            String str4 = this.e;
            List<b> list = this.f;
            C0192a c0192a = this.g;
            StringBuilder sbE = ng.e(i, "FullInfo(balance=", ", button_text=", str, ", icon_url=");
            kv2.c(sbE, str2, ", not_enough_description=", str3, ", title=");
            sbE.append(str4);
            sbE.append(", variants=");
            sbE.append(list);
            sbE.append(", rule_button=");
            sbE.append(c0192a);
            sbE.append(")");
            return sbE.toString();
        }
    }

    public static final class b {

        @bq7("icon_url")
        private final String a;

        @bq7("subtitle")
        private final String b;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String c;

        public b(String str, String str2, String str3) {
            x7.b(str, str2, str3);
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
            return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return me0.d(ad2.d("TransferPromocodeInfo(url=", str, ", subtitle=", str2, ", title="), this.c, ")");
        }
    }

    public static final class c {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("icon_url")
        private final String b;

        public c(String str, String str2) {
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
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return n2.d("WithdrawalInfo(title=", this.a, ", icon_url=", this.b, ")");
        }
    }

    public gq6(String str, b bVar, a aVar, c cVar, int i) {
        str.getClass();
        bVar.getClass();
        aVar.getClass();
        cVar.getClass();
        this.a = str;
        this.b = bVar;
        this.c = aVar;
        this.d = cVar;
        this.e = i;
    }

    public final a a() {
        return this.c;
    }

    public final String b() {
        return this.a;
    }

    public final int c() {
        return this.e;
    }

    public final zj9 d() {
        return new zj9(this.e, this.d.b(), this.d.a());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gq6)) {
            return false;
        }
        gq6 gq6Var = (gq6) obj;
        return aa4.e(this.a, gq6Var.a) && aa4.e(this.b, gq6Var.b) && aa4.e(this.c, gq6Var.c) && aa4.e(this.d, gq6Var.d) && this.e == gq6Var.e;
    }

    public final int hashCode() {
        return Integer.hashCode(this.e) + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        String str = this.a;
        b bVar = this.b;
        a aVar = this.c;
        c cVar = this.d;
        int i = this.e;
        StringBuilder sb = new StringBuilder("PromocodeInfo(go_to_url=");
        sb.append(str);
        sb.append(", transferPromocodeInfo=");
        sb.append(bVar);
        sb.append(", full_info=");
        sb.append(aVar);
        sb.append(", withdrawal_info=");
        sb.append(cVar);
        sb.append(", program_id=");
        return l2.e(sb, ")", i);
    }
}
