package defpackage;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJKeyValueStorageKt;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class hl3 {

    @bq7("buyer")
    private final String a;

    @bq7("buyerType")
    private final String b;

    @bq7("createdDate")
    private final String c;

    @bq7("fiscalDocumentNumber")
    private final String d;

    @bq7("fiscalDriveNumber")
    private final String e;

    @bq7("totalSum")
    private final String f;

    @bq7("kktOwner")
    private final String g;

    @bq7("kktOwnerInn")
    private final String h;

    @bq7(TJKeyValueStorageKt.KEY)
    private final String i;

    @bq7("fullInfo")
    private a j;

    public static final class a {

        @bq7("shiftNumber")
        private final long A;

        @bq7("operationType")
        private final long B;

        @bq7("nds18")
        private final Double C;

        @bq7("receiptCode")
        private final Long D;

        @bq7("operator")
        private final String E;

        @bq7("fiscalSign")
        private final String a;

        @bq7("provisionSum")
        private final double b;

        @bq7("user")
        private final String c;

        @bq7("machineNumber")
        private final String d;

        @bq7("totalSum")
        private final double e;

        @bq7("taxationType")
        private final long f;

        @bq7("buyerAddress")
        private final String g;

        @bq7("cashTotalSum")
        private final double h;

        @bq7("creditSum")
        private final double i;

        @bq7("dateTime")
        private final String j;

        @bq7("ecashTotalSum")
        private final double k;

        @bq7("fiscalDocumentFormatVer")
        private final String l;

        @bq7("fiscalDocumentNumber")
        private final long m;

        @bq7("fiscalDriveNumber")
        private final String n;

        @bq7("fnsSite")
        private final String o;

        @bq7("internetSign")
        private final long p;

        @bq7(FirebaseAnalytics.Param.ITEMS)
        private final List<Object> q;

        @bq7("userInn")
        private final String r;

        @bq7("retailPlace")
        private final String s;

        @bq7("retailPlaceAddress")
        private final String t;

        @bq7("prepaidSum")
        private final long u;

        @bq7("kktRegId")
        private final String v;

        @bq7("paymentAgentType")
        private final String w;

        @bq7("requestNumber")
        private final long x;

        @bq7("nds10")
        private final Double y;

        @bq7("messageFiscalSign")
        private final String z;

        public a(String str, double d, String str2, String str3, double d2, long j, String str4, double d3, double d4, String str5, double d5, String str6, long j2, String str7, String str8, long j3, List<Object> list, String str9, String str10, String str11, long j4, String str12, String str13, long j5, Double d6, String str14, long j6, long j7, Double d7, Long l, String str15) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            str4.getClass();
            str5.getClass();
            str6.getClass();
            str7.getClass();
            list.getClass();
            str9.getClass();
            str10.getClass();
            str12.getClass();
            str13.getClass();
            this.a = str;
            this.b = d;
            this.c = str2;
            this.d = str3;
            this.e = d2;
            this.f = j;
            this.g = str4;
            this.h = d3;
            this.i = d4;
            this.j = str5;
            this.k = d5;
            this.l = str6;
            this.m = j2;
            this.n = str7;
            this.o = str8;
            this.p = j3;
            this.q = list;
            this.r = str9;
            this.s = str10;
            this.t = str11;
            this.u = j4;
            this.v = str12;
            this.w = str13;
            this.x = j5;
            this.y = d6;
            this.z = str14;
            this.A = j6;
            this.B = j7;
            this.C = d7;
            this.D = l;
            this.E = str15;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.a, aVar.a) && Double.compare(this.b, aVar.b) == 0 && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d) && Double.compare(this.e, aVar.e) == 0 && this.f == aVar.f && aa4.e(this.g, aVar.g) && Double.compare(this.h, aVar.h) == 0 && Double.compare(this.i, aVar.i) == 0 && aa4.e(this.j, aVar.j) && Double.compare(this.k, aVar.k) == 0 && aa4.e(this.l, aVar.l) && this.m == aVar.m && aa4.e(this.n, aVar.n) && aa4.e(this.o, aVar.o) && this.p == aVar.p && aa4.e(this.q, aVar.q) && aa4.e(this.r, aVar.r) && aa4.e(this.s, aVar.s) && aa4.e(this.t, aVar.t) && this.u == aVar.u && aa4.e(this.v, aVar.v) && aa4.e(this.w, aVar.w) && this.x == aVar.x && aa4.e(this.y, aVar.y) && aa4.e(this.z, aVar.z) && this.A == aVar.A && this.B == aVar.B && aa4.e(this.C, aVar.C) && aa4.e(this.D, aVar.D) && aa4.e(this.E, aVar.E);
        }

        public final int hashCode() {
            int iB = zg.b(vg.b(zg.b((Double.hashCode(this.k) + zg.b((Double.hashCode(this.i) + ((Double.hashCode(this.h) + zg.b(vg.b((Double.hashCode(this.e) + zg.b(zg.b((Double.hashCode(this.b) + (this.a.hashCode() * 31)) * 31, 31, this.c), 31, this.d)) * 31, 31, this.f), 31, this.g)) * 31)) * 31, 31, this.j)) * 31, 31, this.l), 31, this.m), 31, this.n);
            String str = this.o;
            int iB2 = zg.b(zg.b(e2.b(this.q, vg.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.p), 31), 31, this.r), 31, this.s);
            String str2 = this.t;
            int iB3 = vg.b(zg.b(zg.b(vg.b((iB2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.u), 31, this.v), 31, this.w), 31, this.x);
            Double d = this.y;
            int iHashCode = (iB3 + (d == null ? 0 : d.hashCode())) * 31;
            String str3 = this.z;
            int iB4 = vg.b(vg.b((iHashCode + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.A), 31, this.B);
            Double d2 = this.C;
            int iHashCode2 = (iB4 + (d2 == null ? 0 : d2.hashCode())) * 31;
            Long l = this.D;
            int iHashCode3 = (iHashCode2 + (l == null ? 0 : l.hashCode())) * 31;
            String str4 = this.E;
            return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            double d = this.b;
            String str2 = this.c;
            String str3 = this.d;
            double d2 = this.e;
            long j = this.f;
            String str4 = this.g;
            double d3 = this.h;
            double d4 = this.i;
            String str5 = this.j;
            double d5 = this.k;
            String str6 = this.l;
            long j2 = this.m;
            String str7 = this.n;
            String str8 = this.o;
            long j3 = this.p;
            List<Object> list = this.q;
            String str9 = this.r;
            String str10 = this.s;
            String str11 = this.t;
            long j4 = this.u;
            String str12 = this.v;
            String str13 = this.w;
            long j5 = this.x;
            Double d6 = this.y;
            String str14 = this.z;
            long j6 = this.A;
            long j7 = this.B;
            Double d7 = this.C;
            Long l = this.D;
            String str15 = this.E;
            StringBuilder sb = new StringBuilder("FullInfo(fiscalSign=");
            sb.append(str);
            sb.append(", provisionSum=");
            sb.append(d);
            kv2.c(sb, ", user=", str2, ", machineNumber=", str3);
            sb.append(", totalSum=");
            sb.append(d2);
            sb.append(", taxationType=");
            sb.append(j);
            sb.append(", buyerAddress=");
            sb.append(str4);
            sb.append(", cashTotalSum=");
            sb.append(d3);
            sb.append(", creditSum=");
            sb.append(d4);
            sb.append(", dateTime=");
            sb.append(str5);
            sb.append(", ecashTotalSum=");
            sb.append(d5);
            sb.append(", fiscalDocumentFormatVer=");
            sb.append(str6);
            sb.append(", fiscalDocumentNumber=");
            sb.append(j2);
            kv2.c(sb, ", fiscalDriveNumber=", str7, ", fnsSite=", str8);
            dq.d(sb, ", internetSign=", j3, ", items=");
            sb.append(list);
            sb.append(", userInn=");
            sb.append(str9);
            sb.append(", retailPlace=");
            kv2.c(sb, str10, ", retailPlaceAddress=", str11, ", prepaidSum=");
            sb.append(j4);
            sb.append(", kktRegId=");
            sb.append(str12);
            n1.d(sb, ", paymentAgentType=", str13, ", requestNumber=");
            sb.append(j5);
            sb.append(", nds10=");
            sb.append(d6);
            n1.d(sb, ", messageFiscalSign=", str14, ", shiftNumber=");
            sb.append(j6);
            dq.d(sb, ", operationType=", j7, ", nds18=");
            sb.append(d7);
            sb.append(", receiptCode=");
            sb.append(l);
            sb.append(", operator=");
            return me0.d(sb, str15, ")");
        }
    }

    public hl3(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, a aVar) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        str7.getClass();
        str8.getClass();
        str9.getClass();
        aVar.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
        this.h = str8;
        this.i = str9;
        this.j = aVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hl3)) {
            return false;
        }
        hl3 hl3Var = (hl3) obj;
        return aa4.e(this.a, hl3Var.a) && aa4.e(this.b, hl3Var.b) && aa4.e(this.c, hl3Var.c) && aa4.e(this.d, hl3Var.d) && aa4.e(this.e, hl3Var.e) && aa4.e(this.f, hl3Var.f) && aa4.e(this.g, hl3Var.g) && aa4.e(this.h, hl3Var.h) && aa4.e(this.i, hl3Var.i) && aa4.e(this.j, hl3Var.j);
    }

    public final int hashCode() {
        return this.j.hashCode() + zg.b(zg.b(zg.b(zg.b(zg.b(zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f), 31, this.g), 31, this.h), 31, this.i);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        String str5 = this.e;
        String str6 = this.f;
        String str7 = this.g;
        String str8 = this.h;
        String str9 = this.i;
        a aVar = this.j;
        StringBuilder sbD = ad2.d("FullInfoReceipt(buyer=", str, ", buyerType=", str2, ", createdDate=");
        kv2.c(sbD, str3, ", fiscalDocumentNumber=", str4, ", fiscalDriveNumber=");
        kv2.c(sbD, str5, ", totalSum=", str6, ", kktOwner=");
        kv2.c(sbD, str7, ", kktOwnerInn=", str8, ", key=");
        sbD.append(str9);
        sbD.append(", fullInfo=");
        sbD.append(aVar);
        sbD.append(")");
        return sbD.toString();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public hl3(oz6 oz6Var, a aVar) {
        this(oz6Var.a(), oz6Var.b(), oz6Var.c(), oz6Var.d(), oz6Var.e(), oz6Var.i(), oz6Var.g(), oz6Var.h(), oz6Var.f(), aVar);
        oz6Var.getClass();
        aVar.getClass();
    }
}
