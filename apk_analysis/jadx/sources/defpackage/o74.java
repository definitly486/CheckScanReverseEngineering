package defpackage;

import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TapjoyConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class o74 {

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String a;

    @bq7("helpInfo")
    private final a b;

    @bq7("insuranceItems")
    private final List<b> c;

    public static final class a {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("iconUrl")
        private final String c;

        public a(String str, String str2, String str3) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public final f74 a(boolean z) {
            return new f74(this.a, this.c, this.b, z);
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
            return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return me0.d(ad2.d("HelpInfoResponse(title=", str, ", text=", str2, ", iconUrl="), this.c, ")");
        }
    }

    public static final class b {

        @bq7(TapjoyConstants.TJC_PLACEMENT_OFFER_ID)
        private final int a;

        @bq7("iconUrl")
        private final String b;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String c;

        @bq7("text")
        private final String d;

        @bq7("badgeUrl")
        private final String e;

        @bq7("buttonUrl")
        private final String f;

        @bq7("buttonText")
        private final String g;

        @bq7("deadlineMillisecondsLeft")
        private final Long h;

        public b(int i, String str, String str2, String str3, String str4, String str5, String str6, Long l) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            str4.getClass();
            str5.getClass();
            str6.getClass();
            this.a = i;
            this.b = str;
            this.c = str2;
            this.d = str3;
            this.e = str4;
            this.f = str5;
            this.g = str6;
            this.h = l;
        }

        public final a74 a() {
            return new a74(this.a, this.b, this.c, this.d, this.e, this.h, new a74.a(this.g, this.f));
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a == bVar.a && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c) && aa4.e(this.d, bVar.d) && aa4.e(this.e, bVar.e) && aa4.e(this.f, bVar.f) && aa4.e(this.g, bVar.g) && aa4.e(this.h, bVar.h);
        }

        public final int hashCode() {
            int iB = zg.b(zg.b(zg.b(zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f), 31, this.g);
            Long l = this.h;
            return iB + (l == null ? 0 : l.hashCode());
        }

        public final String toString() {
            int i = this.a;
            String str = this.b;
            String str2 = this.c;
            String str3 = this.d;
            String str4 = this.e;
            String str5 = this.f;
            String str6 = this.g;
            Long l = this.h;
            StringBuilder sbE = ng.e(i, "ItemResponse(offerId=", ", iconUrl=", str, ", title=");
            kv2.c(sbE, str2, ", text=", str3, ", badgeUrl=");
            kv2.c(sbE, str4, ", buttonUrl=", str5, ", buttonText=");
            sbE.append(str6);
            sbE.append(", deadlineMillisecondsLeft=");
            sbE.append(l);
            sbE.append(")");
            return sbE.toString();
        }
    }

    public o74(String str, a aVar, List<b> list) {
        str.getClass();
        list.getClass();
        this.a = str;
        this.b = aVar;
        this.c = list;
    }

    public final x64 a(boolean z) {
        String str = this.a;
        a aVar = this.b;
        List listJ = u96.j(aVar != null ? aVar.a(z) : null);
        List<b> list = this.c;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((b) it.next()).a());
        }
        return new x64(str, qn1.h0(arrayList, listJ));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o74)) {
            return false;
        }
        o74 o74Var = (o74) obj;
        return aa4.e(this.a, o74Var.a) && aa4.e(this.b, o74Var.b) && aa4.e(this.c, o74Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        a aVar = this.b;
        return this.c.hashCode() + ((iHashCode + (aVar == null ? 0 : aVar.hashCode())) * 31);
    }

    public final String toString() {
        String str = this.a;
        a aVar = this.b;
        List<b> list = this.c;
        StringBuilder sb = new StringBuilder("InsuranceShowcaseResponse(title=");
        sb.append(str);
        sb.append(", helpInfo=");
        sb.append(aVar);
        sb.append(", insuranceItems=");
        return bg.e(")", list, sb);
    }
}
