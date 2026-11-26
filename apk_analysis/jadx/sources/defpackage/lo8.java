package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class lo8 {

    @bq7(TtmlNode.ATTR_ID)
    private final int a;

    @bq7(TJAdUnitConstants.String.TITLE)
    private final String b;

    @bq7("text")
    private final String c;

    @bq7("logoUrl")
    private final String d;

    @bq7("subtitle")
    private final String e;

    @bq7("ordInfo")
    private final c06 f;

    @bq7("subtasks")
    private final List<a> g;

    @bq7("fullTerms")
    private final jl3 h;

    @bq7("disclaimers")
    private final List<fn8> i;

    public static final class a {

        @bq7(TtmlNode.ATTR_ID)
        private final int a;

        @bq7("text")
        private final String b;

        @bq7("aboutUrl")
        private final String c;

        @bq7("completed")
        private final boolean d;

        @bq7("rewardClaimedText")
        private final String e;

        @bq7("actionButton")
        private final b f;

        @bq7("claimButton")
        private final b g;

        @bq7("badgeUrls")
        private final List<String> h;

        /* JADX INFO: renamed from: lo8$a$a, reason: collision with other inner class name */
        public enum EnumC0299a {
            ACTION,
            CLAIM
        }

        public static final class b {

            @bq7("text")
            private final String a;

            @bq7(TJAdUnitConstants.String.ENABLED)
            private final boolean b;

            @bq7("actionState")
            private final EnumC0299a c;

            @bq7("registrationRequired")
            private final Boolean d;

            public b(String str, boolean z, EnumC0299a enumC0299a, Boolean bool) {
                str.getClass();
                this.a = str;
                this.b = z;
                this.c = enumC0299a;
                this.d = bool;
            }

            public final EnumC0299a a() {
                return this.c;
            }

            public final boolean b() {
                return this.b;
            }

            public final Boolean c() {
                return this.d;
            }

            public final String d() {
                return this.a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof b)) {
                    return false;
                }
                b bVar = (b) obj;
                return aa4.e(this.a, bVar.a) && this.b == bVar.b && this.c == bVar.c && aa4.e(this.d, bVar.d);
            }

            public final int hashCode() {
                int iC = tg.c(this.a.hashCode() * 31, 31, this.b);
                EnumC0299a enumC0299a = this.c;
                int iHashCode = (iC + (enumC0299a == null ? 0 : enumC0299a.hashCode())) * 31;
                Boolean bool = this.d;
                return iHashCode + (bool != null ? bool.hashCode() : 0);
            }

            public final String toString() {
                String str = this.a;
                boolean z = this.b;
                EnumC0299a enumC0299a = this.c;
                Boolean bool = this.d;
                StringBuilder sbB = p2.b("ButtonResponse(text=", str, ", enabled=", ", actionState=", z);
                sbB.append(enumC0299a);
                sbB.append(", registrationRequired=");
                sbB.append(bool);
                sbB.append(")");
                return sbB.toString();
            }
        }

        public a(int i, String str, String str2, boolean z, String str3, b bVar, b bVar2, List<String> list) {
            str.getClass();
            list.getClass();
            this.a = i;
            this.b = str;
            this.c = str2;
            this.d = z;
            this.e = str3;
            this.f = bVar;
            this.g = bVar2;
            this.h = list;
        }

        public final String a() {
            return this.c;
        }

        public final b b() {
            return this.f;
        }

        public final List<String> c() {
            return this.h;
        }

        public final boolean d() {
            return this.d;
        }

        public final int e() {
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
            return this.a == aVar.a && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && this.d == aVar.d && aa4.e(this.e, aVar.e) && aa4.e(this.f, aVar.f) && aa4.e(this.g, aVar.g) && aa4.e(this.h, aVar.h);
        }

        public final String f() {
            return this.e;
        }

        public final String g() {
            return this.b;
        }

        public final int hashCode() {
            int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
            String str = this.c;
            int iC = tg.c((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
            String str2 = this.e;
            int iHashCode = (iC + (str2 == null ? 0 : str2.hashCode())) * 31;
            b bVar = this.f;
            int iHashCode2 = (iHashCode + (bVar == null ? 0 : bVar.hashCode())) * 31;
            b bVar2 = this.g;
            return this.h.hashCode() + ((iHashCode2 + (bVar2 != null ? bVar2.hashCode() : 0)) * 31);
        }

        public final String toString() {
            int i = this.a;
            String str = this.b;
            String str2 = this.c;
            boolean z = this.d;
            String str3 = this.e;
            b bVar = this.f;
            b bVar2 = this.g;
            List<String> list = this.h;
            StringBuilder sbE = ng.e(i, "SubtaskResponse(id=", ", text=", str, ", aboutUrl=");
            ud.f(sbE, str2, ", completed=", z, ", rewardClaimedText=");
            sbE.append(str3);
            sbE.append(", actionButton=");
            sbE.append(bVar);
            sbE.append(", claimButton=");
            sbE.append(bVar2);
            sbE.append(", badgeUrls=");
            sbE.append(list);
            sbE.append(")");
            return sbE.toString();
        }
    }

    public lo8(int i, String str, String str2, String str3, String str4, c06 c06Var, List<a> list, jl3 jl3Var, List<fn8> list2) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = c06Var;
        this.g = list;
        this.h = jl3Var;
        this.i = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [o77$a] */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [o77$a] */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r20v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v19, types: [kx2] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v20, types: [java.util.ArrayList] */
    public final k77 a() {
        ?? arrayList;
        ?? aVar;
        ?? aVar2;
        List listH = u96.h(new j77(this.b, this.d));
        b06 b06Var = null;
        List listH2 = u96.h(new cn8(this.c, null, false, false));
        List<fn8> list = this.i;
        if (list != null) {
            List<fn8> list2 = list;
            arrayList = new ArrayList(kn1.q(list2, 10));
            for (fn8 fn8Var : list2) {
                arrayList.add(new cn8(fn8Var.b(), fn8Var.a(), true, false));
            }
        } else {
            arrayList = 0;
        }
        if (arrayList == 0) {
            arrayList = kx2.b;
        }
        ArrayList arrayListH0 = qn1.h0(u96.h(new gn8(qn1.h0((Iterable) arrayList, listH2), true)), listH);
        jl3 jl3Var = this.h;
        ArrayList arrayListH1 = qn1.h0(u96.j(jl3Var != null ? jl3Var.a() : null), arrayListH0);
        String str = this.e;
        ArrayList arrayListH2 = qn1.h0(u96.j(str != null ? new c77(str) : null), arrayListH1);
        List<a> list3 = this.g;
        ArrayList arrayList2 = new ArrayList(kn1.q(list3, 10));
        for (a aVar3 : list3) {
            a.b bVarB = aVar3.b();
            if ((bVarB != null ? bVarB.a() : b06Var) == a.EnumC0299a.ACTION) {
                a.b bVarB2 = aVar3.b();
                String strD = bVarB2.d();
                Boolean boolC = bVarB2.c();
                aVar = new o77.a(strD, boolC != null ? boolC.booleanValue() : false, bVarB2.b(), false);
            } else {
                aVar = b06Var;
            }
            a.b bVarB3 = aVar3.b();
            if ((bVarB3 != null ? bVarB3.a() : b06Var) == a.EnumC0299a.CLAIM) {
                a.b bVarB4 = aVar3.b();
                String strD2 = bVarB4.d();
                Boolean boolC2 = bVarB4.c();
                aVar2 = new o77.a(strD2, boolC2 != null ? boolC2.booleanValue() : false, bVarB4.b(), false);
            } else {
                aVar2 = b06Var;
            }
            int iE = aVar3.e();
            String strG = aVar3.g();
            boolean zD = aVar3.d();
            List<String> listC = aVar3.c();
            ArrayList arrayList3 = new ArrayList(kn1.q(listC, 10));
            int i = 0;
            for (Object obj : listC) {
                int i2 = i + 1;
                if (i < 0) {
                    ?? r20 = b06Var;
                    u96.o();
                    throw r20;
                }
                b06 b06Var2 = b06Var;
                arrayList3.add(new f77((String) obj, i == 0 ? aVar3.a() : b06Var2));
                i = i2;
                b06Var = b06Var2;
            }
            arrayList2.add(new o77(iE, strG, zD, aVar, aVar2, arrayList3, aVar3.f()));
        }
        b06 b06Var3 = b06Var;
        ArrayList arrayListH3 = qn1.h0(arrayList2, arrayListH2);
        c06 c06Var = this.f;
        return new k77(arrayListH3, c06Var != null ? c06Var.f() : b06Var3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lo8)) {
            return false;
        }
        lo8 lo8Var = (lo8) obj;
        return this.a == lo8Var.a && aa4.e(this.b, lo8Var.b) && aa4.e(this.c, lo8Var.c) && aa4.e(this.d, lo8Var.d) && aa4.e(this.e, lo8Var.e) && aa4.e(this.f, lo8Var.f) && aa4.e(this.g, lo8Var.g) && aa4.e(this.h, lo8Var.h) && aa4.e(this.i, lo8Var.i);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d);
        String str = this.e;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        c06 c06Var = this.f;
        int iB2 = e2.b(this.g, (iHashCode + (c06Var == null ? 0 : c06Var.hashCode())) * 31, 31);
        jl3 jl3Var = this.h;
        int iHashCode2 = (iB2 + (jl3Var == null ? 0 : jl3Var.hashCode())) * 31;
        List<fn8> list = this.i;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        int i = this.a;
        String str = this.b;
        String str2 = this.c;
        String str3 = this.d;
        String str4 = this.e;
        c06 c06Var = this.f;
        List<a> list = this.g;
        jl3 jl3Var = this.h;
        List<fn8> list2 = this.i;
        StringBuilder sbE = ng.e(i, "TaskSimpleWithRewardedSubtasksDetailsResponse(id=", ", title=", str, ", text=");
        kv2.c(sbE, str2, ", logoUrl=", str3, ", subtitle=");
        sbE.append(str4);
        sbE.append(", ordInfoResponse=");
        sbE.append(c06Var);
        sbE.append(", subtasks=");
        sbE.append(list);
        sbE.append(", fullTerms=");
        sbE.append(jl3Var);
        sbE.append(", disclaimers=");
        return bg.e(")", list2, sbE);
    }
}
