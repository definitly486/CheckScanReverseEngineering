package defpackage;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes.dex */
public final class fc8 {

    @bq7(RemoteConfigConstants.ResponseFieldKey.STATE)
    private final a a;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a {

        @bq7("text")
        private final String a;

        @bq7("counterText")
        private final String b;

        @bq7("bottom")
        private final C0185a c;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String d;

        @bq7("url")
        private final String e;

        @bq7("logoUrl")
        private final String f;

        /* JADX INFO: renamed from: fc8$a$a, reason: collision with other inner class name */
        public static final class C0185a {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("text")
            private final String b;

            public C0185a(String str, String str2) {
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
                if (!(obj instanceof C0185a)) {
                    return false;
                }
                C0185a c0185a = (C0185a) obj;
                return aa4.e(this.a, c0185a.a) && aa4.e(this.b, c0185a.b);
            }

            public final int hashCode() {
                int iHashCode = this.a.hashCode() * 31;
                String str = this.b;
                return iHashCode + (str == null ? 0 : str.hashCode());
            }

            public final String toString() {
                return n2.d("BottomResponse(title=", this.a, ", text=", this.b, ")");
            }
        }

        public a(String str, String str2, C0185a c0185a, String str3, String str4, String str5) {
            m2.e(str, str3, str4, str5);
            this.a = str;
            this.b = str2;
            this.c = c0185a;
            this.d = str3;
            this.e = str4;
            this.f = str5;
        }

        public final d7 a() {
            d7.a aVar;
            String str = this.d;
            String str2 = this.a;
            String str3 = this.b;
            String str4 = this.e;
            String str5 = this.f;
            C0185a c0185a = this.c;
            if (c0185a != null) {
                String strB = c0185a.b();
                String strA = this.c.a();
                if (strA == null) {
                    strA = "";
                }
                aVar = new d7.a(strB, strA);
            } else {
                aVar = null;
            }
            return new d7(str, str2, str3, str4, str5, aVar);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d) && aa4.e(this.e, aVar.e) && aa4.e(this.f, aVar.f);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            C0185a c0185a = this.c;
            return this.f.hashCode() + zg.b(zg.b((iHashCode2 + (c0185a != null ? c0185a.hashCode() : 0)) * 31, 31, this.d), 31, this.e);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            C0185a c0185a = this.c;
            String str3 = this.d;
            String str4 = this.e;
            String str5 = this.f;
            StringBuilder sbD = ad2.d("BlockResponse(text=", str, ", counterText=", str2, ", bottom=");
            sbD.append(c0185a);
            sbD.append(", title=");
            sbD.append(str3);
            sbD.append(", url=");
            return dg.c(sbD, str4, ", logoUrl=", str5, ")");
        }
    }

    public fc8(a aVar) {
        this.a = aVar;
    }

    public final a a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof fc8) && aa4.e(this.a, ((fc8) obj).a);
    }

    public final int hashCode() {
        a aVar = this.a;
        if (aVar == null) {
            return 0;
        }
        return aVar.hashCode();
    }

    public final String toString() {
        return "SubscriptionBlockResponse(state=" + this.a + ")";
    }
}
