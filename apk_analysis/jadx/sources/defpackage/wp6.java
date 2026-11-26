package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class wp6 {

    @bq7("meta")
    private final b a;

    @bq7("motivationBanner")
    private final f b;

    @bq7("promos")
    private final List<h> c;

    public static final class b {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("listId")
        private final String b;

        @bq7("rankerVersion")
        private final String c;

        @bq7("experimentKey")
        private final String d;

        @bq7("experimentVariant")
        private final String e;

        public b(String str, String str2, String str3, String str4, String str5) {
            str.getClass();
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = str5;
        }

        public final String a() {
            return this.d;
        }

        public final String b() {
            return this.e;
        }

        public final String c() {
            return this.b;
        }

        public final String d() {
            return this.c;
        }

        public final String e() {
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
            return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c) && aa4.e(this.d, bVar.d) && aa4.e(this.e, bVar.e);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.c;
            int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.d;
            int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.e;
            return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            String str3 = this.c;
            String str4 = this.d;
            String str5 = this.e;
            StringBuilder sbD = ad2.d("MetaResponse(title=", str, ", listId=", str2, ", rankerVersion=");
            kv2.c(sbD, str3, ", experimentKey=", str4, ", experimentVariant=");
            return me0.d(sbD, str5, ")");
        }
    }

    public static final class f {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("fullTerms")
        private final a c;

        public static final class a {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("text")
            private final String b;

            public a(String str, String str2) {
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
                if (!(obj instanceof a)) {
                    return false;
                }
                a aVar = (a) obj;
                return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b);
            }

            public final int hashCode() {
                return this.b.hashCode() + (this.a.hashCode() * 31);
            }

            public final String toString() {
                return n2.d("InfoButtonResponse(title=", this.a, ", text=", this.b, ")");
            }
        }

        public f(String str, String str2, a aVar) {
            str.getClass();
            this.a = str;
            this.b = str2;
            this.c = aVar;
        }

        public final a a() {
            return this.c;
        }

        public final String b() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return aa4.e(this.a, fVar.a) && aa4.e(this.b, fVar.b) && aa4.e(this.c, fVar.c);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            String str = this.b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            a aVar = this.c;
            return iHashCode2 + (aVar != null ? aVar.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            a aVar = this.c;
            StringBuilder sbD = ad2.d("MotivationResponse(title=", str, ", text=", str2, ", fullTerms=");
            sbD.append(aVar);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class g implements h {
        public static final g a = new g();

        static {
            h.a aVar = h.a.COMMON;
        }

        @Override // wp6.h
        public final pz3 a() throws Exception {
            throw new Exception("Casting of NotSupportedBlock in cards promo is not possible");
        }
    }

    public interface h {

        public enum a {
            COMMON,
            COMMON_RICH_PREVIEW,
            MFO_RICH_PREVIEW,
            MINI_LOGO_BANNER,
            MINI_LOGO_TRANSFER_BANNER,
            TITLE,
            INFO,
            NOT_SUPPORTED
        }

        pz3 a();
    }

    public static final class j implements h {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        public j(String str) {
            str.getClass();
            this.a = str;
            h.a aVar = h.a.COMMON;
        }

        @Override // wp6.h
        public final pz3 a() {
            return new qp6(this.a);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof j) && aa4.e(this.a, ((j) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return me0.c("TitleResponse(title=", this.a, ")");
        }
    }

    public static final class k implements h {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("logoUrl")
        private final String c;

        public k(String str, String str2, String str3) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = str3;
            h.a aVar = h.a.COMMON;
        }

        @Override // wp6.h
        public final pz3 a() {
            return new op6(this.a, this.b, this.c);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return aa4.e(this.a, kVar.a) && aa4.e(this.b, kVar.b) && aa4.e(this.c, kVar.c);
        }

        public final int hashCode() {
            return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            return me0.d(ad2.d("WarningResponse(title=", str, ", text=", str2, ", logoUrl="), this.c, ")");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public wp6(b bVar, f fVar, List<? extends h> list) {
        bVar.getClass();
        list.getClass();
        this.a = bVar;
        this.b = fVar;
        this.c = list;
    }

    public final pp6 a() {
        ap6 ap6Var;
        String strE = this.a.e();
        List<h> list = this.c;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!(((h) obj) instanceof g)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((h) it.next()).a());
        }
        if (this.b != null) {
            String strE2 = this.a.e();
            String strB = this.b.b();
            f.a aVarA = this.b.a();
            ap6Var = new ap6(strE2, strB, aVarA != null ? new ap6.a(aVarA.b(), aVarA.a()) : null);
        } else {
            ap6Var = null;
        }
        return new pp6(strE, arrayList2, ap6Var, this.a.c(), this.a.d(), this.a.a(), this.a.b());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wp6)) {
            return false;
        }
        wp6 wp6Var = (wp6) obj;
        return aa4.e(this.a, wp6Var.a) && aa4.e(this.b, wp6Var.b) && aa4.e(this.c, wp6Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        f fVar = this.b;
        return this.c.hashCode() + ((iHashCode + (fVar == null ? 0 : fVar.hashCode())) * 31);
    }

    public final String toString() {
        b bVar = this.a;
        f fVar = this.b;
        List<h> list = this.c;
        StringBuilder sb = new StringBuilder("PromoTransferShowcaseResponse(meta=");
        sb.append(bVar);
        sb.append(", motivationBanner=");
        sb.append(fVar);
        sb.append(", promos=");
        return bg.e(")", list, sb);
    }

    public static final class d implements h {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("mainButton")
        private final k70.h.a c;

        @bq7("secondButton")
        private final k70.h.a d;

        @bq7("logoUrl")
        private final String e;

        @bq7("itemId")
        private final Integer f;

        @bq7("block")
        private final String g;

        @bq7("badge")
        private final String h;

        @bq7("operationId")
        private final Integer i;

        @bq7("itemState")
        private final String j;

        public /* synthetic */ d(String str, String str2, k70.h.a aVar, k70.h.a aVar2, String str3, Integer num, String str4, String str5, Integer num2, String str6, int i, jh2 jh2Var) {
            this(str, str2, aVar, aVar2, str3, (i & 32) != 0 ? null : num, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? null : num2, (i & 512) != 0 ? null : str6);
        }

        @Override // wp6.h
        public final pz3 a() {
            pw7 pw7Var = new pw7(this.g, this.h, this.f, this.i, this.j);
            String str = this.e;
            String str2 = this.a;
            String str3 = this.b;
            k70.h.a aVar = this.c;
            uj9.a aVarA = aVar != null ? aVar.a() : null;
            k70.h.a aVar2 = this.d;
            return new uj9(str, str2, str3, aVarA, aVar2 != null ? aVar2.a() : null, pw7Var);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return aa4.e(this.a, dVar.a) && aa4.e(this.b, dVar.b) && aa4.e(this.c, dVar.c) && aa4.e(this.d, dVar.d) && aa4.e(this.e, dVar.e) && aa4.e(this.f, dVar.f) && aa4.e(this.g, dVar.g) && aa4.e(this.h, dVar.h) && aa4.e(this.i, dVar.i) && aa4.e(this.j, dVar.j);
        }

        public final int hashCode() {
            int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
            k70.h.a aVar = this.c;
            int iHashCode = (iB + (aVar == null ? 0 : aVar.hashCode())) * 31;
            k70.h.a aVar2 = this.d;
            int iB2 = zg.b((iHashCode + (aVar2 == null ? 0 : aVar2.hashCode())) * 31, 31, this.e);
            Integer num = this.f;
            int iHashCode2 = (iB2 + (num == null ? 0 : num.hashCode())) * 31;
            String str = this.g;
            int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.h;
            int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
            Integer num2 = this.i;
            int iHashCode5 = (iHashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
            String str3 = this.j;
            return iHashCode5 + (str3 != null ? str3.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            k70.h.a aVar = this.c;
            k70.h.a aVar2 = this.d;
            String str3 = this.e;
            Integer num = this.f;
            String str4 = this.g;
            String str5 = this.h;
            Integer num2 = this.i;
            String str6 = this.j;
            StringBuilder sbD = ad2.d("MiniLogoBlockResponse(title=", str, ", text=", str2, ", mainButton=");
            sbD.append(aVar);
            sbD.append(", secondButton=");
            sbD.append(aVar2);
            sbD.append(", logoUrl=");
            sbD.append(str3);
            sbD.append(", itemId=");
            sbD.append(num);
            sbD.append(", block=");
            kv2.c(sbD, str4, ", badge=", str5, ", operationId=");
            sbD.append(num2);
            sbD.append(", itemState=");
            sbD.append(str6);
            sbD.append(")");
            return sbD.toString();
        }

        public d(String str, String str2, k70.h.a aVar, k70.h.a aVar2, String str3, Integer num, String str4, String str5, Integer num2, String str6) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = aVar;
            this.d = aVar2;
            this.e = str3;
            this.f = num;
            this.g = str4;
            this.h = str5;
            this.i = num2;
            this.j = str6;
            h.a aVar3 = h.a.COMMON;
        }
    }

    public static final class e implements h {

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String a;

        @bq7("text")
        private final String b;

        @bq7("mainButton")
        private final k70.h.a c;

        @bq7("secondButton")
        private final k70.h.a d;

        @bq7("logoUrl")
        private final String e;

        @bq7("itemId")
        private final Integer f;

        @bq7("block")
        private final String g;

        @bq7("badge")
        private final String h;

        @bq7("operationId")
        private final Integer i;

        @bq7("itemState")
        private final String j;

        public /* synthetic */ e(String str, String str2, k70.h.a aVar, k70.h.a aVar2, String str3, Integer num, String str4, String str5, Integer num2, String str6, int i, jh2 jh2Var) {
            this(str, str2, aVar, aVar2, str3, (i & 32) != 0 ? null : num, (i & 64) != 0 ? null : str4, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? null : num2, (i & 512) != 0 ? null : str6);
        }

        @Override // wp6.h
        public final pz3 a() {
            pw7 pw7Var = new pw7(this.g, this.h, this.f, this.i, this.j);
            String str = this.e;
            String str2 = this.a;
            String str3 = this.b;
            k70.h.a aVar = this.c;
            vj9.a aVarB = aVar != null ? aVar.b() : null;
            k70.h.a aVar2 = this.d;
            return new vj9(str, str2, str3, aVarB, aVar2 != null ? aVar2.b() : null, pw7Var);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return aa4.e(this.a, eVar.a) && aa4.e(this.b, eVar.b) && aa4.e(this.c, eVar.c) && aa4.e(this.d, eVar.d) && aa4.e(this.e, eVar.e) && aa4.e(this.f, eVar.f) && aa4.e(this.g, eVar.g) && aa4.e(this.h, eVar.h) && aa4.e(this.i, eVar.i) && aa4.e(this.j, eVar.j);
        }

        public final int hashCode() {
            int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
            k70.h.a aVar = this.c;
            int iHashCode = (iB + (aVar == null ? 0 : aVar.hashCode())) * 31;
            k70.h.a aVar2 = this.d;
            int iB2 = zg.b((iHashCode + (aVar2 == null ? 0 : aVar2.hashCode())) * 31, 31, this.e);
            Integer num = this.f;
            int iHashCode2 = (iB2 + (num == null ? 0 : num.hashCode())) * 31;
            String str = this.g;
            int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.h;
            int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
            Integer num2 = this.i;
            int iHashCode5 = (iHashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
            String str3 = this.j;
            return iHashCode5 + (str3 != null ? str3.hashCode() : 0);
        }

        public final String toString() {
            String str = this.a;
            String str2 = this.b;
            k70.h.a aVar = this.c;
            k70.h.a aVar2 = this.d;
            String str3 = this.e;
            Integer num = this.f;
            String str4 = this.g;
            String str5 = this.h;
            Integer num2 = this.i;
            String str6 = this.j;
            StringBuilder sbD = ad2.d("MiniLogoTransferBlockResponse(title=", str, ", text=", str2, ", mainButton=");
            sbD.append(aVar);
            sbD.append(", secondButton=");
            sbD.append(aVar2);
            sbD.append(", logoUrl=");
            sbD.append(str3);
            sbD.append(", itemId=");
            sbD.append(num);
            sbD.append(", block=");
            kv2.c(sbD, str4, ", badge=", str5, ", operationId=");
            sbD.append(num2);
            sbD.append(", itemState=");
            sbD.append(str6);
            sbD.append(")");
            return sbD.toString();
        }

        public e(String str, String str2, k70.h.a aVar, k70.h.a aVar2, String str3, Integer num, String str4, String str5, Integer num2, String str6) {
            x7.b(str, str2, str3);
            this.a = str;
            this.b = str2;
            this.c = aVar;
            this.d = aVar2;
            this.e = str3;
            this.f = num;
            this.g = str4;
            this.h = str5;
            this.i = num2;
            this.j = str6;
            h.a aVar3 = h.a.COMMON;
        }
    }

    public static final class c implements h {

        @bq7(TtmlNode.ATTR_ID)
        private final int a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("text")
        private final String c;

        @bq7("logoUrl")
        private final String d;

        @bq7("mainButton")
        private final b e;

        @bq7("conditions")
        private final List<C0352c> f;

        @bq7("advantages")
        private final List<a> g;

        @bq7("disclaimers")
        private final List<d> h;

        @bq7("stroke")
        private final wa8 i;

        @bq7("block")
        private final String j;

        @bq7("badge")
        private final String k;

        @bq7("operationId")
        private final Integer l;

        public static final class a {

            @bq7("imageUrl")
            private final String a;

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String b;

            @bq7("text")
            private final String c;

            public a(String str, String str2, String str3) {
                str.getClass();
                str3.getClass();
                this.a = str;
                this.b = str2;
                this.c = str3;
            }

            public final String a() {
                return this.a;
            }

            public final String b() {
                return this.c;
            }

            public final String c() {
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
                return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c);
            }

            public final int hashCode() {
                int iHashCode = this.a.hashCode() * 31;
                String str = this.b;
                return this.c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
            }

            public final String toString() {
                String str = this.a;
                String str2 = this.b;
                return me0.d(ad2.d("AdvantageResponse(imageUrl=", str, ", title=", str2, ", text="), this.c, ")");
            }
        }

        public static final class b {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("url")
            private final String b;

            public b(String str, String str2) {
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
                if (!(obj instanceof b)) {
                    return false;
                }
                b bVar = (b) obj;
                return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b);
            }

            public final int hashCode() {
                return this.b.hashCode() + (this.a.hashCode() * 31);
            }

            public final String toString() {
                return n2.d("ButtonResponse(title=", this.a, ", url=", this.b, ")");
            }
        }

        /* JADX INFO: renamed from: wp6$c$c, reason: collision with other inner class name */
        public static final class C0352c {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("valueText")
            private final String b;

            public C0352c(String str, String str2) {
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
                if (!(obj instanceof C0352c)) {
                    return false;
                }
                C0352c c0352c = (C0352c) obj;
                return aa4.e(this.a, c0352c.a) && aa4.e(this.b, c0352c.b);
            }

            public final int hashCode() {
                return this.b.hashCode() + (this.a.hashCode() * 31);
            }

            public final String toString() {
                return n2.d("ConditionResponse(title=", this.a, ", valueText=", this.b, ")");
            }
        }

        public static final class d {

            @bq7("text")
            private final String a;

            @bq7("infoText")
            private final String b;

            public d(String str, String str2) {
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
                if (!(obj instanceof d)) {
                    return false;
                }
                d dVar = (d) obj;
                return aa4.e(this.a, dVar.a) && aa4.e(this.b, dVar.b);
            }

            public final int hashCode() {
                int iHashCode = this.a.hashCode() * 31;
                String str = this.b;
                return iHashCode + (str == null ? 0 : str.hashCode());
            }

            public final String toString() {
                return n2.d("DisclaimerResponse(text=", this.a, ", infoText=", this.b, ")");
            }
        }

        public c(int i, String str, String str2, String str3, b bVar, List<C0352c> list, List<a> list2, List<d> list3, wa8 wa8Var, String str4, String str5, Integer num) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            bVar.getClass();
            list2.getClass();
            this.a = i;
            this.b = str;
            this.c = str2;
            this.d = str3;
            this.e = bVar;
            this.f = list;
            this.g = list2;
            this.h = list3;
            this.i = wa8Var;
            this.j = str4;
            this.k = str5;
            this.l = num;
            h.a aVar = h.a.COMMON;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v7, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r8v0 */
        /* JADX WARN: Type inference failed for: r8v1 */
        /* JADX WARN: Type inference failed for: r8v2 */
        /* JADX WARN: Type inference failed for: r8v4, types: [kx2] */
        /* JADX WARN: Type inference failed for: r8v5, types: [java.util.ArrayList] */
        @Override // wp6.h
        public final pz3 a() {
            ?? arrayList;
            ws4.c cVar;
            pw7 pw7Var = new pw7(24, this.j, this.k, Integer.valueOf(this.a));
            int i = this.a;
            String str = this.b;
            String str2 = this.c;
            String str3 = this.d;
            ws4.b bVar = new ws4.b(this.e.a(), this.e.b());
            List<C0352c> list = this.f;
            if (list != null) {
                List<C0352c> list2 = list;
                arrayList = new ArrayList(kn1.q(list2, 10));
                for (C0352c c0352c : list2) {
                    arrayList.add(new qs4(c0352c.a(), c0352c.b()));
                }
            } else {
                arrayList = 0;
            }
            if (arrayList == 0) {
                arrayList = kx2.b;
            }
            List<a> list3 = this.g;
            ArrayList arrayList2 = new ArrayList(kn1.q(list3, 10));
            for (a aVar : list3) {
                arrayList2.add(new ns4(aVar.a(), aVar.c(), aVar.b()));
            }
            List<d> list4 = this.h;
            if (list4 != null) {
                d dVar = (d) qn1.V(list4);
                String strB = dVar != null ? dVar.b() : null;
                if (strB == null) {
                    strB = "";
                }
                d dVar2 = (d) qn1.W(1, this.h);
                String strB2 = dVar2 != null ? dVar2.b() : null;
                if (strB2 == null) {
                    strB2 = "";
                }
                d dVar3 = (d) qn1.V(this.h);
                String strA = dVar3 != null ? dVar3.a() : null;
                cVar = new ws4.c(strB, strB2, strA != null ? strA : "");
            } else {
                cVar = null;
            }
            wa8 wa8Var = this.i;
            return new ws4(i, str, str2, str3, bVar, arrayList, arrayList2, wa8Var != null ? new ws4.a(wa8Var.c(), wa8Var.b(), wa8Var.a(), wa8Var.d()) : null, cVar, pw7Var);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.a == cVar.a && aa4.e(this.b, cVar.b) && aa4.e(this.c, cVar.c) && aa4.e(this.d, cVar.d) && aa4.e(this.e, cVar.e) && aa4.e(this.f, cVar.f) && aa4.e(this.g, cVar.g) && aa4.e(this.h, cVar.h) && aa4.e(this.i, cVar.i) && aa4.e(this.j, cVar.j) && aa4.e(this.k, cVar.k) && aa4.e(this.l, cVar.l);
        }

        public final int hashCode() {
            int iHashCode = (this.e.hashCode() + zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d)) * 31;
            List<C0352c> list = this.f;
            int iB = e2.b(this.g, (iHashCode + (list == null ? 0 : list.hashCode())) * 31, 31);
            List<d> list2 = this.h;
            int iHashCode2 = (iB + (list2 == null ? 0 : list2.hashCode())) * 31;
            wa8 wa8Var = this.i;
            int iHashCode3 = (iHashCode2 + (wa8Var == null ? 0 : wa8Var.hashCode())) * 31;
            String str = this.j;
            int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.k;
            int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
            Integer num = this.l;
            return iHashCode5 + (num != null ? num.hashCode() : 0);
        }

        public final String toString() {
            int i = this.a;
            String str = this.b;
            String str2 = this.c;
            String str3 = this.d;
            b bVar = this.e;
            List<C0352c> list = this.f;
            List<a> list2 = this.g;
            List<d> list3 = this.h;
            wa8 wa8Var = this.i;
            String str4 = this.j;
            String str5 = this.k;
            Integer num = this.l;
            StringBuilder sbE = ng.e(i, "MfoRichPreviewResponse(id=", ", title=", str, ", text=");
            kv2.c(sbE, str2, ", logoUrl=", str3, ", mainButton=");
            sbE.append(bVar);
            sbE.append(", conditions=");
            sbE.append(list);
            sbE.append(", advantages=");
            sbE.append(list2);
            sbE.append(", disclaimers=");
            sbE.append(list3);
            sbE.append(", stroke=");
            sbE.append(wa8Var);
            sbE.append(", block=");
            sbE.append(str4);
            sbE.append(", badge=");
            sbE.append(str5);
            sbE.append(", operationId=");
            sbE.append(num);
            sbE.append(")");
            return sbE.toString();
        }

        public /* synthetic */ c(int i, String str, String str2, String str3, b bVar, List list, List list2, List list3, wa8 wa8Var, String str4, String str5, Integer num, int i2, jh2 jh2Var) {
            this(i, str, str2, str3, bVar, list, list2, list3, wa8Var, (i2 & 512) != 0 ? null : str4, (i2 & 1024) != 0 ? null : str5, (i2 & 2048) != 0 ? null : num);
        }
    }

    public static final class i implements h {

        @bq7(TtmlNode.ATTR_ID)
        private final int a;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String b;

        @bq7("text")
        private final String c;

        @bq7("mainButton")
        private final b d;

        @bq7("logoUrl")
        private final String e;

        @bq7("tags")
        private final List<String> f;

        @bq7("conditions")
        private final List<c> g;

        @bq7("stroke")
        private final wa8 h;

        @bq7("bottom")
        private final a i;

        @bq7("block")
        private final String j;

        @bq7("badge")
        private final String k;

        @bq7("operationId")
        private final Integer l;

        public static final class a {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("text")
            private final String b;

            public a(String str, String str2) {
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
                if (!(obj instanceof a)) {
                    return false;
                }
                a aVar = (a) obj;
                return aa4.e(this.a, aVar.a) && aa4.e(this.b, aVar.b);
            }

            public final int hashCode() {
                return this.b.hashCode() + (this.a.hashCode() * 31);
            }

            public final String toString() {
                return n2.d("BottomResponse(title=", this.a, ", text=", this.b, ")");
            }
        }

        public static final class b {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("url")
            private final String b;

            public b(String str, String str2) {
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
                if (!(obj instanceof b)) {
                    return false;
                }
                b bVar = (b) obj;
                return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b);
            }

            public final int hashCode() {
                return this.b.hashCode() + (this.a.hashCode() * 31);
            }

            public final String toString() {
                return n2.d("ButtonResponse(title=", this.a, ", url=", this.b, ")");
            }
        }

        public static final class c {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("text")
            private final String b;

            @bq7("valueTitle")
            private final String c;

            @bq7("valueText")
            private final String d;

            public c(String str, String str2, String str3, String str4) {
                m2.e(str, str2, str3, str4);
                this.a = str;
                this.b = str2;
                this.c = str3;
                this.d = str4;
            }

            public final ko6 a() {
                return new ko6(this.a, this.b, this.c, this.d);
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
                return dg.c(ad2.d("ConditionResponse(title=", str, ", text=", str2, ", valueTitle="), this.c, ", valueText=", this.d, ")");
            }
        }

        public i(int i, String str, String str2, b bVar, String str3, List<String> list, List<c> list2, wa8 wa8Var, a aVar, String str4, String str5, Integer num) {
            str.getClass();
            str2.getClass();
            bVar.getClass();
            str3.getClass();
            list.getClass();
            list2.getClass();
            this.a = i;
            this.b = str;
            this.c = str2;
            this.d = bVar;
            this.e = str3;
            this.f = list;
            this.g = list2;
            this.h = wa8Var;
            this.i = aVar;
            this.j = str4;
            this.k = str5;
            this.l = num;
            h.a aVar2 = h.a.COMMON;
        }

        @Override // wp6.h
        public final pz3 a() {
            int i = this.a;
            pw7 pw7Var = new pw7(24, this.j, this.k, Integer.valueOf(i));
            wa8 wa8Var = this.h;
            vo6.a aVar = wa8Var != null ? new vo6.a(wa8Var.c(), this.h.d(), this.h.a(), this.h.b()) : null;
            uo6 uo6Var = new uo6(this.b, this.c, this.e);
            List<String> list = this.f;
            ArrayList arrayList = new ArrayList(kn1.q(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new ep6((String) it.next()));
            }
            List listI = u96.i(uo6Var, new ip6(arrayList));
            List<c> list2 = this.g;
            ArrayList arrayList2 = new ArrayList(kn1.q(list2, 10));
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((c) it2.next()).a());
            }
            ArrayList arrayListH0 = qn1.h0(arrayList2, listI);
            a aVar2 = this.i;
            return new vo6(i, aVar, qn1.h0(u96.h(new io6(this.a, this.d.a(), this.d.b())), qn1.h0(u96.j(aVar2 != null ? new po6(aVar2.b(), this.i.a()) : null), arrayListH0)), pw7Var);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return this.a == iVar.a && aa4.e(this.b, iVar.b) && aa4.e(this.c, iVar.c) && aa4.e(this.d, iVar.d) && aa4.e(this.e, iVar.e) && aa4.e(this.f, iVar.f) && aa4.e(this.g, iVar.g) && aa4.e(this.h, iVar.h) && aa4.e(this.i, iVar.i) && aa4.e(this.j, iVar.j) && aa4.e(this.k, iVar.k) && aa4.e(this.l, iVar.l);
        }

        public final int hashCode() {
            int iB = e2.b(this.g, e2.b(this.f, zg.b((this.d.hashCode() + zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c)) * 31, 31, this.e), 31), 31);
            wa8 wa8Var = this.h;
            int iHashCode = (iB + (wa8Var == null ? 0 : wa8Var.hashCode())) * 31;
            a aVar = this.i;
            int iHashCode2 = (iHashCode + (aVar == null ? 0 : aVar.hashCode())) * 31;
            String str = this.j;
            int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.k;
            int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
            Integer num = this.l;
            return iHashCode4 + (num != null ? num.hashCode() : 0);
        }

        public final String toString() {
            int i = this.a;
            String str = this.b;
            String str2 = this.c;
            b bVar = this.d;
            String str3 = this.e;
            List<String> list = this.f;
            List<c> list2 = this.g;
            wa8 wa8Var = this.h;
            a aVar = this.i;
            String str4 = this.j;
            String str5 = this.k;
            Integer num = this.l;
            StringBuilder sbE = ng.e(i, "PromoCardResponse(id=", ", title=", str, ", text=");
            sbE.append(str2);
            sbE.append(", mainButton=");
            sbE.append(bVar);
            sbE.append(", logoUrl=");
            sbE.append(str3);
            sbE.append(", tags=");
            sbE.append(list);
            sbE.append(", conditions=");
            sbE.append(list2);
            sbE.append(", stroke=");
            sbE.append(wa8Var);
            sbE.append(", bottom=");
            sbE.append(aVar);
            sbE.append(", block=");
            sbE.append(str4);
            sbE.append(", badge=");
            sbE.append(str5);
            sbE.append(", operationId=");
            sbE.append(num);
            sbE.append(")");
            return sbE.toString();
        }

        public /* synthetic */ i(int i, String str, String str2, b bVar, String str3, List list, List list2, wa8 wa8Var, a aVar, String str4, String str5, Integer num, int i2, jh2 jh2Var) {
            this(i, str, str2, bVar, str3, list, list2, wa8Var, aVar, (i2 & 512) != 0 ? null : str4, (i2 & 1024) != 0 ? null : str5, (i2 & 2048) != 0 ? null : num);
        }
    }

    public static final class a implements h {

        @bq7(TtmlNode.ATTR_ID)
        private final int a;

        @bq7("stroke")
        private final wa8 b;

        @bq7(TJAdUnitConstants.String.TITLE)
        private final String c;

        @bq7("text")
        private final String d;

        @bq7("logoUrl")
        private final String e;

        @bq7("conditions")
        private final List<b> f;

        @bq7("tagsBlock")
        private final g g;

        @bq7("stepsBlock")
        private final e h;

        @bq7("mainButton")
        private final C0351a i;

        @bq7("disclaimers")
        private final List<c> j;

        @bq7("block")
        private final String k;

        @bq7("badge")
        private final String l;

        @bq7("operationId")
        private final Integer m;

        /* JADX INFO: renamed from: wp6$a$a, reason: collision with other inner class name */
        public static final class C0351a {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("url")
            private final String b;

            public C0351a(String str, String str2) {
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
                if (!(obj instanceof C0351a)) {
                    return false;
                }
                C0351a c0351a = (C0351a) obj;
                return aa4.e(this.a, c0351a.a) && aa4.e(this.b, c0351a.b);
            }

            public final int hashCode() {
                return this.b.hashCode() + (this.a.hashCode() * 31);
            }

            public final String toString() {
                return n2.d("ButtonResponse(title=", this.a, ", url=", this.b, ")");
            }
        }

        public static final class b {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("text")
            private final String b;

            @bq7("valueTitle")
            private final String c;

            @bq7("valueText")
            private final String d;

            public b(String str, String str2, String str3, String str4) {
                m2.e(str, str2, str3, str4);
                this.a = str;
                this.b = str2;
                this.c = str3;
                this.d = str4;
            }

            public final String a() {
                return this.b;
            }

            public final String b() {
                return this.a;
            }

            public final String c() {
                return this.d;
            }

            public final String d() {
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
                return aa4.e(this.a, bVar.a) && aa4.e(this.b, bVar.b) && aa4.e(this.c, bVar.c) && aa4.e(this.d, bVar.d);
            }

            public final int hashCode() {
                return this.d.hashCode() + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
            }

            public final String toString() {
                String str = this.a;
                String str2 = this.b;
                return dg.c(ad2.d("ConditionsResponse(title=", str, ", text=", str2, ", valueTitle="), this.c, ", valueText=", this.d, ")");
            }
        }

        public static final class c {

            @bq7("text")
            private final String a;

            @bq7("infoText")
            private final String b;

            public c(String str, String str2) {
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
                if (!(obj instanceof c)) {
                    return false;
                }
                c cVar = (c) obj;
                return aa4.e(this.a, cVar.a) && aa4.e(this.b, cVar.b);
            }

            public final int hashCode() {
                int iHashCode = this.a.hashCode() * 31;
                String str = this.b;
                return iHashCode + (str == null ? 0 : str.hashCode());
            }

            public final String toString() {
                return n2.d("DisclaimerResponse(text=", this.a, ", infoText=", this.b, ")");
            }
        }

        public static final class d {

            @bq7("logoUrl")
            private final String a;

            @bq7("text")
            private final String b;

            public d(String str, String str2) {
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
                if (!(obj instanceof d)) {
                    return false;
                }
                d dVar = (d) obj;
                return aa4.e(this.a, dVar.a) && aa4.e(this.b, dVar.b);
            }

            public final int hashCode() {
                return this.b.hashCode() + (this.a.hashCode() * 31);
            }

            public final String toString() {
                return n2.d("StepResponse(logoUrl=", this.a, ", text=", this.b, ")");
            }
        }

        public static final class e {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("steps")
            private final List<d> b;

            public e(String str, List<d> list) {
                str.getClass();
                list.getClass();
                this.a = str;
                this.b = list;
            }

            public final List<d> a() {
                return this.b;
            }

            public final String b() {
                return this.a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof e)) {
                    return false;
                }
                e eVar = (e) obj;
                return aa4.e(this.a, eVar.a) && aa4.e(this.b, eVar.b);
            }

            public final int hashCode() {
                return this.b.hashCode() + (this.a.hashCode() * 31);
            }

            public final String toString() {
                return "StepsBlockResponse(title=" + this.a + ", steps=" + this.b + ")";
            }
        }

        public static final class f {

            @bq7("logoUrl")
            private final String a;

            @bq7("text")
            private final String b;

            public f(String str, String str2) {
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
                if (!(obj instanceof f)) {
                    return false;
                }
                f fVar = (f) obj;
                return aa4.e(this.a, fVar.a) && aa4.e(this.b, fVar.b);
            }

            public final int hashCode() {
                return this.b.hashCode() + (this.a.hashCode() * 31);
            }

            public final String toString() {
                return n2.d("TagResponse(logoUrl=", this.a, ", text=", this.b, ")");
            }
        }

        public static final class g {

            @bq7(TJAdUnitConstants.String.TITLE)
            private final String a;

            @bq7("infoText")
            private final String b;

            @bq7("tags")
            private final List<f> c;

            public g(String str, String str2, List<f> list) {
                str.getClass();
                list.getClass();
                this.a = str;
                this.b = str2;
                this.c = list;
            }

            public final String a() {
                return this.b;
            }

            public final List<f> b() {
                return this.c;
            }

            public final String c() {
                return this.a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof g)) {
                    return false;
                }
                g gVar = (g) obj;
                return aa4.e(this.a, gVar.a) && aa4.e(this.b, gVar.b) && aa4.e(this.c, gVar.c);
            }

            public final int hashCode() {
                int iHashCode = this.a.hashCode() * 31;
                String str = this.b;
                return this.c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
            }

            public final String toString() {
                return bg.e(")", this.c, ad2.d("TagsBlockResponse(title=", this.a, ", infoText=", this.b, ", tags="));
            }
        }

        public /* synthetic */ a(int i, wa8 wa8Var, String str, String str2, String str3, List list, g gVar, e eVar, C0351a c0351a, List list2, String str4, String str5, Integer num, int i2, jh2 jh2Var) {
            this(i, wa8Var, str, str2, str3, list, gVar, eVar, c0351a, list2, (i2 & 1024) != 0 ? null : str4, (i2 & 2048) != 0 ? null : str5, (i2 & 4096) != 0 ? null : num);
        }

        @Override // wp6.h
        public final pz3 a() {
            xa.d dVar;
            String str;
            xa.f fVar;
            pw7 pw7Var = new pw7(24, this.k, this.l, Integer.valueOf(this.a));
            int i = this.a;
            String str2 = this.c;
            String str3 = this.d;
            String str4 = this.e;
            b bVar = (b) qn1.V(this.f);
            String strB = bVar != null ? bVar.b() : null;
            if (strB == null) {
                strB = "";
            }
            b bVar2 = (b) qn1.V(this.f);
            String strA = bVar2 != null ? bVar2.a() : null;
            if (strA == null) {
                strA = "";
            }
            b bVar3 = (b) qn1.V(this.f);
            String strD = bVar3 != null ? bVar3.d() : null;
            if (strD == null) {
                strD = "";
            }
            b bVar4 = (b) qn1.V(this.f);
            String strC = bVar4 != null ? bVar4.c() : null;
            if (strC == null) {
                strC = "";
            }
            xa.c cVar = new xa.c(strB, strA, strD, strC);
            g gVar = this.g;
            if (gVar != null) {
                String strC2 = gVar.c();
                String strA2 = this.g.a();
                List<f> listB = this.g.b();
                ArrayList arrayList = new ArrayList(kn1.q(listB, 10));
                for (f fVar2 : listB) {
                    arrayList.add(new xa.e(fVar2.b(), fVar2.a()));
                }
                xa.d dVar2 = new xa.d(strC2, strA2, arrayList);
                str = null;
                dVar = dVar2;
            } else {
                dVar = null;
                str = null;
            }
            String strB2 = this.h.b();
            d dVar3 = (d) qn1.V(this.h.a());
            String strB3 = dVar3 != null ? dVar3.b() : str;
            if (strB3 == null) {
                strB3 = "";
            }
            d dVar4 = (d) qn1.V(this.h.a());
            String strA3 = dVar4 != null ? dVar4.a() : str;
            if (strA3 == null) {
                strA3 = "";
            }
            xa.g gVar2 = new xa.g(strB3, strA3);
            d dVar5 = (d) qn1.W(1, this.h.a());
            String strB4 = dVar5 != null ? dVar5.b() : str;
            if (strB4 == null) {
                strB4 = "";
            }
            d dVar6 = (d) qn1.W(1, this.h.a());
            String strA4 = dVar6 != null ? dVar6.a() : null;
            if (strA4 == null) {
                strA4 = "";
            }
            xa.h hVar = new xa.h(strB2, gVar2, new xa.g(strB4, strA4));
            List<c> list = this.j;
            if (list != null) {
                c cVar2 = (c) qn1.V(list);
                String strB5 = cVar2 != null ? cVar2.b() : null;
                if (strB5 == null) {
                    strB5 = "";
                }
                c cVar3 = (c) qn1.W(1, this.j);
                String strB6 = cVar3 != null ? cVar3.b() : null;
                if (strB6 == null) {
                    strB6 = "";
                }
                c cVar4 = (c) qn1.V(this.j);
                String strA5 = cVar4 != null ? cVar4.a() : null;
                fVar = new xa.f(strB5, strB6, strA5 != null ? strA5 : "");
            } else {
                fVar = null;
            }
            xa.b bVar5 = new xa.b(this.i.a(), this.i.b());
            wa8 wa8Var = this.b;
            return new xa(i, str2, str3, str4, cVar, dVar, hVar, fVar, bVar5, wa8Var != null ? new xa.a(wa8Var.c(), this.b.b(), this.b.a(), this.b.d()) : null, pw7Var);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c) && aa4.e(this.d, aVar.d) && aa4.e(this.e, aVar.e) && aa4.e(this.f, aVar.f) && aa4.e(this.g, aVar.g) && aa4.e(this.h, aVar.h) && aa4.e(this.i, aVar.i) && aa4.e(this.j, aVar.j) && aa4.e(this.k, aVar.k) && aa4.e(this.l, aVar.l) && aa4.e(this.m, aVar.m);
        }

        public final int hashCode() {
            int iHashCode = Integer.hashCode(this.a) * 31;
            wa8 wa8Var = this.b;
            int iB = e2.b(this.f, zg.b(zg.b(zg.b((iHashCode + (wa8Var == null ? 0 : wa8Var.hashCode())) * 31, 31, this.c), 31, this.d), 31, this.e), 31);
            g gVar = this.g;
            int iHashCode2 = (this.i.hashCode() + ((this.h.hashCode() + ((iB + (gVar == null ? 0 : gVar.hashCode())) * 31)) * 31)) * 31;
            List<c> list = this.j;
            int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
            String str = this.k;
            int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.l;
            int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
            Integer num = this.m;
            return iHashCode5 + (num != null ? num.hashCode() : 0);
        }

        public final String toString() {
            int i = this.a;
            wa8 wa8Var = this.b;
            String str = this.c;
            String str2 = this.d;
            String str3 = this.e;
            List<b> list = this.f;
            g gVar = this.g;
            e eVar = this.h;
            C0351a c0351a = this.i;
            List<c> list2 = this.j;
            String str4 = this.k;
            String str5 = this.l;
            Integer num = this.m;
            StringBuilder sb = new StringBuilder("CommonRichPreview(id=");
            sb.append(i);
            sb.append(", stroke=");
            sb.append(wa8Var);
            sb.append(", title=");
            kv2.c(sb, str, ", text=", str2, ", logoUrl=");
            sb.append(str3);
            sb.append(", conditions=");
            sb.append(list);
            sb.append(", tagsBlock=");
            sb.append(gVar);
            sb.append(", stepsBlock=");
            sb.append(eVar);
            sb.append(", mainButton=");
            sb.append(c0351a);
            sb.append(", disclaimers=");
            sb.append(list2);
            sb.append(", block=");
            kv2.c(sb, str4, ", badge=", str5, ", operationId=");
            sb.append(num);
            sb.append(")");
            return sb.toString();
        }

        public a(int i, wa8 wa8Var, String str, String str2, String str3, List<b> list, g gVar, e eVar, C0351a c0351a, List<c> list2, String str4, String str5, Integer num) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            list.getClass();
            eVar.getClass();
            c0351a.getClass();
            this.a = i;
            this.b = wa8Var;
            this.c = str;
            this.d = str2;
            this.e = str3;
            this.f = list;
            this.g = gVar;
            this.h = eVar;
            this.i = c0351a;
            this.j = list2;
            this.k = str4;
            this.l = str5;
            this.m = num;
            h.a aVar = h.a.COMMON;
        }
    }
}
